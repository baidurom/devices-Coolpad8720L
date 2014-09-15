.class public Lcom/android/camera/EffectBeautyShot;
.super Lcom/android/camera/CameraEffectBase;
.source "EffectBeautyShot.java"


# instance fields
.field private mPPEffectMode:Ljava/lang/String;

.field private mPPEffectProxy:Landroid/media/ImageEffectProxy;


# direct methods
.method public constructor <init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "EffectService"
    .parameter "context"
    .parameter "para"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraEffectBase;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 17
    const-string v0, "beautyshotpp"

    iput-object v0, p0, Lcom/android/camera/EffectBeautyShot;->mPPEffectMode:Ljava/lang/String;

    .line 24
    const-string v0, "beautyshot"

    invoke-virtual {p0, v0}, Lcom/android/camera/EffectBeautyShot;->SetEffectName(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public CloseEffect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/camera/EffectBeautyShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/EffectBeautyShot;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v1, p0, Lcom/android/camera/EffectBeautyShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/ImageEffectService;->unloadEffectPlugIn(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/EffectBeautyShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/ImageEffectProxy;->release()V

    .line 118
    iput-object v2, p0, Lcom/android/camera/EffectBeautyShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectBeautyShot;->mPPEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/camera/EffectBeautyShot;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v1, p0, Lcom/android/camera/EffectBeautyShot;->mPPEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/ImageEffectService;->unloadEffectPlugIn(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/EffectBeautyShot;->mPPEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/ImageEffectProxy;->release()V

    .line 124
    iput-object v2, p0, Lcom/android/camera/EffectBeautyShot;->mPPEffectProxy:Landroid/media/ImageEffectProxy;

    .line 126
    :cond_1
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->CloseEffect()V

    .line 127
    return-void
.end method

.method public EndCapture()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public OpenEffect()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 81
    iget-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v6, p0, Lcom/android/camera/EffectBeautyShot;->mEffectName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/media/ImageEffectService;->loadEffectPlugIn(Ljava/lang/String;Z)Landroid/media/ImageEffectProxy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    .line 83
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 85
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v5}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->dump()V

    .line 88
    iget-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 89
    .local v4, previewsize:Landroid/hardware/Camera$Size;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 90
    .local v3, preview:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    const-string v5, "plugin_slenderface_level"

    const/16 v6, 0x1e

    invoke-virtual {v0, v5, v6}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 93
    const-string v5, "plugin_input_size"

    invoke-virtual {v0, v5, v3}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 97
    iget-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v6, p0, Lcom/android/camera/EffectBeautyShot;->mPPEffectMode:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/media/ImageEffectService;->loadEffectPlugIn(Ljava/lang/String;Z)Landroid/media/ImageEffectProxy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mPPEffectProxy:Landroid/media/ImageEffectProxy;

    .line 98
    iget-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mPPEffectProxy:Landroid/media/ImageEffectProxy;

    if-nez v5, :cond_0

    .line 99
    const-string v5, "EffectBeautyShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>loading plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/EffectBeautyShot;->mEffectName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mPPEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v5}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->dump()V

    .line 104
    iget-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 105
    .local v2, picSize:Landroid/hardware/Camera$Size;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 106
    .local v1, pic:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v5, "plugin_input_size"

    invoke-virtual {v0, v5, v1}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mPPEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 109
    iget-object v5, p0, Lcom/android/camera/EffectBeautyShot;->mEffectService:Landroid/media/ImageEffectService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/camera/EffectBeautyShot;->mEffectName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/EffectBeautyShot;->mPPEffectMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/ImageEffectService;->setEffectMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public StartCapture()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public onDataPostView([IIILandroid/media/ImageEffectProxy;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 33
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onPause()V

    .line 37
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 38
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectBeautyShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 39
    const-string v1, "plugin_paused"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/android/camera/EffectBeautyShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onProcess(ILandroid/media/ImageEffectProxy;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 56
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onResume()V

    .line 46
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 47
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectBeautyShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 48
    const-string v1, "plugin_paused"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/android/camera/EffectBeautyShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 50
    return-void
.end method
