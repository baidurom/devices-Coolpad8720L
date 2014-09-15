.class public Lcom/android/camera/CameraScreenNail;
.super Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;,
        Lcom/android/camera/CameraScreenNail$Listener;
    }
.end annotation


# instance fields
.field private mAnimState:I

.field private mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

.field private mEnableAspectRatioClamping:Z

.field private mFirstFrameArrived:Z

.field private mFullScreen:Z

.field private mListener:Lcom/android/camera/CameraScreenNail$Listener;

.field private mLock:Ljava/lang/Object;

.field private mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field private mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mValidedScreenNail:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraScreenNail$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;-><init>()V

    .line 60
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 63
    new-instance v0, Lcom/android/camera/CaptureAnimManager;

    invoke-direct {v0}, Lcom/android/camera/CaptureAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    .line 64
    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    .line 65
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 80
    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    .line 82
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mValidedScreenNail:Z

    .line 100
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    .line 101
    return-void
.end method

.method private callbackIfNeeded()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    invoke-interface {v0, p0}, Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;->onFrameDrawn(Lcom/android/camera/CameraScreenNail;)V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 308
    :cond_0
    return-void
.end method

.method private copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 396
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v5

    .line 397
    .local v5, width:I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v6

    .line 398
    .local v6, height:I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 401
    const/4 v0, 0x0

    int-to-float v1, v6

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 402
    const/high16 v0, -0x4080

    invoke-interface {p1, v2, v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 403
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 404
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraScreenNail;->updateTransformMatrix([F)V

    .line 405
    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V

    .line 407
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 408
    return-void
.end method

.method private getTextureHeight()I
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    return v0
.end method

.method private getTextureWidth()I
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    return v0
.end method

.method private setPreviewLayoutSize(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 165
    const-string v0, "CAM_ScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview layout size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    .line 167
    iput p2, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    .line 168
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->updateRenderSize()V

    .line 169
    return-void
.end method

.method private updateRenderSize()V
    .locals 6

    .prologue
    .line 172
    iget-boolean v3, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-nez v3, :cond_0

    .line 173
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    .line 174
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 175
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 176
    const-string v3, "CAM_ScreenNail"

    const-string v4, "aspect ratio clamping disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 187
    .local v0, aspectRatio:F
    :goto_1
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    if-le v3, v4, :cond_2

    .line 188
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 190
    .local v2, scaledTextureWidth:F
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .line 198
    .local v1, scaledTextureHeight:F
    :goto_2
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    .line 199
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    .line 200
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 201
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 202
    const-string v3, "CAM_ScreenNail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aspect ratio clamping enabled, surfaceTexture scale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v0           #aspectRatio:F
    .end local v1           #scaledTextureHeight:F
    .end local v2           #scaledTextureWidth:F
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .restart local v0       #aspectRatio:F
    goto :goto_1

    .line 193
    :cond_2
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 195
    .restart local v2       #scaledTextureWidth:F
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .restart local v1       #scaledTextureHeight:F
    goto :goto_2
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 212
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 213
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mValidedScreenNail:Z

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateBoltting(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureAnimManager;->setOrientation(I)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateBoltting()V

    .line 258
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 260
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateFlash(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureAnimManager;->setOrientation(I)V

    .line 266
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateFlash()V

    .line 267
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 268
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 269
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSlide()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 294
    const-string v0, "CAM_ScreenNail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot animateSlide outside of animateCapture! Animation state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    monitor-exit v1

    .line 301
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateSlide()V

    .line 299
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 300
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCamera()V
    .locals 3

    .prologue
    .line 235
    const-string v0, "CAM_ScreenNail"

    const-string v1, "animateSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 240
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 242
    :cond_0
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateWave(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureAnimManager;->setOrientation(I)V

    .line 274
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateWave()V

    .line 275
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 276
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 277
    monitor-exit v1

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateZoom(ILandroid/graphics/Rect;)V
    .locals 2
    .parameter "displayRotation"
    .parameter "rect"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureAnimManager;->setOrientation(I)V

    .line 282
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0, p2}, Lcom/android/camera/CaptureAnimManager;->animateZoom(Landroid/graphics/Rect;)V

    .line 283
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 284
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 285
    monitor-exit v1

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyTexture()V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 230
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 231
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 319
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 320
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 15
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 324
    iget-object v14, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 325
    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v13

    .line 327
    .local v13, surfaceTexture:Landroid/graphics/SurfaceTexture;
    if-eqz v13, :cond_1

    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v4, :cond_2

    :cond_1
    monitor-exit v14

    .line 393
    :goto_0
    return-void

    .line 328
    :cond_2
    const-string v4, "CameraScreenNail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    packed-switch v4, :pswitch_data_0

    .line 368
    :cond_3
    :goto_1
    :pswitch_0
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 370
    :cond_4
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 371
    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mFullScreen:Z

    if-nez v4, :cond_6

    .line 373
    const/4 v12, 0x0

    .line 381
    .local v12, drawn:Z
    :goto_2
    if-eqz v12, :cond_8

    .line 382
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 391
    .end local v12           #drawn:Z
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->callbackIfNeeded()V

    .line 392
    monitor-exit v14

    goto :goto_0

    .end local v13           #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v4

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 331
    .restart local v13       #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :pswitch_1
    :try_start_1
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_1

    .line 334
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 335
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(II)V

    .line 336
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onPreviewTextureCopied()V

    .line 337
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 345
    :pswitch_3
    invoke-virtual {v13}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 346
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v10, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/SwitchAnimManager;->drawDarkPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    goto :goto_1

    .line 350
    :pswitch_4
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v4}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    .line 351
    const/4 v4, 0x7

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 352
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    if-eqz v4, :cond_3

    .line 353
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onAnimationStart()V

    goto :goto_1

    .line 357
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 358
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onCaptureTextureCopied()V

    .line 360
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/camera/CaptureAnimManager;->startAnimation(IIII)V

    .line 361
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 362
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    if-eqz v4, :cond_3

    .line 363
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onAnimationStart()V

    goto/16 :goto_1

    .line 375
    :cond_6
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    iget-object v5, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, p0, v5}, Lcom/android/camera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v12

    .restart local v12       #drawn:Z
    goto :goto_2

    .line 378
    .end local v12           #drawn:Z
    :cond_7
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v11, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object v10, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v12

    .restart local v12       #drawn:Z
    goto/16 :goto_2

    .line 386
    :cond_8
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 387
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onAnimationEnd()V

    .line 388
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public enableAspectRatioClamping()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 161
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->updateRenderSize()V

    .line 162
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getUncroppedRenderHeight()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getUncroppedRenderWidth()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v0

    goto :goto_0
.end method

.method public hasValidedScreenNail()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mValidedScreenNail:Z

    return v0
.end method

.method public noDraw()V
    .locals 2

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 414
    monitor-exit v1

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 428
    monitor-exit v1

    .line 440
    :goto_0
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 431
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_2

    .line 432
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 433
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 439
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 421
    monitor-exit v1

    .line 422
    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mValidedScreenNail:Z

    .line 224
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFullScreen(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/CameraScreenNail;->mFullScreen:Z

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOneTimeOnFrameDrawnListener(Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 455
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 456
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 457
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 449
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraScreenNail;->setPreviewLayoutSize(II)V

    .line 450
    monitor-exit v1

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 145
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    if-nez v0, :cond_0

    .line 146
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    .line 147
    iput p2, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->updateRenderSize()V

    .line 150
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 6
    .parameter "matrix"

    .prologue
    const/high16 v0, 0x3f00

    const/4 v5, 0x0

    const/high16 v4, -0x4100

    const/4 v3, 0x0

    .line 312
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 313
    invoke-static {p1, v3, v0, v0, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 314
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    const/high16 v2, 0x3f80

    invoke-static {p1, v3, v0, v1, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 315
    invoke-static {p1, v3, v4, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 316
    return-void
.end method
