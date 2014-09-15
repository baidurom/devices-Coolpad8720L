.class public Lcom/android/camera/EffectBestPic;
.super Lcom/android/camera/CameraEffectBase;
.source "EffectBestPic.java"

# interfaces
.implements Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/EffectBestPic$StartUpThread;,
        Lcom/android/camera/EffectBestPic$UpdateGuageTask;
    }
.end annotation


# instance fields
.field private isRefreshSwitchFace:Z

.field private mBestPickHandler:Landroid/os/Handler;

.field private mEnterOrientation:I

.field private mModuleHandler:Landroid/os/Handler;

.field private mPassOrientation:I

.field private mRotateOrientation:I

.field private mStartUpThread:Lcom/android/camera/EffectBestPic$StartUpThread;

.field private mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

.field private mUpdateCount:I

.field private mViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/view/ViewGroup;Landroid/os/Handler;)V
    .locals 1
    .parameter "EffectService"
    .parameter "context"
    .parameter "para"
    .parameter "vg"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraEffectBase;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 52
    iput v0, p0, Lcom/android/camera/EffectBestPic;->mUpdateCount:I

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/EffectBestPic;->isRefreshSwitchFace:Z

    .line 56
    iput v0, p0, Lcom/android/camera/EffectBestPic;->mRotateOrientation:I

    .line 57
    iput v0, p0, Lcom/android/camera/EffectBestPic;->mEnterOrientation:I

    .line 58
    iput v0, p0, Lcom/android/camera/EffectBestPic;->mPassOrientation:I

    .line 64
    const-string v0, "bestpick"

    invoke-virtual {p0, v0}, Lcom/android/camera/EffectBestPic;->SetEffectName(Ljava/lang/String;)V

    .line 65
    iput-object p4, p0, Lcom/android/camera/EffectBestPic;->mViewContainer:Landroid/view/ViewGroup;

    .line 66
    iput-object p5, p0, Lcom/android/camera/EffectBestPic;->mModuleHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/EffectBestPic;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private refreshSwitchFaceView()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectBestPic$1;

    invoke-direct {v1, p0}, Lcom/android/camera/EffectBestPic$1;-><init>(Lcom/android/camera/EffectBestPic;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method private removeAllView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 317
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/camera/EffectBestPic;->hideProcess()V

    .line 319
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->clear()V

    .line 320
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 322
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mStartUpThread:Lcom/android/camera/EffectBestPic$StartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/EffectBestPic$StartUpThread;->clearAllTask()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mModuleHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mModuleHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    return-void
.end method


# virtual methods
.method public CloseEffect()V
    .locals 0

    .prologue
    .line 353
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->CloseEffect()V

    .line 354
    return-void
.end method

.method public EndCapture()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/camera/EffectBestPic;->removeAllView()V

    .line 193
    return-void
.end method

.method public OpenEffect()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->OpenEffect()V

    .line 123
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0, p0}, Landroid/media/ImageEffectProxy;->setPostViewCb(Landroid/media/ImageEffectProxy$PostViewCallback;)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0, p0}, Landroid/media/ImageEffectProxy;->setFaceInfoCb(Landroid/media/ImageEffectProxy$FaceInfoCallback;)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0, p0}, Landroid/media/ImageEffectProxy;->setFaceDataCb(Landroid/media/ImageEffectProxy$FaceDataCallback;)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0, p0}, Landroid/media/ImageEffectProxy;->setGeneralCb(Landroid/media/ImageEffectProxy$GeneticCallback;)V

    .line 127
    return-void
.end method

