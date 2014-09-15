.class public Lcom/android/camera/CameraEffectBase;
.super Ljava/lang/Object;
.source "CameraEffectBase.java"

# interfaces
.implements Landroid/media/ImageEffectProxy$FaceDataCallback;
.implements Landroid/media/ImageEffectProxy$FaceInfoCallback;
.implements Landroid/media/ImageEffectProxy$GeneticCallback;
.implements Landroid/media/ImageEffectProxy$PostViewCallback;
.implements Landroid/media/ImageEffectProxy$ProcessCallback;
.implements Landroid/media/ImageEffectProxy$TrackObjectCallback;
.implements Lcom/android/camera/CameraEffectModule;


# instance fields
.field protected isProcessOver:Z

.field protected mContent:Landroid/content/Context;

.field protected mContentGroup:Landroid/view/ViewGroup;

.field protected mEffectName:Ljava/lang/String;

.field protected mEffectProxy:Landroid/media/ImageEffectProxy;

.field protected mEffectService:Landroid/media/ImageEffectService;

.field protected mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

.field protected mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "EffectService"
    .parameter "context"
    .parameter "para"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraEffectBase;->isProcessOver:Z

    .line 50
    iput-object p1, p0, Lcom/android/camera/CameraEffectBase;->mEffectService:Landroid/media/ImageEffectService;

    .line 52
    iput-object p2, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/android/camera/CameraEffectBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 57
    return-void
.end method


