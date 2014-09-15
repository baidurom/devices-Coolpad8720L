.class public Lcom/android/camera/FocusOverlayManager;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusOverlayManager$MainHandler;,
        Lcom/android/camera/FocusOverlayManager$Listener;
    }
.end annotation


# instance fields
.field private bForceLockAAA:Z

.field private mAeAwbLock:Z

.field private mAutoFocusCalledByShutter:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Landroid/view/View;

.field private mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

.field private mFocusMode:Ljava/lang/String;

.field mFocusRect:Landroid/graphics/Rect;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field mListener:Lcom/android/camera/FocusOverlayManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I

.field private mbAutofocused:Z

.field private mbDelayShutting:Z

.field private nDelaySeconds:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;)V
    .locals 2
    .parameter "preferences"
    .parameter "defaultFocusModes"
    .parameter "parameters"
    .parameter "listener"
    .parameter "mirror"
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 94
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mbAutofocused:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->bForceLockAAA:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mAutoFocusCalledByShutter:Z

    .line 826
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRect:Landroid/graphics/Rect;

    .line 185
    new-instance v0, Lcom/android/camera/FocusOverlayManager$MainHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/camera/FocusOverlayManager$MainHandler;-><init>(Lcom/android/camera/FocusOverlayManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    .line 187
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 188
    iput-object p2, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 189
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 190
    iput-object p4, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    .line 191
    invoke-virtual {p0, p5}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusOverlayManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/FocusOverlayManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/FocusOverlayManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/FocusOverlayManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/FocusOverlayManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->nDelaySeconds:I

    return v0
.end method

.method static synthetic access$310(Lcom/android/camera/FocusOverlayManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->nDelaySeconds:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->nDelaySeconds:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/FocusOverlayManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/FocusOverlayManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    return-void
.end method

.method private autoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 619
    const-string v0, "CAM_FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->autoFocus()V

    .line 621
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 622
    iput-boolean v2, p0, Lcom/android/camera/FocusOverlayManager;->mbAutofocused:Z

    .line 626
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 627
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAutoFocusCalledByShutter:Z

    if-nez v0, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    return-void
.end method

.method private calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 772
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 773
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 774
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 775
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 777
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 778
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 779
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 780
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 634
    const-string v0, "CAM_FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 640
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 641
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 642
    :cond_0
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 643
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 644
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 648
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 650
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 652
    :cond_0
    return-void
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 9
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 471
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_0
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 477
    return-void
.end method

.method private initializeMeteringAreas(IIIIII)V
    .locals 9
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 484
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_0
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 492
    return-void
.end method

.method private lockAeAwbIfNeeded()V
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 264
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 266
    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMatrix()V
    .locals 5

    .prologue
    .line 249
    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 250
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 251
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 256
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 257
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicator:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    .line 259
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void

    .line 257
    .restart local v0       #matrix:Landroid/graphics/Matrix;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unlockAeAwbIfNeeded()V
    .locals 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 271
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 273
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelDelayCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    const-string v0, "CAM_FocusManager"

    const-string v1, "cancelDelayCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z

    if-eqz v0, :cond_0

    .line 315
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->nDelaySeconds:I

    .line 316
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    iput-boolean v2, p0, Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z

    .line 318
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 320
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusOverlayManager$Listener;->setCaptureState(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->hideDelayClock()V

    .line 324
    :cond_0
    return-void
.end method

.method public doSnap()V
    .locals 4

    .prologue
    .line 337
    const-string v0, "CAM_FocusManager"

    const-string v1, "doSnap  >>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 344
    :cond_1
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSnap capture mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    .line 363
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAutoFocusCalledByShutter:Z

    .line 364
    const-string v0, "CAM_FocusManager"

    const-string v1, "doSnap  <<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 350
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 351
    const-string v0, "CAM_FocusManager"

    const-string v1, "doSnap  when focusing finish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb9

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 355
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_2

    .line 360
    const-string v0, "CAM_FocusManager"

    const-string v1, "doSnap without focusing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_1
.end method

.method public doSnapDelay(I)V
    .locals 4
    .parameter "millionSeconds"

    .prologue
    const/4 v3, 0x1

    .line 326
    const-string v0, "CAM_FocusManager"

    const-string v1, "doSnapDelay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->nDelaySeconds:I

    .line 329
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 331
    iput-boolean v3, p0, Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z

    .line 332
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0, v3}, Lcom/android/camera/FocusOverlayManager$Listener;->setCaptureState(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 335
    return-void
.end method

.method public forceLockAAA(Z)V
    .locals 1
    .parameter "bLock"

    .prologue
    .line 654
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->bForceLockAAA:Z

    .line 655
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 657
    :cond_0
    return-void
.end method

.method public getAeAwbLock()Z
    .locals 3

    .prologue
    .line 813
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAeAwbLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->bForceLockAAA:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 660
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_0

    const-string v3, "auto"

    .line 699
    :goto_0
    return-object v3

    .line 661
    :cond_0
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 663
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/FocusOverlayManager;->bForceLockAAA:Z

    if-eqz v3, :cond_2

    .line 664
    const-string v3, "auto"

    goto :goto_0

    .line 666
    :cond_2
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 668
    .local v2, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 670
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 688
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 691
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 693
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 698
    :cond_4
    :goto_2
    const-string v3, "CAM_FocusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFocusMode mFocusMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 673
    :cond_5
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_focusmode_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 675
    const-string v3, "CAM_FocusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFocusMode fromXML mFocusMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 679
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 680
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 681
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 682
    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 679
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 695
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method getFocusState()I
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isDelaySnaping()Z
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z

    return v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 787
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 791
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(ZZ)V
    .locals 8
    .parameter "focused"
    .parameter "shutterButtonPressed"

    .prologue
    const/16 v7, 0xbb9

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 368
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocus focused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shutterButtonPressed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/FocusOverlayManager;->mbAutofocused:Z

    .line 373
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 378
    if-eqz p1, :cond_4

    .line 379
    iput v4, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 383
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAutoFocusCalledByShutter:Z

    if-nez v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 386
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z

    if-nez v0, :cond_2

    .line 387
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    .line 419
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/FocusOverlayManager;->mbAutofocused:Z

    .line 421
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0, v3}, Lcom/android/camera/FocusOverlayManager$Listener;->setCaptureState(Z)V

    .line 424
    :cond_3
    return-void

    .line 381
    :cond_4
    iput v6, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 388
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-ne v0, v3, :cond_a

    .line 392
    if-eqz p1, :cond_9

    .line 393
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-eq v0, v4, :cond_6

    .line 396
    iput v4, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 403
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAutoFocusCalledByShutter:Z

    if-nez v0, :cond_7

    .line 404
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 408
    :cond_7
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 409
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 411
    :cond_8
    if-eqz p2, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_1

    .line 399
    :cond_9
    iput v6, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_2

    .line 415
    :cond_a
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_2

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 5
    .parameter "moving"

    .prologue
    const/16 v4, 0xbb9

    const/4 v3, 0x1

    .line 427
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocusMoving---mAutoFocusCalledByShutter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/FocusOverlayManager;->mAutoFocusCalledByShutter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    goto :goto_0

    .line 434
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAutoFocusCalledByShutter:Z

    if-nez v0, :cond_0

    .line 441
    if-eqz p1, :cond_3

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mbAutofocused:Z

    .line 444
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 447
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mbAutofocused:Z

    if-nez v0, :cond_0

    .line 448
    iput-boolean v3, p0, Lcom/android/camera/FocusOverlayManager;->mbAutofocused:Z

    .line 449
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    .line 450
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 452
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z

    if-nez v0, :cond_0

    .line 455
    const-string v0, "CAM_FocusManager"

    const-string v1, ">>>>>>do capture while caf is finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 616
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 606
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 612
    :cond_0
    return-void
.end method

.method public onShutterDown()V
    .locals 4

    .prologue
    .line 276
    const-string v1, "CAM_FocusManager"

    const-string v2, "onShutterDown"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_delay_key"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, delay:Ljava/lang/String;
    const-string v1, "CAM_FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mAutoFocusCalledByShutter:Z

    .line 284
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mAutoFocusCalledByShutter:Z

    .line 288
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocus()V

    .line 293
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mAutoFocusCalledByShutter:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 297
    const-string v0, "CAM_FocusManager"

    const-string v1, "onShutterUp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 304
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 310
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->unlockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 544
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 557
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 561
    .local v8, focusWidth:I
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 562
    .local v7, focusHeight:I
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 563
    iget v5, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    .line 564
    .local v5, previewWidth:I
    iget v6, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    .line 566
    .local v6, previewHeight:I
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >>>>>> initialize the focus area size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, v5

    const v3, 0x3df5c28f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, v6

    const v3, 0x3df5c28f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    .line 568
    int-to-float v0, v5

    const v1, 0x3df5c28f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v6

    const v2, 0x3df5c28f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusOverlayManager;->initializeFocusAreas(IIIIII)V

    .line 572
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_5

    move-object v0, p0

    move v1, v8

    move v2, v7

    move v3, p1

    move v4, p2

    .line 573
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusOverlayManager;->initializeMeteringAreas(IIIIII)V

    .line 578
    :cond_5
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 580
    .local v10, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v0, v8, 0x2

    sub-int v0, p1, v0

    const/4 v1, 0x0

    sub-int v2, v5, v8

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v9

    .line 581
    .local v9, left:I
    div-int/lit8 v0, v7, 0x2

    sub-int v0, p2, v0

    const/4 v1, 0x0

    sub-int v2, v6, v7

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v12

    .line 582
    .local v12, top:I
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v10, v9, v12, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 584
    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v11

    .line 585
    .local v11, rules:[I
    const/16 v0, 0xd

    const/4 v1, 0x0

    aput v1, v11, v0

    .line 586
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 589
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->stopFaceDetection()V

    .line 592
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 593
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_6

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAutoFocusCalledByShutter:Z

    .line 595
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocus()V

    goto/16 :goto_0

    .line 597
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 599
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 805
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 806
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 797
    const-string v0, "CAM_FocusManager"

    const-string v1, "------removeMessages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 802
    :cond_0
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 755
    iget-boolean v2, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 768
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 760
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 761
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 762
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 764
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 766
    iput-object v5, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 767
    iput-object v5, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 809
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 810
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "displayOrientation"

    .prologue
    .line 240
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    .line 241
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 242
    return-void
.end method

.method public setFaceView(Lcom/android/camera/ui/FaceView;)V
    .locals 0
    .parameter "faceView"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 246
    return-void
.end method

.method public setFocusRect(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 828
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    if-nez v2, :cond_0

    .line 835
    :goto_0
    return-void

    .line 830
    :cond_0
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 831
    .local v1, focusWidth:I
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 832
    .local v0, focusHeight:I
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRect:Landroid/graphics/Rect;

    add-int v3, p1, v1

    add-int v4, p2, v0

    sub-int v5, p3, v1

    sub-int v6, p4, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setFocusRenderer(Landroid/view/View;)V
    .locals 1
    .parameter "focusIndicatorRotate"

    .prologue
    .line 195
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 196
    check-cast v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .line 197
    const v0, 0x7f100096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicator:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    .line 201
    :cond_0
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    .line 236
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 237
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "parameters"

    .prologue
    .line 204
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameters parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 211
    invoke-static {p1}, Lcom/android/camera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    .line 212
    invoke-static {p1}, Lcom/android/camera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    .line 213
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setPreviewSize(II)V
    .locals 3
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 218
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize previewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "previewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 220
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewWidth:I

    .line 221
    iput p2, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewHeight:I

    .line 222
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 232
    :cond_1
    return-void
.end method

.method public updateFocusUI()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 711
    const-string v4, "CAM_FocusManager"

    const-string v5, "----updateFocusUI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-boolean v4, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v4, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v4}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 715
    .local v0, faceExists:Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 718
    .local v1, focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :goto_2
    iget v4, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v4, :cond_5

    .line 719
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_4

    .line 720
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .end local v0           #faceExists:Z
    .end local v1           #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_2
    move v0, v3

    .line 714
    goto :goto_1

    .line 715
    .restart local v0       #faceExists:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    goto :goto_2

    .line 725
    .restart local v1       #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/FocusOverlayManager;->mbAutofocused:Z

    if-nez v2, :cond_0

    .line 726
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 728
    :cond_5
    iget v4, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-eq v4, v2, :cond_6

    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 729
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/FocusOverlayManager;->mbAutofocused:Z

    if-nez v2, :cond_0

    .line 730
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 732
    :cond_7
    const-string v2, "continuous-picture"

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 734
    invoke-interface {v1, v3}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 735
    :cond_8
    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 736
    invoke-interface {v1, v3}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 737
    :cond_9
    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 738
    invoke-interface {v1, v3}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    goto :goto_0
.end method
