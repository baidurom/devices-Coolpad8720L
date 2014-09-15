.class public Lcom/android/camera/EffectPerfect365Action;
.super Lcom/android/camera/CameraEffectBase;
.source "EffectPerfect365Action.java"


# instance fields
.field isCall365Action:Z

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/os/Handler;)V
    .locals 1
    .parameter "EffectService"
    .parameter "context"
    .parameter "para"
    .parameter "handler"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraEffectBase;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/EffectPerfect365Action;->isCall365Action:Z

    .line 25
    iput-object p4, p0, Lcom/android/camera/EffectPerfect365Action;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method


# virtual methods
.method public CloseEffect()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public EndCapture()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public JpegAvailable()V
    .locals 3

    .prologue
    .line 42
    const-string v0, "EffectPerfect365Action"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCall365Action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/EffectPerfect365Action;->isCall365Action:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-boolean v0, p0, Lcom/android/camera/EffectPerfect365Action;->isCall365Action:Z

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/camera/EffectPerfect365Action;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/camera/EffectPerfect365Action;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectPerfect365Action;->isCall365Action:Z

    goto :goto_0
.end method

.method public OpenEffect()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public StartCapture()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/EffectPerfect365Action;->isCall365Action:Z

    .line 34
    return-void
.end method
