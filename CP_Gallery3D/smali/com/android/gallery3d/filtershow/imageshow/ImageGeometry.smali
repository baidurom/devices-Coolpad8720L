.class public abstract Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;
.source "ImageGeometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;
    }
.end annotation


# instance fields
.field protected mCenterX:F

.field protected mCenterY:F

.field protected mCurrentX:F

.field protected mCurrentY:F

.field private mHasDrawn:Z

.field private mLocalDisplayBounds:Landroid/graphics/RectF;

.field private mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

.field protected mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

.field protected mTouchCenterX:F

.field protected mTouchCenterY:F

.field private mVisibilityGained:Z

.field protected mXOffset:F

.field protected mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 37
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 52
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 53
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 54
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 55
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 61
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 52
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 53
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 54
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 55
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 61
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 67
    return-void
.end method

.method protected static angleFor(FF)F
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 79
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private calculateLocalScalingFactorAndOffset()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 114
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    if-nez v5, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 117
    .local v2, imageBounds:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 118
    .local v4, imageWidth:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 119
    .local v3, imageHeight:F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 120
    .local v1, displayWidth:F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 122
    .local v0, displayHeight:F
    div-float v5, v1, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    .line 123
    div-float v5, v0, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    .line 124
    sub-float v5, v0, v3

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 125
    sub-float v5, v1, v4

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 126
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    goto :goto_0
.end method

.method protected static drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 21
    .parameter "canvas"
    .parameter "p"
    .parameter "innerBounds"
    .parameter "outerBounds"
    .parameter "rotation"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 512
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 514
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->right:F

    sub-float v19, v4, v7

    .line 515
    .local v19, x:F
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v20, v4, v7

    .line 516
    .local v20, y:F
    mul-float v4, v19, v19

    mul-float v7, v20, v20

    add-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    const/high16 v7, 0x4000

    div-float v18, v4, v7

    .line 517
    .local v18, longest:F
    sub-float v5, p5, v18

    .line 518
    .local v5, minX:F
    add-float v15, p5, v18

    .line 519
    .local v15, maxX:F
    sub-float v6, p6, v18

    .line 520
    .local v6, minY:F
    add-float v11, p6, v18

    .line 521
    .local v11, maxY:F
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 522
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v7, p0

    move v8, v5

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 523
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v7, p0

    move v10, v15

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 525
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move-object/from16 v12, p0

    move v14, v6

    move-object/from16 v17, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 527
    move/from16 v0, p4

    neg-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    .line 529
    return-void
.end method

.method protected static fixAspectRatio(Landroid/graphics/RectF;FF)V
    .locals 9
    .parameter "r"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v7, 0x4000

    .line 259
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 260
    .local v4, scale:F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 261
    .local v0, centX:F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 262
    .local v1, centY:F
    mul-float v5, v4, p1

    div-float v3, v5, v7

    .line 263
    .local v3, hw:F
    mul-float v5, v4, p2

    div-float v2, v5, v7

    .line 264
    .local v2, hh:F
    sub-float v5, v0, v3

    sub-float v6, v1, v2

    add-float v7, v0, v3

    add-float v8, v1, v2

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 266
    return-void
.end method

.method public static getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 32
    .parameter "imageRect"
    .parameter "straightenAngle"

    .prologue
    .line 383
    move/from16 v8, p1

    .line 384
    .local v8, deg:F
    const/16 v26, 0x0

    cmpg-float v26, v8, v26

    if-gez v26, :cond_0

    .line 385
    neg-float v8, v8

    .line 387
    :cond_0
    float-to-double v0, v8

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 388
    .local v3, a:D
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    .line 389
    .local v21, sina:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 391
    .local v6, cosa:D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->width()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 392
    .local v19, rw:D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 393
    .local v16, rh:D
    mul-double v26, v16, v16

    mul-double v28, v19, v21

    mul-double v30, v16, v6

    add-double v28, v28, v30

    div-double v9, v26, v28

    .line 394
    .local v9, h1:D
    mul-double v26, v16, v19

    mul-double v28, v19, v6

    mul-double v30, v16, v21

    add-double v28, v28, v30

    div-double v11, v26, v28

    .line 395
    .local v11, h2:D
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    .line 396
    .local v13, hh:D
    mul-double v26, v13, v19

    div-double v24, v26, v16

    .line 398
    .local v24, ww:D
    sub-double v26, v19, v24

    const-wide/high16 v28, 0x3fe0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v15, v0

    .line 399
    .local v15, left:F
    sub-double v26, v16, v13

    const-wide/high16 v28, 0x3fe0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v23, v0

    .line 400
    .local v23, top:F
    float-to-double v0, v15

    move-wide/from16 v26, v0

    add-double v26, v26, v24

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v18, v0

    .line 401
    .local v18, right:F
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v26, v26, v13

    move-wide/from16 v0, v26

    double-to-float v5, v0

    .line 403
    .local v5, bottom:F
    new-instance v26, Landroid/graphics/RectF;

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v26
.end method

