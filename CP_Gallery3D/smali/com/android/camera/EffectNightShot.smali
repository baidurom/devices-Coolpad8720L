.class public Lcom/android/camera/EffectNightShot;
.super Lcom/android/camera/CameraEffectBase;
.source "EffectNightShot.java"

# interfaces
.implements Lcom/android/camera/ui/NightShotView$OnChangedListener;


# instance fields
.field hasAttachImage:Z

.field isFinished:Z

.field private mEnterOrientation:I

.field mHandler:Landroid/os/Handler;

.field private mPassOrientation:I

.field private mRotateOrientation:I

.field private mUpdateCount:I

.field mViewContainer:Landroid/view/ViewGroup;


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

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraEffectBase;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 42
    iput v0, p0, Lcom/android/camera/EffectNightShot;->mUpdateCount:I

    .line 44
    iput v0, p0, Lcom/android/camera/EffectNightShot;->mRotateOrientation:I

    .line 45
    iput v0, p0, Lcom/android/camera/EffectNightShot;->mEnterOrientation:I

    .line 46
    iput v0, p0, Lcom/android/camera/EffectNightShot;->mPassOrientation:I

    .line 50
    iput-boolean v0, p0, Lcom/android/camera/EffectNightShot;->hasAttachImage:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/camera/EffectNightShot;->isFinished:Z

    .line 57
    const-string v0, "nightshot"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEffectBase;->SetEffectName(Ljava/lang/String;)V

    .line 59
    iput-object p5, p0, Lcom/android/camera/EffectNightShot;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p4, p0, Lcom/android/camera/EffectNightShot;->mViewContainer:Landroid/view/ViewGroup;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/EffectNightShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/camera/EffectNightShot;->mUpdateCount:I

    return v0
.end method

.method private removeAllView()V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/camera/CameraEffectBase;->hideProcess()V

    .line 205
    iget-object v0, p0, Lcom/android/camera/EffectNightShot;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 206
    iget-object v0, p0, Lcom/android/camera/EffectNightShot;->mViewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/camera/EffectNightShot;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    return-void
.end method


# virtual methods
.method public CloseEffect()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->CloseEffect()V

    .line 246
    return-void
.end method

.method public EndCapture()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/camera/EffectNightShot;->removeAllView()V

    .line 92
    return-void
.end method

.method public SetThumbnail([BLjava/lang/String;II)V
    .locals 2
    .parameter "data"
    .parameter "title"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/EffectNightShot;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectNightShot$2;

    invoke-direct {v1, p0}, Lcom/android/camera/EffectNightShot$2;-><init>(Lcom/android/camera/EffectNightShot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    iget v0, p0, Lcom/android/camera/EffectNightShot;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/camera/EffectNightShot;->mUpdateCount:I

    .line 129
    return-void
.end method

.method public StartCapture()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/camera/EffectNightShot;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectNightShot;->mRotateOrientation:I

    .line 66
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getEnterOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectNightShot;->mEnterOrientation:I

    .line 67
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectNightShot;->mPassOrientation:I

    .line 69
    iget v0, p0, Lcom/android/camera/EffectNightShot;->mEnterOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    .line 70
    iget v0, p0, Lcom/android/camera/EffectNightShot;->mRotateOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    .line 71
    iget v0, p0, Lcom/android/camera/EffectNightShot;->mPassOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    .line 72
    iget v0, p0, Lcom/android/camera/EffectNightShot;->mRotateOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/EffectNightShot;->mRotateOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 73
    .local v7, isLandscape:Z
    :goto_0
    const v1, 0x7f10009b

    const v2, 0x7f04002b

    iget-object v3, p0, Lcom/android/camera/EffectNightShot;->mViewContainer:Landroid/view/ViewGroup;

    const/16 v4, 0x64

    const/4 v5, 0x2

    if-eqz v7, :cond_2

    const/16 v6, 0x50

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraEffectBase;->initProcessBar(IILandroid/view/ViewGroup;III)V

    .line 77
    iput v8, p0, Lcom/android/camera/EffectNightShot;->mUpdateCount:I

    .line 87
    return-void

    .end local v7           #isLandscape:Z
    :cond_1
    move v7, v8

    .line 72
    goto :goto_0

    .line 73
    .restart local v7       #isLandscape:Z
    :cond_2
    const/16 v6, 0x11

    goto :goto_1
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/camera/EffectNightShot;->removeAllView()V

    .line 213
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->finish()V

    .line 215
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/camera/EffectNightShot;->removeAllView()V

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public onDataPostView([IIILandroid/media/ImageEffectProxy;)V
    .locals 0
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "proxy"

    .prologue
    .line 97
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onPause()V

    .line 224
    invoke-direct {p0}, Lcom/android/camera/EffectNightShot;->removeAllView()V

    .line 225
    return-void
.end method

.method public onProcess(ILandroid/media/ImageEffectProxy;)V
    .locals 3
    .parameter "progress"
    .parameter "proxy"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/android/camera/CameraEffectBase;->onProcess(ILandroid/media/ImageEffectProxy;)V

    .line 101
    const-string v0, "EffectNightShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--progress-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget v0, p0, Lcom/android/camera/EffectNightShot;->mUpdateCount:I

    if-ge p1, v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectNightShot;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectNightShot$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/EffectNightShot$1;-><init>(Lcom/android/camera/EffectNightShot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
