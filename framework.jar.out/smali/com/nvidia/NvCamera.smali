.class public Lcom/nvidia/NvCamera;
.super Landroid/hardware/Camera;
.source "NvCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/NvCamera$NvParameters;,
        Lcom/nvidia/NvCamera$NvVideoPreviewFps;,
        Lcom/nvidia/NvCamera$NvWindow;,
        Lcom/nvidia/NvCamera$NvCameraInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NvCamera"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 1778
    invoke-direct {p0, p1}, Landroid/hardware/Camera;-><init>(I)V

    .line 1779
    return-void
.end method

.method public static native getNvCameraInfo(ILcom/nvidia/NvCamera$NvCameraInfo;)V
.end method

.method private final native native_getCustomParameters()Ljava/lang/String;
.end method

.method private final native native_setCustomParameters(Ljava/lang/String;)V
.end method

.method public static open()Lcom/nvidia/NvCamera;
    .locals 4

    .prologue
    .line 1766
    invoke-static {}, Lcom/nvidia/NvCamera;->getNumberOfCameras()I

    move-result v2

    .line 1767
    .local v2, numberOfCameras:I
    new-instance v0, Lcom/nvidia/NvCamera$NvCameraInfo;

    invoke-direct {v0}, Lcom/nvidia/NvCamera$NvCameraInfo;-><init>()V

    .line 1768
    .local v0, cameraInfo:Lcom/nvidia/NvCamera$NvCameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1769
    invoke-static {v1, v0}, Lcom/nvidia/NvCamera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1770
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 1771
    new-instance v3, Lcom/nvidia/NvCamera;

    invoke-direct {v3, v1}, Lcom/nvidia/NvCamera;-><init>(I)V

    .line 1774
    :goto_1
    return-object v3

    .line 1768
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1774
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Lcom/nvidia/NvCamera;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 1757
    new-instance v0, Lcom/nvidia/NvCamera;

    invoke-direct {v0, p0}, Lcom/nvidia/NvCamera;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/nvidia/NvCamera;->getParameters()Lcom/nvidia/NvCamera$NvParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/nvidia/NvCamera$NvParameters;
    .locals 5

    .prologue
    .line 269
    new-instance v0, Lcom/nvidia/NvCamera$NvParameters;

    invoke-direct {v0, p0}, Lcom/nvidia/NvCamera$NvParameters;-><init>(Lcom/nvidia/NvCamera;)V

    .line 270
    .local v0, p:Lcom/nvidia/NvCamera$NvParameters;
    const/4 v2, 0x0

    .line 271
    .local v2, s:Ljava/lang/String;
    const-string/jumbo v3, "mv1920"

    const-string/jumbo v4, "nvidia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/nvidia/NvCamera;->native_getCustomParameters()Ljava/lang/String;

    move-result-object v2

    .line 277
    :goto_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 278
    return-object v0

    .line 274
    :cond_0
    invoke-super {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 275
    .local v1, param:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public newNvWindow()Lcom/nvidia/NvCamera$NvWindow;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/nvidia/NvCamera$NvWindow;

    invoke-direct {v0}, Lcom/nvidia/NvCamera$NvWindow;-><init>()V

    return-object v0
.end method

.method public setParameters(Lcom/nvidia/NvCamera$NvParameters;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 258
    const-string/jumbo v2, "mv1920"

    const-string/jumbo v3, "nvidia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nvidia/NvCamera;->native_setCustomParameters(Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, s:Ljava/lang/String;
    invoke-super {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 263
    .local v0, p:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 264
    invoke-super {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