.method private setupLocalDisplayBounds(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 75
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->calculateLocalScalingFactorAndOffset()V

    .line 76
    return-void
.end method

.method protected static snappedAngle(F)I
    .locals 3
    .parameter "angle"

    .prologue
    const/high16 v2, 0x42b4

    .line 83
    rem-float v1, p0, v2

    .line 84
    .local v1, remainder:F
    div-float v2, p0, v2

    float-to-int v0, v2

    .line 85
    .local v0, current:I
    const/high16 v2, -0x3dcc

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 86
    add-int/lit8 v0, v0, -0x1

    .line 90
    :cond_0
    :goto_0
    mul-int/lit8 v2, v0, 0x5a

    return v2

    .line 87
    :cond_1
    const/high16 v2, 0x4234

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected computeScale(FF)F
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 109
    .local v1, imageWidth:F
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 110
    .local v0, imageHeight:F
    invoke-static {v1, v0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v2

    return v2
.end method

.method protected constrainedRotation(F)I
    .locals 3
    .parameter "rotation"

    .prologue
    .line 190
    const/high16 v1, 0x43b4

    rem-float v1, p1, v1

    const/high16 v2, 0x42b4

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 191
    .local v0, r:I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 192
    :cond_0
    mul-int/lit8 v1, v0, 0x5a

    return v1
.end method

.method protected drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 7
    .parameter "canvas"
    .parameter "p"
    .parameter "innerBounds"

    .prologue
    const/4 v2, 0x0

    .line 504
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 505
    .local v3, display:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    .line 507
    return-void
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "canvas"
    .parameter "image"

    .prologue
    .line 549
    return-void
.end method

.method protected drawStraighten(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->straightenBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 444
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 445
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 447
    return-void
.end method

.method protected drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 16
    .parameter "canvas"
    .parameter "photo"
    .parameter "p"

    .prologue
    .line 552
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v13

    .line 554
    .local v13, photoBounds:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 555
    .local v9, cropBounds:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v14

    .line 557
    .local v14, scale:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    const/high16 v6, 0x42b4

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 558
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v14

    .line 561
    :cond_0
    invoke-static {v9, v14}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 562
    .local v4, scaledCrop:Landroid/graphics/RectF;
    invoke-static {v13, v14}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    .line 563
    .local v3, scaledPhoto:Landroid/graphics/RectF;
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    .line 566
    .local v8, displayCenter:[F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v10

    .line 569
    .local v10, m:Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v11

    .line 571
    .local v11, m1:Landroid/graphics/Matrix;
    invoke-virtual {v11, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 572
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 573
    .local v12, path:Landroid/graphics/Path;
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 575
    invoke-virtual {v10, v14, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 577
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 578
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 580
    const/4 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 581
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 582
    const/high16 v5, 0x4000

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 583
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 584
    return-object v4
.end method

.method protected drawTransformedCropped(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 17
    .parameter "canvas"
    .parameter "photo"
    .parameter "p"

    .prologue
    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v14

    .line 589
    .local v14, photoBounds:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 590
    .local v9, cropBounds:Landroid/graphics/RectF;
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v12

    .line 591
    .local v12, imageWidth:F
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v11

    .line 592
    .local v11, imageHeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12, v11, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v15

    .line 594
    .local v15, scale:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    const/high16 v6, 0x42b4

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12, v11, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v15

    .line 598
    :cond_0
    invoke-static {v9, v15}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 599
    .local v4, scaledCrop:Landroid/graphics/RectF;
    invoke-static {v14, v15}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    .line 600
    .local v3, scaledPhoto:Landroid/graphics/RectF;
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    aput v6, v8, v5

    .line 603
    .local v8, displayCenter:[F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v13

    .line 605
    .local v13, m1:Landroid/graphics/Matrix;
    const/4 v5, 0x2

    new-array v10, v5, [F

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v10, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v10, v5

    .line 608
    .local v10, cropCenter:[F
    invoke-virtual {v13, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 609
    invoke-static {v13, v10, v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v13, v5, v6, v7}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 611
    invoke-virtual {v13, v15, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 613
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 615
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getDefaultBackgroundColor()I

    move-result v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 619
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 620
    const/4 v5, 0x0

    aget v5, v8, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v8, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    .line 623
    return-void
.end method

.method protected gainedVisibility()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method protected getCurrentTouchAngle()F
    .locals 8

    .prologue
    .line 94
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 95
    const/4 v6, 0x0

    .line 104
    :goto_0
    return v6

    .line 97
    :cond_0
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    sub-float v2, v6, v7

    .line 98
    .local v2, dX1:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    sub-float v4, v6, v7

    .line 99
    .local v4, dY1:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    sub-float v3, v6, v7

    .line 100
    .local v3, dX2:F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    sub-float v5, v6, v7

    .line 102
    .local v5, dY2:F
    invoke-static {v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->angleFor(FF)F

    move-result v0

    .line 103
    .local v0, angleA:F
    invoke-static {v3, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->angleFor(FF)F

    move-result v1

    .line 104
    .local v1, angleB:F
    sub-float v6, v1, v0

    const/high16 v7, 0x43b4

    rem-float/2addr v6, v7

    goto :goto_0
.end method

.method protected getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;
    .locals 11
    .parameter "r"
    .parameter "onlyRotate"

    .prologue
    const/high16 v10, 0x4000

    .line 407
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 408
    .local v7, pbounds:Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v0, v6, v8, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 410
    .local v3, scale:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v0

    const/high16 v6, 0x42b4

    div-float/2addr v0, v6

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v0, v6, v8, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 413
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 414
    .local v5, yoff:F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 415
    .local v4, xoff:F
    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v10

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float v1, v0, v6

    .line 416
    .local v1, w:F
    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v10

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float v2, v0, v6

    .line 417
    .local v2, h:F
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildGeometryMatrix(FFFFFZ)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalCropBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalDisplayBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method protected getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalGeoFlipMatrix(FF)Landroid/graphics/Matrix;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalPhotoBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalRotation()F
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v0

    return v0
.end method

.method protected getLocalScale()F
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method protected getLocalStraighten()F
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v0

    return v0
.end method

.method protected getLocalValue()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    const-string v0, "Geometry"

    return-object v0
.end method

.method protected getTotalLocalRotation()F
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected lostVisibility()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getDirtyGeometryFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->syncLocalToMasterGeometry()V

    .line 535
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->clearDirtyGeometryFlag()V

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->requestFilteredImages()V

    .line 538
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getMaster()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFiltersOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 539
    .local v0, image:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 540
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 544
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 303
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 304
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setupLocalDisplayBounds(Landroid/graphics/RectF;)V

    .line 305
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 321
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setNoAction()V

    .line 323
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/PanelController;->onNewValue(I)V

    .line 326
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 327
    const/4 v0, 0x1

    return v0

    .line 311
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    goto :goto_0

    .line 314
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 315
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    goto :goto_0

    .line 318
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 278
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 279
    if-nez p2, :cond_0

    .line 280
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->syncLocalToMasterGeometry()V

    .line 282
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 283
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->gainedVisibility()V

    .line 291
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    if-ne v0, v1, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->lostVisibility()V

    .line 288
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 289
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->resetParameter()V

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalRotation(F)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalStraighten(F)V

    .line 134
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 135
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalFlip(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 138
    return-void
.end method

.method public saveAndSetPreset()V
    .locals 4

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 367
    .local v1, lastHistoryItem:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 369
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 379
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 380
    return-void

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 373
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 375
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsFx(Z)V

    .line 376
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    goto :goto_0
.end method

.method protected setActionDown(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 335
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    .line 336
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    .line 337
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    .line 338
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    .line 339
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->DOWN:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 340
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 343
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    .line 344
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    .line 345
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->MOVE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 346
    return-void
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->UP:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 350
    return-void
.end method

.method protected setLocalCropBounds(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 207
    return-void
.end method

.method protected setLocalFlip(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setFlipType(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 215
    return-void
.end method

.method protected setLocalRotation(F)V
    .locals 1
    .parameter "r"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setRotation(F)V

    .line 183
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 184
    return-void
.end method

.method protected setLocalScale(F)V
    .locals 1
    .parameter "s"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setScaleFactor(F)V

    .line 172
    return-void
.end method

.method protected setLocalStraighten(F)V
    .locals 1
    .parameter "r"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setStraightenRotation(F)V

    .line 201
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 202
    return-void
.end method

.method protected setNoAction()V
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 354
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method protected straightenBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 437
    .local v0, bounds:Landroid/graphics/RectF;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;

    move-result-object v1

    .line 438
    .local v1, m:Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 439
    return-object v0
.end method

.method protected syncLocalToMasterGeometry()V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getMaster()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getGeometry()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 143
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->calculateLocalScalingFactorAndOffset()V

    .line 144
    return-void
.end method

.method protected unrotatedCropBounds()Landroid/graphics/RectF;
    .locals 10

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 451
    .local v7, bounds:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 452
    .local v9, pbounds:Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v3

    .line 453
    .local v3, scale:F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 454
    .local v5, yoff:F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 455
    .local v4, xoff:F
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildGeometryMatrix(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v8

    .line 457
    .local v8, m:Landroid/graphics/Matrix;
    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 458
    return-object v7
.end method

.method protected updateScale()V
    .locals 4

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 177
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v1

    .line 178
    .local v1, zoom:F
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalScale(F)V

    .line 179
    return-void
.end method