# virtual methods
.method public CloseEffect()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v1, p0, Lcom/android/camera/CameraEffectBase;->mEffectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/ImageEffectService;->unloadEffectPlugIn(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/ImageEffectProxy;->release()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraEffectBase;->mEffectProxy:Landroid/media/ImageEffectProxy;

    .line 104
    :cond_0
    return-void
.end method

.method public EndCapture()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public GetEffectParameter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public JpegAvailable()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public OpenEffect()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v1, p0, Lcom/android/camera/CameraEffectBase;->mEffectName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageEffectService;->loadEffectPlugIn(Ljava/lang/String;Z)Landroid/media/ImageEffectProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraEffectBase;->mEffectProxy:Landroid/media/ImageEffectProxy;

    .line 86
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "CameraEffectBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>loading plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraEffectBase;->mEffectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v1, p0, Lcom/android/camera/CameraEffectBase;->mEffectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/ImageEffectService;->setEffectMode(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0, p0}, Landroid/media/ImageEffectProxy;->setProcessCb(Landroid/media/ImageEffectProxy$ProcessCallback;)V

    goto :goto_0
.end method

.method public SetEffectName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/CameraEffectBase;->mEffectName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public SetEffectParameter(Ljava/lang/Object;)V
    .locals 0
    .parameter "para"

    .prologue
    .line 281
    return-void
.end method

.method public SetThumbnail([BLjava/lang/String;II)V
    .locals 0
    .parameter "data"
    .parameter "title"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 113
    return-void
.end method

.method public StartCapture()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/camera/CameraEffectBase;->CloseEffect()V

    .line 267
    return-void
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 248
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 249
    .local v1, previewRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    instance-of v4, v4, Lcom/android/camera/CameraActivity;

    if-eqz v4, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    .line 251
    .local v0, ca:Lcom/android/camera/CameraActivity;
    iget-object v3, v0, Lcom/android/camera/CameraActivity;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    .line 252
    .local v3, surfaceView:Lcom/android/camera/ui/PreviewSurfaceView;
    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {v3}, Lcom/android/camera/ui/PreviewSurfaceView;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/camera/ui/PreviewSurfaceView;->getTop()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/camera/ui/PreviewSurfaceView;->getRight()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/camera/ui/PreviewSurfaceView;->getBottom()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 258
    .end local v0           #ca:Lcom/android/camera/CameraActivity;
    .end local v3           #surfaceView:Lcom/android/camera/ui/PreviewSurfaceView;
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    iget-object v4, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/camera/Util;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v2

    .line 260
    .local v2, size:[I
    aget v4, v2, v8

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v1, v8, v8, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 262
    .end local v2           #size:[I
    :cond_1
    return-object v1
.end method

.method public hideProcess()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GuageIndicatorContainer;->setVisibility(I)V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mContentGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mContentGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    goto :goto_0
.end method

.method public inflateLayout(IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "rootViewId"
    .parameter "layoutId"
    .parameter "group"

    .prologue
    .line 167
    iget-object v3, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 169
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x1

    invoke-virtual {v1, p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, root:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, inflateView:Landroid/view/View;
    iput-object p3, p0, Lcom/android/camera/CameraEffectBase;->mContentGroup:Landroid/view/ViewGroup;

    .line 172
    return-object v0
.end method

.method protected initProcessBar(IILandroid/view/ViewGroup;III)V
    .locals 5
    .parameter "rootViewId"
    .parameter "layoutId"
    .parameter "group"
    .parameter "maxValue"
    .parameter "mode"
    .parameter "gravity"

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    if-nez v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 233
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x1

    invoke-virtual {v0, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 235
    .local v1, root:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/GuageIndicatorContainer;

    iput-object v2, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    .line 236
    iget-object v2, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v2, p4}, Lcom/android/camera/ui/GuageIndicatorContainer;->setMaxValue(I)V

    .line 237
    iget-object v2, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v2, p6}, Lcom/android/camera/ui/GuageIndicatorContainer;->setGuageGravity(I)V

    .line 238
    iget-object v2, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v2, p5}, Lcom/android/camera/ui/GuageIndicatorContainer;->generateIndicator(I)V

    .line 239
    iget-object v2, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    sget v3, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    sget v4, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/GuageIndicatorContainer;->setOrientation(II)V

    .line 242
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #root:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraEffectBase;->mContentGroup:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 243
    iput-object p3, p0, Lcom/android/camera/CameraEffectBase;->mContentGroup:Landroid/view/ViewGroup;

    .line 245
    :cond_1
    return-void
.end method

.method public isProcessOver()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationEnd()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public onDataPostView([IIILandroid/media/ImageEffectProxy;)V
    .locals 0
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "proxy"

    .prologue
    .line 66
    return-void
.end method

.method public onFaceData([IIILandroid/media/ImageEffectProxy;)V
    .locals 0
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "proxy"

    .prologue
    .line 122
    return-void
.end method

.method public onFaceInfo(Ljava/lang/String;Landroid/media/ImageEffectProxy;)V
    .locals 0
    .parameter "info"
    .parameter "proxy"

    .prologue
    .line 128
    return-void
.end method

.method public onGeneralCallback(ILjava/lang/String;II)V
    .locals 0
    .parameter "type"
    .parameter "msg"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 147
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onProcess(ILandroid/media/ImageEffectProxy;)V
    .locals 0
    .parameter "arg0"
    .parameter "proxy"

    .prologue
    .line 69
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onTrackPos(Ljava/lang/String;Landroid/media/ImageEffectProxy;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 138
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0
    .parameter "uri"
    .parameter "title"
    .parameter "isClear"

    .prologue
    .line 302
    return-void
.end method

.method public showProcess(I)V
    .locals 3
    .parameter "process"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v1}, Lcom/android/camera/ui/GuageIndicatorContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GuageIndicatorContainer;->setVisibility(I)V

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/GuageIndicatorContainer;->setValue(I)V

    .line 187
    iget-object v1, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v1}, Lcom/android/camera/ui/GuageIndicatorContainer;->getMaxValue()I

    move-result v0

    .line 189
    .local v0, maxValue:I
    add-int/lit8 v1, v0, -0x1

    if-ne v1, p1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/camera/CameraEffectBase;->hideProcess()V

    goto :goto_0
.end method

.method public showProcess(IZ)V
    .locals 2
    .parameter "process"
    .parameter "autoDismiss"

    .prologue
    .line 194
    if-eqz p2, :cond_1

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraEffectBase;->showProcess(I)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/GuageIndicatorContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GuageIndicatorContainer;->setVisibility(I)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GuageIndicatorContainer;->setValue(I)V

    goto :goto_0
.end method

.method protected showToastMessage(Ljava/lang/String;JII)V
    .locals 6
    .parameter "text"
    .parameter "duration"
    .parameter "rotateOrientation"
    .parameter "passOrientation"

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    .local v0, ca:Lcom/android/camera/CameraActivity;
    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 272
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/CameraActivity;->showToastView(Ljava/lang/String;JII)V

    .line 276
    .end local v0           #ca:Lcom/android/camera/CameraActivity;
    :cond_0
    return-void
.end method
