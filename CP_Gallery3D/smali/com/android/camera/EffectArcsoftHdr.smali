.class public Lcom/android/camera/EffectArcsoftHdr;
.super Lcom/android/camera/CameraEffectBase;
.source "EffectArcsoftHdr.java"

# interfaces
.implements Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;
    }
.end annotation


# static fields
.field private static HDR_PARA_GET_BRIGHTNESS_RANG:Ljava/lang/String;

.field private static HDR_PARA_GET_TONE_RANG:Ljava/lang/String;

.field private static HDR_PARA_SET_BRIGHTNESS:Ljava/lang/String;

.field private static HDR_PARA_SET_TONE_VALUE:Ljava/lang/String;

.field private static MODE_HDR_ART:I

.field private static MODE_HDR_NORMAL:I

.field private static SET_HDR_PARA_MODE:Ljava/lang/String;


# instance fields
.field isArtHdrMode:Z

.field mAmbilightView:Lcom/android/camera/ui/AmbilightView;

.field mHandler:Landroid/os/Handler;

.field mInterval:J

.field mPassOrientation:I

.field mRotateOrientation:I

.field mToneValue:I

.field mUpdateCount:I

.field mViewContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/android/camera/EffectArcsoftHdr;->MODE_HDR_ART:I

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/EffectArcsoftHdr;->MODE_HDR_NORMAL:I

    .line 32
    const-string v0, "set_hdr_mode"

    sput-object v0, Lcom/android/camera/EffectArcsoftHdr;->SET_HDR_PARA_MODE:Ljava/lang/String;

    .line 33
    const-string v0, "set_tone"

    sput-object v0, Lcom/android/camera/EffectArcsoftHdr;->HDR_PARA_SET_TONE_VALUE:Ljava/lang/String;

    .line 34
    const-string v0, "set_brightness"

    sput-object v0, Lcom/android/camera/EffectArcsoftHdr;->HDR_PARA_SET_BRIGHTNESS:Ljava/lang/String;

    .line 35
    const-string v0, "get_tone_rang"

    sput-object v0, Lcom/android/camera/EffectArcsoftHdr;->HDR_PARA_GET_TONE_RANG:Ljava/lang/String;

    .line 36
    const-string v0, "get_brightness_rang"

    sput-object v0, Lcom/android/camera/EffectArcsoftHdr;->HDR_PARA_GET_BRIGHTNESS_RANG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/view/ViewGroup;Landroid/os/Handler;)V
    .locals 2
    .parameter "EffectService"
    .parameter "context"
    .parameter "para"
    .parameter "vg"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraEffectBase;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 40
    iput v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mPassOrientation:I

    .line 42
    iput v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mUpdateCount:I

    .line 46
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mToneValue:I

    .line 47
    iput-boolean v1, p0, Lcom/android/camera/EffectArcsoftHdr;->isArtHdrMode:Z

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mInterval:J

    .line 57
    iput-object p5, p0, Lcom/android/camera/EffectArcsoftHdr;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p4, p0, Lcom/android/camera/EffectArcsoftHdr;->mViewContainer:Landroid/view/ViewGroup;

    .line 59
    const-string v0, "hdr"

    invoke-virtual {p0, v0}, Lcom/android/camera/EffectArcsoftHdr;->SetEffectName(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private removeAllView()V
    .locals 2

    .prologue
    .line 195
    const-string v0, "EffectArcsoftHdr"

    const-string v1, "----remove all hdr view!!!----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-boolean v0, p0, Lcom/android/camera/EffectArcsoftHdr;->isArtHdrMode:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mAmbilightView:Lcom/android/camera/ui/AmbilightView;

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "EffectArcsoftHdr"

    const-string v1, "clean ambilight view!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mAmbilightView:Lcom/android/camera/ui/AmbilightView;

    invoke-virtual {v0}, Lcom/android/camera/ui/AmbilightView;->cleanView()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mAmbilightView:Lcom/android/camera/ui/AmbilightView;

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/EffectArcsoftHdr;->hideProcess()V

    .line 206
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 207
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mViewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectArcsoftHdr;->isProcessOver:Z

    .line 211
    return-void
.end method

.method private setPluginParam()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v1, :cond_0

    .line 107
    iget-boolean v1, p0, Lcom/android/camera/EffectArcsoftHdr;->isArtHdrMode:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x37

    :goto_0
    iput v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mToneValue:I

    .line 108
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 110
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->dump()V

    .line 113
    const-string v1, "plugin_do_facereplace"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 114
    sget-object v1, Lcom/android/camera/EffectArcsoftHdr;->HDR_PARA_SET_TONE_VALUE:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/EffectArcsoftHdr;->mToneValue:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 115
    sget-object v1, Lcom/android/camera/EffectArcsoftHdr;->HDR_PARA_SET_BRIGHTNESS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 118
    sget-object v1, Lcom/android/camera/EffectArcsoftHdr;->SET_HDR_PARA_MODE:Ljava/lang/String;

    sget v2, Lcom/android/camera/EffectArcsoftHdr;->MODE_HDR_NORMAL:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 119
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 121
    .end local v0           #PluginParam:Landroid/media/MMPlugInParam;
    :cond_0
    return-void

    .line 107
    :cond_1
    const/16 v1, 0xa

    goto :goto_0
.end method


# virtual methods
.method public CloseEffect()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->CloseEffect()V

    .line 281
    return-void
.end method

.method public EndCapture()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "EffectArcsoftHdr"

    const-string v1, "EndCapture!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/android/camera/EffectArcsoftHdr;->removeAllView()V

    .line 192
    return-void
.end method

.method public GetEffectParameter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;

    invoke-direct {v0, p0}, Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;-><init>(Lcom/android/camera/EffectArcsoftHdr;)V

    return-object v0
.end method

.method public OpenEffect()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->OpenEffect()V

    .line 69
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 71
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->dump()V

    .line 74
    sget-object v1, Lcom/android/camera/EffectArcsoftHdr;->HDR_PARA_SET_TONE_VALUE:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/EffectArcsoftHdr;->mToneValue:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 75
    sget-object v1, Lcom/android/camera/EffectArcsoftHdr;->HDR_PARA_SET_BRIGHTNESS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 77
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1, p0}, Landroid/media/ImageEffectProxy;->setPostViewCb(Landroid/media/ImageEffectProxy$PostViewCallback;)V

    .line 79
    return-void
