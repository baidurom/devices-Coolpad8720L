.class public Lcom/android/camera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# instance fields
.field i:I

.field private mAnimOrientation:I

.field private mAnimStartTime:J

.field private mAnimType:I

.field private mCenterDelta:F

.field private mCenterX:F

.field private mCenterY:F

.field private mDelta:F

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mGap:F

.field private mHalfGap:F

.field private mRect:Landroid/graphics/Rect;

.field private final mSlideInterpolator:Landroid/view/animation/Interpolator;

.field private mX:F

.field private mY:F

.field private final mZoomInInterpolator:Landroid/view/animation/Interpolator;

.field private final mZoomOutInterpolator:Landroid/view/animation/Interpolator;

.field timeDiff:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    .line 69
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mZoomOutInterpolator:Landroid/view/animation/Interpolator;

    .line 70
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mZoomInInterpolator:Landroid/view/animation/Interpolator;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mRect:Landroid/graphics/Rect;

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->timeDiff:J

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->i:I

    .line 89
    return-void
.end method

.method private calculateScale(F)F
    .locals 6
    .parameter "fraction"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v3, 0x3f00

    const v4, 0x3e4ccccd

    .line 385
    const/high16 v0, 0x3f80

    .line 386
    .local v0, value:F
    cmpg-float v1, p1, v3

    if-gtz v1, :cond_0

    .line 388
    const/high16 v1, 0x3f80

    iget-object v2, p0, Lcom/android/camera/CaptureAnimManager;->mZoomOutInterpolator:Landroid/view/animation/Interpolator;

    mul-float v3, p1, v5

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v4

    sub-float v0, v1, v2

    .line 395
    :goto_0
    return v0

    .line 392
    :cond_0
    const v1, 0x3f4ccccd

    iget-object v2, p0, Lcom/android/camera/CaptureAnimManager;->mZoomInInterpolator:Landroid/view/animation/Interpolator;

    sub-float v3, p1, v3

    mul-float/2addr v3, v5

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v4

    add-float v0, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public animateBoltting()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 117
    return-void
.end method

.method public animateFlash()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 107
    return-void
.end method

.method public animateSlide()V
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    goto :goto_0
.end method

.method public animateWave()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 110
    return-void
.end method