.method public SetThumbnail([BLjava/lang/String;II)V
    .locals 4
    .parameter "data"
    .parameter "title"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 244
    const-string v0, "EffectBestPic"

    const-string v1, "----SetThumbnail------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v0, p0, Lcom/android/camera/EffectBestPic;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/EffectBestPic;->mUpdateCount:I

    .line 247
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectBestPic$UpdateGuageTask;

    iget v2, p0, Lcom/android/camera/EffectBestPic;->mUpdateCount:I

    invoke-direct {v1, p0, v2}, Lcom/android/camera/EffectBestPic$UpdateGuageTask;-><init>(Lcom/android/camera/EffectBestPic;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    return-void
.end method

.method public StartCapture()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mModuleHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 155
    new-instance v0, Lcom/android/camera/EffectBestPic$StartUpThread;

    invoke-direct {v0, p0}, Lcom/android/camera/EffectBestPic$StartUpThread;-><init>(Lcom/android/camera/EffectBestPic;)V

    iput-object v0, p0, Lcom/android/camera/EffectBestPic;->mStartUpThread:Lcom/android/camera/EffectBestPic$StartUpThread;

    .line 156
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mStartUpThread:Lcom/android/camera/EffectBestPic$StartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/EffectBestPic$StartUpThread;->start()V

    .line 158
    iput v7, p0, Lcom/android/camera/EffectBestPic;->mUpdateCount:I

    .line 159
    iput-boolean v7, p0, Lcom/android/camera/EffectBestPic;->isRefreshSwitchFace:Z

    .line 161
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->clear()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectBestPic;->mRotateOrientation:I

    .line 166
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getEnterOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectBestPic;->mEnterOrientation:I

    .line 167
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectBestPic;->mPassOrientation:I

    .line 169
    iget v0, p0, Lcom/android/camera/EffectBestPic;->mEnterOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    .line 170
    iget v0, p0, Lcom/android/camera/EffectBestPic;->mRotateOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    .line 171
    iget v0, p0, Lcom/android/camera/EffectBestPic;->mPassOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    .line 172
    const-string v0, "EffectBestPic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnterOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/EffectBestPic;->mEnterOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRotateOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/EffectBestPic;->mRotateOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const v1, 0x7f10009b

    const v2, 0x7f04002b

    iget-object v3, p0, Lcom/android/camera/EffectBestPic;->mViewContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/16 v6, 0x50

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/EffectBestPic;->initProcessBar(IILandroid/view/ViewGroup;III)V

    .line 178
    const v0, 0x7f10013c

    const v1, 0x7f040069

    iget-object v2, p0, Lcom/android/camera/EffectBestPic;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/EffectBestPic;->inflateLayout(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSwitchFaceContainer;

    iput-object v0, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    .line 181
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {p0}, Lcom/android/camera/EffectBestPic;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->setOnSwapDataListener(Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->getHandler()Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    .line 186
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mSwitchFaceContainer:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 187
    iput-boolean v7, p0, Lcom/android/camera/EffectBestPic;->isProcessOver:Z

    .line 188
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/EffectBestPic;->isRefreshSwitchFace:Z

    .line 225
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v1, :cond_0

    .line 226
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 227
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 228
    const-string v1, "plugin_do_facereplace"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 229
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 231
    .end local v0           #PluginParam:Landroid/media/MMPlugInParam;
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/EffectBestPic;->removeAllView()V

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/EffectBestPic;->isProcessOver:Z

    .line 233
    return-void
.end method

.method public complete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/EffectBestPic;->isRefreshSwitchFace:Z

    .line 212
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v1, :cond_0

    .line 213
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 214
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 215
    const-string v1, "plugin_do_facereplace"

    invoke-virtual {v0, v1, v3}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 216
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 219
    .end local v0           #PluginParam:Landroid/media/MMPlugInParam;
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/EffectBestPic;->isProcessOver:Z

    .line 220
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/camera/EffectBestPic;->cancel()V

    .line 333
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->finish()V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectBestPic;->isProcessOver:Z

    .line 335
    return-void
.end method

.method public isProcessOver()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/camera/EffectBestPic;->isProcessOver:Z

    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/camera/EffectBestPic;->isRefreshSwitchFace:Z

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "EffectBestPic"

    const-string v1, "---refreshSwitchFaceView---"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/android/camera/EffectBestPic;->refreshSwitchFaceView()V

    .line 315
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 343
    invoke-virtual {p0}, Lcom/android/camera/EffectBestPic;->cancel()V

    .line 344
    iput-boolean v0, p0, Lcom/android/camera/EffectBestPic;->isProcessOver:Z

    .line 345
    return v0
.end method

.method public onDataPostView([IIILandroid/media/ImageEffectProxy;)V
    .locals 5
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "proxy"

    .prologue
    const-wide/16 v3, 0x32

    .line 112
    const-string v1, "EffectBestPic"

    const-string v2, "---------onDataPostView------------"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    const/16 v2, 0x1772

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 115
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    const/16 v2, 0x1773

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/EffectBestPic;->hideProcess()V

    .line 118
    return-void
.end method

.method public onFaceData([IIILandroid/media/ImageEffectProxy;)V
    .locals 2
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "proxy"

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/CameraEffectBase;->onFaceData([IIILandroid/media/ImageEffectProxy;)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method public onFaceInfo(Ljava/lang/String;Landroid/media/ImageEffectProxy;)V
    .locals 3
    .parameter "faceinfo"
    .parameter "proxy"

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/android/camera/CameraEffectBase;->onFaceInfo(Ljava/lang/String;Landroid/media/ImageEffectProxy;)V

    .line 140
    const-string v0, "EffectBestPic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the image faceinfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    const/16 v1, 0x1770

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method public onFinishProcess()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/camera/EffectBestPic;->removeAllView()V

    .line 340
    return-void
.end method

.method public onGeneralCallback(ILjava/lang/String;II)V
    .locals 5
    .parameter "type"
    .parameter "msg"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/16 v4, 0x1773

    const/4 v3, 0x1

    .line 71
    const-string v0, "EffectBestPic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/16 v0, 0x6a

    if-ne p1, v0, :cond_0

    .line 73
    const-string v0, "start"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v0, "end"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iput-boolean v3, p0, Lcom/android/camera/EffectBestPic;->isRefreshSwitchFace:Z

    .line 77
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mModuleHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mModuleHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 83
    :cond_3
    const-string v0, "facestart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "faceend"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string v0, "updatefaceposition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 90
    :cond_4
    const-string v0, "novalidface"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-boolean v3, p0, Lcom/android/camera/EffectBestPic;->isProcessOver:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onPause()V

    .line 252
    invoke-virtual {p0}, Lcom/android/camera/EffectBestPic;->cancel()V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectBestPic;->isProcessOver:Z

    .line 254
    return-void
.end method

.method public onProcess(ILandroid/media/ImageEffectProxy;)V
    .locals 3
    .parameter "progress"
    .parameter "proxy"

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lcom/android/camera/CameraEffectBase;->onProcess(ILandroid/media/ImageEffectProxy;)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;

    const/16 v1, 0xbbb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method

.method public swapSwitchFaceView(Ljava/lang/String;)V
    .locals 4
    .parameter "replaceInfo"

    .prologue
    .line 197
    const-string v1, "EffectBestPic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replaceInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 199
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 200
    const-string v1, "plugin_replace_face"

    invoke-virtual {v0, v1, p1}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/android/camera/EffectBestPic;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/EffectBestPic;->isRefreshSwitchFace:Z

    .line 203
    return-void
.end method