.end method

.method public SetEffectParameter(Ljava/lang/Object;)V
    .locals 3
    .parameter "para"

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    instance-of v2, p1, Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;

    if-eqz v2, :cond_0

    .line 92
    const/4 v1, 0x0

    .local v1, tone:I
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;

    .line 94
    .local v0, HdrPara:Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;
    iget-boolean v2, v0, Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;->bArt:Z

    if-eqz v2, :cond_2

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/EffectArcsoftHdr;->isArtHdrMode:Z

    goto :goto_0

    .line 99
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/EffectArcsoftHdr;->isArtHdrMode:Z

    goto :goto_0
.end method

.method public SetThumbnail([BLjava/lang/String;II)V
    .locals 2
    .parameter "data"
    .parameter "title"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/CameraEffectBase;->SetThumbnail([BLjava/lang/String;II)V

    .line 151
    const-string v0, "EffectArcsoftHdr"

    const-string v1, "picture call back!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public StartCapture()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 159
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mPassOrientation:I

    .line 162
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mRotateOrientation:I

    .line 163
    iget v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mPassOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    .line 164
    iget v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mRotateOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    .line 165
    const-string v0, "EffectArcsoftHdr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPassOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/EffectArcsoftHdr;->mPassOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRotateOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/EffectArcsoftHdr;->mRotateOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "EffectArcsoftHdr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isArtHdrMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/EffectArcsoftHdr;->isArtHdrMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mRotateOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mRotateOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 169
    .local v7, isLandscape:Z
    :goto_0
    const v1, 0x7f10009b

    const v2, 0x7f04002b

    iget-object v3, p0, Lcom/android/camera/EffectArcsoftHdr;->mViewContainer:Landroid/view/ViewGroup;

    const/16 v4, 0x64

    const/4 v5, 0x2

    if-eqz v7, :cond_2

    const/16 v6, 0x50

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/EffectArcsoftHdr;->initProcessBar(IILandroid/view/ViewGroup;III)V

    .line 186
    invoke-direct {p0}, Lcom/android/camera/EffectArcsoftHdr;->setPluginParam()V

    .line 187
    iput-boolean v8, p0, Lcom/android/camera/EffectArcsoftHdr;->isProcessOver:Z

    .line 188
    return-void

    .end local v7           #isLandscape:Z
    :cond_1
    move v7, v8

    .line 168
    goto :goto_0

    .line 169
    .restart local v7       #isLandscape:Z
    :cond_2
    const/16 v6, 0x11

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->finish()V

    .line 215
    iget-boolean v0, p0, Lcom/android/camera/EffectArcsoftHdr;->isArtHdrMode:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/camera/EffectArcsoftHdr;->onCancelClick()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/EffectArcsoftHdr;->removeAllView()V

    goto :goto_0
.end method

.method public isProcessOver()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/camera/EffectArcsoftHdr;->isProcessOver:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/camera/EffectArcsoftHdr;->onCancelClick()V

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public onCancelClick()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "EffectArcsoftHdr"

    const-string v2, "onCancelClick!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 251
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 252
    const-string v1, "plugin_do_facereplace"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 253
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/android/camera/EffectArcsoftHdr;->removeAllView()V

    .line 256
    .end local v0           #PluginParam:Landroid/media/MMPlugInParam;
    :cond_0
    return-void
.end method

.method public onDataPostView([IIILandroid/media/ImageEffectProxy;)V
    .locals 2
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "proxy"

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/CameraEffectBase;->onDataPostView([IIILandroid/media/ImageEffectProxy;)V

    .line 140
    const-string v0, "EffectArcsoftHdr"

    const-string v1, "------data post view!!!-------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectArcsoftHdr$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/EffectArcsoftHdr$2;-><init>(Lcom/android/camera/EffectArcsoftHdr;[III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onPause()V

    .line 229
    invoke-virtual {p0}, Lcom/android/camera/EffectArcsoftHdr;->onCancelClick()V

    .line 231
    return-void
.end method

.method public onProcess(ILandroid/media/ImageEffectProxy;)V
    .locals 3
    .parameter "process"
    .parameter "proxy"

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/camera/CameraEffectBase;->onProcess(ILandroid/media/ImageEffectProxy;)V

    .line 125
    const-string v0, "EffectArcsoftHdr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----process----->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectArcsoftHdr$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/EffectArcsoftHdr$1;-><init>(Lcom/android/camera/EffectArcsoftHdr;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public onSaveClick()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "EffectArcsoftHdr"

    const-string v2, "onSaveClick!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 239
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 240
    const-string v1, "plugin_do_facereplace"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 241
    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 243
    .end local v0           #PluginParam:Landroid/media/MMPlugInParam;
    :cond_0
    return-void
.end method

.method public onValueChanged(I)V
    .locals 8
    .parameter "value"

    .prologue
    .line 261
    iget-object v4, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v4, :cond_0

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 263
    .local v1, time:J
    iget-wide v4, p0, Lcom/android/camera/EffectArcsoftHdr;->mInterval:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x12c

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 273
    .end local v1           #time:J
    :cond_0
    :goto_0
    return-void

    .line 264
    .restart local v1       #time:J
    :cond_1
    add-int/lit8 v3, p1, 0x32

    .line 265
    .local v3, v:I
    const-string v4, "EffectArcsoftHdr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set tone value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 267
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v4, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v4}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 268
    sget-object v4, Lcom/android/camera/EffectArcsoftHdr;->HDR_PARA_SET_TONE_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 269
    const-string v4, "plugin_do_facereplace"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 270
    iget-object v4, p0, Lcom/android/camera/EffectArcsoftHdr;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 271
    iput-wide v1, p0, Lcom/android/camera/EffectArcsoftHdr;->mInterval:J

    goto :goto_0
.end method