.method public animateZoom(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "rect"

    .prologue
    .line 120
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 122
    iget-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 123
    iget-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 124
    iget-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 125
    iget-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 126
    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 2
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 191
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 192
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/CaptureAnimManager;->drawWaveAnimator(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v0

    .line 198
    :goto_0
    return v0

    .line 193
    :cond_0
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/CaptureAnimManager;->drawAnimationZoom(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v0

    goto :goto_0

    .line 195
    :cond_1
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    if-nez v0, :cond_2

    .line 196
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/CaptureAnimManager;->drawAnimationBoltting(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v0

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/CaptureAnimManager;->drawAnimationSlidFlash(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v0

    goto :goto_0
.end method

.method public drawAnimationBoltting(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 12
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v10, v0, v2

    .line 307
    .local v10, timeDiff:J
    new-instance v9, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v9}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    .line 309
    .local v9, p:Lcom/android/gallery3d/ui/GLPaint;
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc8

    cmp-long v0, v10, v0

    if-lez v0, :cond_0

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->i:I

    .line 311
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    .line 313
    :cond_0
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v2, v0

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v3, v0

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v5, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 314
    const-wide/16 v0, 0xc8

    cmp-long v0, v10, v0

    if-gez v0, :cond_1

    .line 315
    const v0, 0x3e99999a

    long-to-float v1, v10

    mul-float/2addr v0, v1

    const/high16 v1, 0x4348

    div-float v8, v0, v1

    .line 316
    .local v8, f:F
    const/high16 v0, 0x437f

    mul-float/2addr v0, v8

    float-to-int v0, v0

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 317
    .local v7, color:I
    const/16 v0, 0xc8

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 318
    .local v6, alphacolor:I
    invoke-virtual {v9, v6}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 319
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->i:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 321
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    const/high16 v1, 0x40a0

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    const/high16 v2, 0x40a0

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, v9

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 322
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->i:I

    .line 324
    .end local v6           #alphacolor:I
    .end local v7           #color:I
    .end local v8           #f:F
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public drawAnimationSlidFlash(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 21
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v17, v2, v4

    .line 261
    .local v17, timeDiff:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x190

    cmp-long v2, v17, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 298
    :goto_0
    return v2

    .line 262
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    if-nez v2, :cond_1

    const-wide/16 v2, 0x320

    cmp-long v2, v17, v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 264
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 265
    .local v14, animStep:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    if-nez v2, :cond_2

    .line 266
    const-wide/16 v2, 0x190

    cmp-long v2, v17, v2

    if-gez v2, :cond_4

    const/4 v14, 0x2

    .line 267
    :goto_1
    const/4 v2, 0x1

    if-ne v14, v2, :cond_2

    .line 268
    const-wide/16 v2, 0x190

    sub-long v17, v17, v2

    .line 272
    :cond_2
    const/4 v2, 0x2

    if-ne v14, v2, :cond_5

    .line 273
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 274
    const-wide/16 v2, 0xc8

    cmp-long v2, v17, v2

    if-gez v2, :cond_3

    .line 275
    const v2, 0x3e99999a

    const v3, 0x3e99999a

    move-wide/from16 v0, v17

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    sub-float v15, v2, v3

    .line 276
    .local v15, f:F
    const/high16 v2, 0x437f

    mul-float/2addr v2, v15

    float-to-int v2, v2

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 277
    .local v7, color:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 298
    .end local v7           #color:I
    .end local v15           #f:F
    :cond_3
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 266
    :cond_4
    const/4 v14, 0x1

    goto :goto_1

    .line 279
    :cond_5
    const/4 v2, 0x1

    if-ne v14, v2, :cond_8

    .line 280
    move-wide/from16 v0, v17

    long-to-float v2, v0

    const/high16 v3, 0x43c8

    div-float v16, v2, v3

    .line 281
    .local v16, fraction:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    move/from16 v19, v0

    .line 282
    .local v19, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    move/from16 v20, v0

    .line 283
    .local v20, y:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_7

    .line 284
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v19, v19, v2

    .line 290
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 294
    move/from16 v0, v19

    float-to-int v10, v0

    move/from16 v0, v20

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v8, p3

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_2

    .line 286
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v20, v20, v2

    goto :goto_3

    .line 296
    .end local v16           #fraction:F
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public drawAnimationZoom(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 19
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v13, v1, v3

    .line 206
    .local v13, timeDiff:J
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0x190

    cmp-long v1, v13, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 253
    :goto_0
    return v1

    .line 208
    :cond_0
    long-to-float v1, v13

    const/high16 v2, 0x43c8

    div-float v10, v1, v2

    .line 209
    .local v10, fraction:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CaptureAnimManager;->mZoomOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    .line 212
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v4, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 215
    const/4 v15, 0x0

    .local v15, x1:F
    const/16 v17, 0x0

    .line 216
    .local v17, y1:F
    const/16 v16, 0x0

    .local v16, x2:F
    const/16 v18, 0x0

    .line 217
    .local v18, y2:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CaptureAnimManager;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CaptureAnimManager;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v12, v1

    .line 218
    .local v12, rect_width:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CaptureAnimManager;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CaptureAnimManager;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v11, v1

    .line 219
    .local v11, rect_height:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    if-nez v1, :cond_1

    .line 220
    const/4 v1, 0x0

    mul-float v15, v1, v10

    .line 221
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v1, v1

    mul-float v17, v1, v10

    .line 222
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    sub-float v16, v1, v2

    .line 223
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v0, v1

    move/from16 v18, v0

    .line 231
    :goto_1
    const/high16 v7, 0x42b4

    .line 232
    .local v7, angle:F
    const/high16 v1, 0x4270

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    add-float v8, v1, v2

    .line 233
    .local v8, cx:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    add-int/lit8 v1, v1, -0x3c

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    add-float v9, v1, v2

    .line 234
    .local v9, cy:F
    const/high16 v1, 0x43b4

    mul-float v2, v7, v10

    sub-float v7, v1, v2

    .line 236
    const-string v1, "CAM_Capture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawAnimationZoom timeDiff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fraction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 238
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 239
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v10

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v10

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v10

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 240
    neg-float v1, v8

    neg-float v2, v9

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 242
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v4, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 243
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 253
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 225
    .end local v7           #angle:F
    .end local v8           #cx:F
    .end local v9           #cy:F
    :cond_1
    const/4 v1, 0x0

    mul-float v15, v1, v10

    .line 226
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v1, v1

    mul-float v17, v1, v10

    .line 227
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    sub-float v16, v1, v2

    .line 228
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v0, v1

    move/from16 v18, v0

    goto/16 :goto_1
.end method

.method drawWaveAnimator(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 21
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 330
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v18, v2, v6

    .line 331
    .local v18, timeDiff:J
    move-wide/from16 v0, v18

    long-to-float v2, v0

    const/high16 v3, 0x43fa

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 380
    :goto_0
    return v2

    .line 332
    :cond_0
    move-wide/from16 v0, v18

    long-to-float v2, v0

    const/high16 v3, 0x43fa

    div-float v15, v2, v3

    .line 333
    .local v15, fraction:F
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/CaptureAnimManager;->calculateScale(F)F

    move-result v17

    .line 334
    .local v17, scale:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    .line 335
    .local v13, centerX:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    .line 336
    .local v14, centerY:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_2

    .line 337
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v15}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v3, v6

    add-float v13, v2, v3

    .line 342
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v2, v2

    mul-float v16, v2, v17

    .line 343
    .local v16, height:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v2, v2

    mul-float v20, v2, v17

    .line 344
    .local v20, width:F
    float-to-int v4, v13

    .line 345
    .local v4, previewX:I
    float-to-int v5, v14

    .line 346
    .local v5, previewY:I
    float-to-int v8, v13

    .line 347
    .local v8, reviewX:I
    float-to-int v9, v14

    .line 348
    .local v9, reviewY:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 374
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v12

    .line 375
    .local v12, alpha:F
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 376
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 377
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 379
    move/from16 v0, v20

    float-to-int v10, v0

    move/from16 v0, v16

    float-to-int v11, v0

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 380
    const/4 v2, 0x1

    goto :goto_0

    .line 339
    .end local v4           #previewX:I
    .end local v5           #previewY:I
    .end local v8           #reviewX:I
    .end local v9           #reviewY:I
    .end local v12           #alpha:F
    .end local v16           #height:F
    .end local v20           #width:F
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v15}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v3, v6

    add-float v14, v2, v3

    goto :goto_1

    .line 350
    .restart local v4       #previewX:I
    .restart local v5       #previewY:I
    .restart local v8       #reviewX:I
    .restart local v9       #reviewY:I
    .restart local v16       #height:F
    .restart local v20       #width:F
    :sswitch_0
    sub-float v2, v13, v20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 351
    const/high16 v2, 0x4000

    div-float v2, v16, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 352
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    add-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 353
    move v9, v5

    .line 354
    goto :goto_2

    .line 356
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    add-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 357
    const/high16 v2, 0x4000

    div-float v2, v20, v2

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 358
    sub-float v2, v14, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 359
    move v8, v4

    .line 360
    goto/16 :goto_2

    .line 362
    :sswitch_2
    add-float v2, v13, v20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v3, v3, v17

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 363
    const/high16 v2, 0x4000

    div-float v2, v16, v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 364
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 365
    move v9, v5

    .line 366
    goto/16 :goto_2

    .line 368
    :sswitch_3
    sub-float v2, v14, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 369
    const/high16 v2, 0x4000

    div-float v2, v20, v2

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 370
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    mul-float v2, v2, v17

    add-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 371
    move v8, v4

    goto/16 :goto_2

    .line 348
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "displayRotation"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    .line 95
    return-void
.end method

.method public startAnimation(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const v4, 0x3f8ccccd

    const v3, 0x3dcccccd

    const/high16 v2, 0x4000

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    .line 131
    iput p3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    .line 132
    iput p4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    .line 133
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    .line 134
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    .line 135
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 151
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    .line 153
    iput p3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    .line 154
    iput p4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    .line 155
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v0, :sswitch_data_1

    .line 186
    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->timeDiff:J

    .line 187
    return-void

    .line 137
    :sswitch_0
    int-to-float v0, p3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 140
    :sswitch_1
    neg-int v0, p4

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 143
    :sswitch_2
    neg-int v0, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 146
    :sswitch_3
    int-to-float v0, p4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mDelta:F

    goto :goto_0

    .line 157
    :sswitch_4
    int-to-float v0, p3

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 158
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 159
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    .line 160
    int-to-float v0, p3

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 161
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    goto :goto_1

    .line 164
    :sswitch_5
    int-to-float v0, p4

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 165
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 166
    add-int v0, p2, p4

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    .line 167
    neg-int v0, p4

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 168
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    goto :goto_1

    .line 171
    :sswitch_6
    int-to-float v0, p3

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 172
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 173
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    .line 174
    neg-int v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 175
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    goto :goto_1

    .line 178
    :sswitch_7
    int-to-float v0, p4

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    .line 179
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    .line 180
    int-to-float v0, p2

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterY:F

    .line 181
    int-to-float v0, p4

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterDelta:F

    .line 182
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mCenterX:F

    goto/16 :goto_1

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 155
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method
