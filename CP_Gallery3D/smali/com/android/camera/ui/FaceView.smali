.class public Lcom/android/camera/ui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final LOGV:Z

.field private isSmileMode:Z

.field private volatile mBlocked:Z

.field private mColor:I

.field private mDisplayOrientation:I

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private final mFailColor:I

.field private final mFocusedColor:I

.field private final mFocusingColor:I

.field private mHandler:Landroid/os/Handler;

.field private mLockOrientation:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPause:Z

.field private mPendingFaces:[Landroid/hardware/Camera$Face;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/RectF;

.field private mRotateOrientation:I

.field private mSmileFaces:[Lcom/android/camera/EffectSmileShot$YLFace;

.field private mStateSwitchPending:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v2, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    .line 57
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 58
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 74
    iput-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/camera/ui/FaceView;->isSmileMode:Z

    .line 76
    iput v2, p0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    .line 78
    new-instance v1, Lcom/android/camera/ui/FaceView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FaceView$1;-><init>(Lcom/android/camera/ui/FaceView;)V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    .line 95
    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mFocusedColor:I

    .line 96
    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mFailColor:I

    .line 97
    iget v1, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f0d0048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/FaceView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/ui/FaceView;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FaceView;)[Landroid/hardware/Camera$Face;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 196
    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 197
    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mSmileFaces:[Lcom/android/camera/EffectSmileShot$YLFace;

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 199
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 29
    .parameter "canvas"

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/FaceView;->isSmileMode:Z

    if-eqz v2, :cond_1b

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mSmileFaces:[Lcom/android/camera/EffectSmileShot$YLFace;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mSmileFaces:[Lcom/android/camera/EffectSmileShot$YLFace;

    array-length v2, v2

    if-lez v2, :cond_29

    .line 229
    const/16 v27, 0x0

    .line 230
    .local v27, sn:Lcom/android/camera/CameraScreenNail;
    const/16 v26, 0x0

    .line 231
    .local v26, rw:I
    const/16 v25, 0x0

    .line 232
    .local v25, rh:I
    const/16 v24, 0x0

    .local v24, ratioWidth:F
    const/16 v23, 0x0

    .line 235
    .local v23, ratioHeight:F
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v2, :cond_9

    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v27

    .line 238
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/CameraScreenNail;->getUncroppedRenderWidth()I

    move-result v26

    .line 239
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/CameraScreenNail;->getUncroppedRenderHeight()I

    move-result v25

    .line 246
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v22

    .line 247
    .local v22, previewWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v21

    .line 248
    .local v21, previewHeight:I
    const/4 v11, 0x0

    .line 249
    .local v11, dx:I
    const/4 v12, 0x0

    .line 250
    .local v12, dy:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_a

    .line 251
    :cond_0
    move/from16 v0, v21

    int-to-float v2, v0

    const/high16 v4, 0x3f80

    mul-float/2addr v2, v4

    move/from16 v0, v26

    int-to-float v4, v0

    div-float v24, v2, v4

    .line 252
    move/from16 v0, v22

    int-to-float v2, v0

    const/high16 v4, 0x3f80

    mul-float/2addr v2, v4

    move/from16 v0, v25

    int-to-float v4, v0

    div-float v23, v2, v4

    .line 254
    move/from16 v26, v21

    .line 255
    move/from16 v25, v22

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int v2, v2, v25

    div-int/lit8 v11, v2, 0x2

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v2, v26

    div-int/lit8 v12, v2, 0x2

    .line 269
    :cond_1
    :goto_1
    const/4 v8, 0x0

    .local v8, cx:I
    const/4 v9, 0x0

    .line 270
    .local v9, cy:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mSmileFaces:[Lcom/android/camera/EffectSmileShot$YLFace;

    array-length v2, v2

    if-ge v15, v2, :cond_29

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mSmileFaces:[Lcom/android/camera/EffectSmileShot$YLFace;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/android/camera/EffectSmileShot$YLFace;->getRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 273
    .local v13, faceRect:Landroid/graphics/Rect;
    iget v2, v13, Landroid/graphics/Rect;->right:I

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sub-int v14, v2, v4

    .line 274
    .local v14, faceWidth:I
    new-instance v19, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mSmileFaces:[Lcom/android/camera/EffectSmileShot$YLFace;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/android/camera/EffectSmileShot$YLFace;->getMouth()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mSmileFaces:[Lcom/android/camera/EffectSmileShot$YLFace;

    aget-object v4, v4, v15

    invoke-virtual {v4}, Lcom/android/camera/EffectSmileShot$YLFace;->getMouth()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 275
    .local v19, pointMouth:Landroid/graphics/Point;
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float v2, v2, v24

    float-to-int v2, v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 276
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float v2, v2, v23

    float-to-int v2, v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 277
    const-string v2, "CAM FaceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    if-eqz v2, :cond_13

    .line 280
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_e

    .line 281
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_c

    .line 282
    :cond_3
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    sub-int v2, v25, v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 283
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int v8, v2, v12

    .line 284
    move-object/from16 v0, v19

    iput v8, v0, Landroid/graphics/Point;->x:I

    .line 312
    :cond_4
    :goto_3
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 313
    .local v16, mMouthRect:Landroid/graphics/Rect;
    const/16 v18, 0x1

    .line 314
    .local v18, mouthWidth:I
    const/16 v17, 0x1

    .line 316
    .local v17, mouthHeight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_16

    .line 317
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_14

    .line 318
    :cond_6
    div-int/lit8 v18, v14, 0x4

    .line 319
    div-int/lit8 v17, v14, 0x2

    .line 336
    :cond_7
    :goto_4
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v18, 0x2

    sub-int/2addr v2, v4

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 337
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v17, 0x2

    sub-int/2addr v2, v4

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 338
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int v2, v2, v18

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 339
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v17

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 340
    const/4 v2, 0x1

    new-array v3, v2, [Landroid/graphics/Rect;

    .line 341
    .local v3, srcRects:[Landroid/graphics/Rect;
    const/4 v2, 0x0

    aput-object v16, v3, v2

    .line 342
    const/4 v10, 0x0

    .line 343
    .local v10, dstRect:[Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/ui/RotateControl;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/ui/RotateControl;->getDestRegion([Landroid/graphics/Rect;IIII)[Landroid/graphics/Rect;

    move-result-object v10

    .line 355
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    const/4 v2, 0x0

    aget-object v2, v10, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 270
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 241
    .end local v3           #srcRects:[Landroid/graphics/Rect;
    .end local v8           #cx:I
    .end local v9           #cy:I
    .end local v10           #dstRect:[Landroid/graphics/Rect;
    .end local v11           #dx:I
    .end local v12           #dy:I
    .end local v13           #faceRect:Landroid/graphics/Rect;
    .end local v14           #faceWidth:I
    .end local v15           #i:I
    .end local v16           #mMouthRect:Landroid/graphics/Rect;
    .end local v17           #mouthHeight:I
    .end local v18           #mouthWidth:I
    .end local v19           #pointMouth:Landroid/graphics/Point;
    .end local v21           #previewHeight:I
    .end local v22           #previewWidth:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    .line 243
    .local v20, preview:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    .line 244
    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    goto/16 :goto_0

    .line 260
    .end local v20           #preview:Landroid/hardware/Camera$Size;
    .restart local v11       #dx:I
    .restart local v12       #dy:I
    .restart local v21       #previewHeight:I
    .restart local v22       #previewWidth:I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_1

    .line 261
    :cond_b
    move/from16 v0, v22

    int-to-float v2, v0

    const/high16 v4, 0x3f80

    mul-float/2addr v2, v4

    move/from16 v0, v26

    int-to-float v4, v0

    div-float v24, v2, v4

    .line 262
    move/from16 v0, v21

    int-to-float v2, v0

    const/high16 v4, 0x3f80

    mul-float/2addr v2, v4

    move/from16 v0, v25

    int-to-float v4, v0

    div-float v23, v2, v4

    .line 264
    move/from16 v26, v22

    .line 265
    move/from16 v25, v21

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v2, v25

    div-int/lit8 v11, v2, 0x2

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int v2, v2, v26

    div-int/lit8 v12, v2, 0x2

    goto/16 :goto_1

    .line 286
    .restart local v8       #cx:I
    .restart local v9       #cy:I
    .restart local v13       #faceRect:Landroid/graphics/Rect;
    .restart local v14       #faceWidth:I
    .restart local v15       #i:I
    .restart local v19       #pointMouth:Landroid/graphics/Point;
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_4

    .line 287
    :cond_d
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int v2, v26, v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 288
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int v8, v2, v12

    .line 289
    move-object/from16 v0, v19

    iput v8, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_3

    .line 293
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_4

    .line 294
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_11

    .line 295
    :cond_10
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    sub-int v2, v25, v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 296
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int v8, v2, v12

    .line 297
    move-object/from16 v0, v19

    iput v8, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_3

    .line 299
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_4

    .line 300
    :cond_12
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int v2, v26, v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 301
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int v8, v2, v12

    .line 302
    move-object/from16 v0, v19

    iput v8, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_3

    .line 306
    :cond_13
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int v8, v2, v12

    .line 307
    move-object/from16 v0, v19

    iput v8, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_3

    .line 321
    .restart local v16       #mMouthRect:Landroid/graphics/Rect;
    .restart local v17       #mouthHeight:I
    .restart local v18       #mouthWidth:I
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_7

    .line 322
    :cond_15
    div-int/lit8 v18, v14, 0x2

    .line 323
    div-int/lit8 v17, v14, 0x4

    goto/16 :goto_4

    .line 326
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_7

    .line 327
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_19

    .line 328
    :cond_18
    div-int/lit8 v18, v14, 0x4

    .line 329
    div-int/lit8 v17, v14, 0x2

    goto/16 :goto_4

    .line 331
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_7

    .line 332
    :cond_1a
    div-int/lit8 v18, v14, 0x2

    .line 333
    div-int/lit8 v17, v14, 0x4

    goto/16 :goto_4

    .line 361
    .end local v8           #cx:I
    .end local v9           #cy:I
    .end local v11           #dx:I
    .end local v12           #dy:I
    .end local v13           #faceRect:Landroid/graphics/Rect;
    .end local v14           #faceWidth:I
    .end local v15           #i:I
    .end local v16           #mMouthRect:Landroid/graphics/Rect;
    .end local v17           #mouthHeight:I
    .end local v18           #mouthWidth:I
    .end local v19           #pointMouth:Landroid/graphics/Point;
    .end local v21           #previewHeight:I
    .end local v22           #previewWidth:I
    .end local v23           #ratioHeight:F
    .end local v24           #ratioWidth:F
    .end local v25           #rh:I
    .end local v26           #rw:I
    .end local v27           #sn:Lcom/android/camera/CameraScreenNail;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    if-nez v2, :cond_28

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v2, v2

    if-lez v2, :cond_28

    .line 363
    const/16 v27, 0x0

    .line 364
    .restart local v27       #sn:Lcom/android/camera/CameraScreenNail;
    const/16 v26, 0x0

    .line 365
    .restart local v26       #rw:I
    const/16 v25, 0x0

    .line 367
    .restart local v25       #rh:I
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v2, :cond_21

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v27

    .line 371
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/CameraScreenNail;->getUncroppedRenderWidth()I

    move-result v26

    .line 372
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/CameraScreenNail;->getUncroppedRenderHeight()I

    move-result v25

    .line 382
    :goto_5
    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v4, 0xb4

    if-eq v2, v4, :cond_1d

    :cond_1c
    move/from16 v0, v26

    move/from16 v1, v25

    if-le v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_1e

    .line 384
    :cond_1d
    move/from16 v28, v26

    .line 385
    .local v28, temp:I
    move/from16 v26, v25

    .line 386
    move/from16 v25, v28

    .line 389
    .end local v28           #temp:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v2, v4, v5, v0, v1}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 393
    const/4 v11, 0x0

    .restart local v11       #dx:I
    const/4 v12, 0x0

    .line 394
    .restart local v12       #dy:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    iget v12, v2, Landroid/graphics/Rect;->top:I

    .line 398
    :cond_1f
    const/16 v2, 0xb4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    if-ne v2, v4, :cond_22

    .line 399
    neg-int v11, v11

    .line 400
    neg-int v12, v12

    .line 428
    :cond_20
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 431
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 434
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v2, v2

    if-ge v15, v2, :cond_27

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v15

    iget v2, v2, Landroid/hardware/Camera$Face;->score:I

    const/16 v4, 0x32

    if-ge v2, v4, :cond_26

    .line 434
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 378
    .end local v11           #dx:I
    .end local v12           #dy:I
    .end local v15           #i:I
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v26

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v25

    goto/16 :goto_5

    .line 401
    .restart local v11       #dx:I
    .restart local v12       #dy:I
    :cond_22
    const/16 v2, 0x5a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    if-ne v2, v4, :cond_24

    .line 402
    const/16 v2, 0x5a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    if-ne v2, v4, :cond_23

    .line 404
    neg-int v0, v11

    move/from16 v28, v0

    .line 405
    .restart local v28       #temp:I
    neg-int v11, v12

    .line 406
    move/from16 v12, v28

    .line 407
    goto :goto_6

    .line 409
    .end local v28           #temp:I
    :cond_23
    move/from16 v28, v11

    .line 410
    .restart local v28       #temp:I
    move v11, v12

    .line 411
    move/from16 v12, v28

    .line 412
    goto :goto_6

    .line 413
    .end local v28           #temp:I
    :cond_24
    const/16 v2, 0x10e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    if-ne v2, v4, :cond_20

    .line 414
    const/16 v2, 0x5a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    if-ne v2, v4, :cond_25

    .line 415
    move/from16 v28, v11

    .line 416
    .restart local v28       #temp:I
    move v11, v12

    .line 417
    move/from16 v12, v28

    .line 418
    goto :goto_6

    .line 420
    .end local v28           #temp:I
    :cond_25
    neg-int v0, v11

    move/from16 v28, v0

    .line 421
    .restart local v28       #temp:I
    neg-int v11, v12

    .line 422
    move/from16 v12, v28

    goto :goto_6

    .line 440
    .end local v28           #temp:I
    .restart local v15       #i:I
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v4, v11

    int-to-float v5, v12

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    const/high16 v4, 0x40c0

    const/high16 v5, 0x40c0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 451
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 454
    .end local v11           #dx:I
    .end local v12           #dy:I
    .end local v15           #i:I
    .end local v25           #rh:I
    .end local v26           #rw:I
    .end local v27           #sn:Lcom/android/camera/CameraScreenNail;
    :cond_28
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 455
    :cond_29
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 203
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 207
    return-void
.end method

.method public setBlockDraw(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    .line 211
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 140
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 142
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 4
    .parameter "faces"

    .prologue
    const/4 v3, 0x1

    .line 106
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_4

    .line 108
    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-eqz v0, :cond_3

    :cond_2
    array-length v0, p1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 110
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;

    .line 111
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    if-nez v0, :cond_0

    .line 112
    iput-boolean v3, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x46

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 118
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    if-eqz v0, :cond_5

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_6

    .line 124
    array-length v0, p1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 129
    :cond_6
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setLockedOrientation(I)V
    .locals 0
    .parameter "lockedOrientation"

    .prologue
    .line 157
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mLockOrientation:I

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 160
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 165
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 146
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 149
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mPreviewRect:Landroid/graphics/Rect;

    .line 221
    return-void
.end method

.method public setRotateOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 151
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mRotateOrientation:I

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 154
    return-void
.end method

.method public setSmileFaces([Lcom/android/camera/EffectSmileShot$YLFace;)V
    .locals 1
    .parameter "myfaces"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mSmileFaces:[Lcom/android/camera/EffectSmileShot$YLFace;

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setSmileMode(Z)V
    .locals 1
    .parameter "isSmile"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->isSmileMode:Z

    .line 214
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->isSmileMode:Z

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mSmileFaces:[Lcom/android/camera/EffectSmileShot$YLFace;

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 218
    return-void
.end method

.method public showFail(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 187
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFailColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 189
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 175
    return-void
.end method

.method public showSuccess(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 180
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusedColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 182
    return-void
.end method
