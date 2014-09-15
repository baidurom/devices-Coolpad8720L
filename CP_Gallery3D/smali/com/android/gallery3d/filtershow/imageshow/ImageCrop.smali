.class public Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.source "ImageCrop.java"


# static fields
.field private static final gPaint:Landroid/graphics/Paint;

.field private static mTouchTolerance:I


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final cropIndicator:Landroid/graphics/drawable/Drawable;

.field private final indicatorSize:I

.field private mAspectHeight:F

.field private mAspectWidth:F

.field private final mBorderColor:I

.field private mFirstDraw:Z

.field private mFixAspectRatio:Z

.field private mLastRot:F

.field private movingEdges:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x2d

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/high16 v3, 0x3f80

    const/16 v2, 0xff

    .line 68
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 51
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 52
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 61
    const/16 v1, 0x80

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    .line 71
    const v1, 0x7f0d00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, 0x3f80

    const/16 v2, 0xff

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 51
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 52
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 61
    const/16 v1, 0x80

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    .line 82
    const v1, 0x7f0d00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    return-void
.end method

.method private bitCycleLeft(III)I
    .locals 6
    .parameter "x"
    .parameter "times"
    .parameter "d"

    .prologue
    .line 671
    const/4 v5, 0x1

    shl-int/2addr v5, p3

    add-int/lit8 v2, v5, -0x1

    .line 672
    .local v2, mask:I
    and-int v3, p1, v2

    .line 673
    .local v3, mout:I
    rem-int/2addr p2, p3

    .line 674
    sub-int v5, p3, p2

    shr-int v0, v3, v5

    .line 675
    .local v0, hi:I
    shl-int v5, v3, p2

    and-int v1, v5, v2

    .line 676
    .local v1, low:I
    xor-int/lit8 v5, v2, -0x1

    and-int v4, p1, v5

    .line 677
    .local v4, ret:I
    or-int/2addr v4, v1

    .line 678
    or-int/2addr v4, v0

    .line 679
    return v4
.end method

.method private cropSetup()V
    .locals 4

    .prologue
    .line 570
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v2, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getRotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 572
    .local v0, cb:Landroid/graphics/RectF;
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixAspectRatio(Landroid/graphics/RectF;FF)V

    .line 573
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUnrotatedCropBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 574
    .local v1, cb0:Landroid/graphics/RectF;
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    .line 578
    .end local v0           #cb:Landroid/graphics/RectF;
    .end local v1           #cb0:Landroid/graphics/RectF;
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private detectMovingEdges(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v9, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v1

    .line 359
    .local v1, cropped:Landroid/graphics/RectF;
    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 362
    iget v7, v1, Landroid/graphics/RectF;->left:F

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 363
    .local v2, left:F
    iget v7, v1, Landroid/graphics/RectF;->right:F

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 364
    .local v3, right:F
    sget v7, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_4

    cmpg-float v7, v2, v3

    if-gez v7, :cond_4

    .line 365
    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 372
    :cond_0
    :goto_0
    iget v7, v1, Landroid/graphics/RectF;->top:F

    sub-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 373
    .local v4, top:F
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 374
    .local v0, bottom:F
    sget v7, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_5

    move v7, v5

    :goto_1
    cmpg-float v8, v4, v0

    if-gez v8, :cond_6

    :goto_2
    and-int/2addr v5, v7

    if-eqz v5, :cond_7

    .line 375
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 381
    :cond_1
    :goto_3
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-nez v5, :cond_2

    .line 382
    iput v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 384
    :cond_2
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-eq v5, v9, :cond_3

    .line 385
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    invoke-direct {p0, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixEdgeToCorner(I)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 387
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 388
    return-void

    .line 367
    .end local v0           #bottom:F
    .end local v4           #top:F
    :cond_4
    sget v7, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_0

    .line 368
    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    goto :goto_0

    .restart local v0       #bottom:F
    .restart local v4       #top:F
    :cond_5
    move v7, v6

    .line 374
    goto :goto_1

    :cond_6
    move v5, v6

    goto :goto_2

    .line 377
    :cond_7
    sget v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_1

    .line 378
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    goto :goto_3
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 4
    .parameter "canvas"
    .parameter "indicator"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 543
    float-to-int v2, p3

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 544
    .local v0, left:I
    float-to-int v2, p4

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 545
    .local v1, top:I
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 546
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 547
    return-void
.end method

.method private drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 13
    .parameter "canvas"
    .parameter "bounds"
    .parameter "p"

    .prologue
    .line 611
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x4040

    div-float v10, v0, v2

    .line 612
    .local v10, stepX:F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v2, 0x4040

    div-float v11, v0, v2

    .line 613
    .local v11, stepY:F
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v10

    .line 614
    .local v1, x:F
    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v12, v0, v11

    .line 615
    .local v12, y:F
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_0

    .line 616
    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move v3, v1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 617
    add-float/2addr v1, v10

    .line 615
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 619
    :cond_0
    const/4 v9, 0x0

    .local v9, j:I
    move v4, v12

    .end local v12           #y:F
    .local v4, y:F
    :goto_1
    const/4 v0, 0x2

    if-ge v9, v0, :cond_1

    .line 620
    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    move-object v2, p1

    move v6, v4

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 621
    add-float/2addr v4, v11

    .line 619
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 623
    :cond_1
    return-void
.end method

.method private fixEdgeToCorner(I)I
    .locals 1
    .parameter "moving_edges"

    .prologue
    .line 391
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 392
    or-int/lit8 p1, p1, 0x2

    .line 394
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 395
    or-int/lit8 p1, p1, 0x1

    .line 397
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 398
    or-int/lit8 p1, p1, 0x8

    .line 400
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 401
    or-int/lit8 p1, p1, 0x4

    .line 403
    :cond_3
    return p1
.end method

.method private fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;
    .locals 6
    .parameter "r"
    .parameter "moving_corner"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 409
    .local v0, newCrop:Landroid/graphics/RectF;
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    .line 410
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 422
    .restart local v0       #newCrop:Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-object v0

    .line 412
    :cond_1
    const/16 v1, 0x9

    if-ne p2, v1, :cond_2

    .line 413
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0       #newCrop:Landroid/graphics/RectF;
    goto :goto_0

    .line 415
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 416
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0       #newCrop:Landroid/graphics/RectF;
    goto :goto_0

    .line 418
    :cond_3
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 419
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #newCrop:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0       #newCrop:Landroid/graphics/RectF;
    goto :goto_0
.end method

.method private getRotatedCropBounds()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 251
    .local v0, bounds:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 252
    .local v1, crop:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 254
    .local v2, m:Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 257
    const/4 v1, 0x0

    .line 261
    .end local v1           #crop:Landroid/graphics/RectF;
    :goto_0
    return-object v1

    .line 259
    .restart local v1       #crop:Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method private getRotatedStraightenBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    .line 290
    .local v1, straightenBounds:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 292
    .local v0, m:Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 299
    .end local v1           #straightenBounds:Landroid/graphics/RectF;
    :goto_0
    return-object v1

    .line 297
    .restart local v1       #straightenBounds:Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method private getScaledMinWidthHeight()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 201
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 202
    .local v0, disp:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v3

    div-float v1, v2, v3

    .line 204
    .local v1, scaled:F
    return v1
.end method

.method private getUnrotatedCropBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6
    .parameter "cropBounds"

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 267
    .local v1, m:Landroid/graphics/Matrix;
    if-nez v1, :cond_1

    move-object v0, v3

    .line 284
    :cond_0
    :goto_0
    return-object v0

    .line 272
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 273
    .local v2, m0:Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v3

    .line 276
    goto :goto_0

    .line 278
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 279
    .local v0, crop:Landroid/graphics/RectF;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 282
    goto :goto_0
.end method

.method private moveEdges(FF)V
    .locals 26
    .parameter "dX"
    .parameter "dY"

    .prologue
    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getRotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 427
    .local v7, cropped:Landroid/graphics/RectF;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getScaledMinWidthHeight()F

    move-result v17

    .line 428
    .local v17, minWidthHeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v19

    .line 429
    .local v19, scale:F
    div-float v8, p1, v19

    .line 430
    .local v8, deltaX:F
    div-float v9, p2, v19

    .line 431
    .local v9, deltaY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v20, v0

    .line 432
    .local v20, select:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    const/16 v23, 0x10

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 443
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 444
    or-int/lit8 v20, v20, 0x2

    .line 446
    :cond_0
    const/16 v23, 0x2

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 447
    or-int/lit8 v20, v20, 0x1

    .line 449
    :cond_1
    const/16 v23, 0x4

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 450
    or-int/lit8 v20, v20, 0x8

    .line 452
    :cond_2
    const/16 v23, 0x8

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 453
    or-int/lit8 v20, v20, 0x4

    .line 457
    :cond_3
    const/16 v23, 0x10

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getRotatedStraightenBounds()Landroid/graphics/RectF;

    move-result-object v22

    .line 460
    .local v22, straight:Landroid/graphics/RectF;
    const/16 v23, 0x0

    cmpl-float v23, v8, v23

    if-lez v23, :cond_8

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 462
    :goto_0
    const/16 v23, 0x0

    cmpl-float v23, v9, v23

    if-lez v23, :cond_9

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 464
    :goto_1
    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 528
    .end local v22           #straight:Landroid/graphics/RectF;
    :cond_4
    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v15

    .line 530
    .local v15, m:Landroid/graphics/Matrix;
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 531
    .local v16, m0:Landroid/graphics/Matrix;
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 535
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 539
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    .line 540
    :cond_7
    :goto_3
    return-void

    .line 460
    .end local v15           #m:Landroid/graphics/Matrix;
    .end local v16           #m0:Landroid/graphics/Matrix;
    .restart local v22       #straight:Landroid/graphics/RectF;
    :cond_8
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    .line 462
    :cond_9
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_1

    .line 466
    .end local v22           #straight:Landroid/graphics/RectF;
    :cond_a
    const/4 v11, 0x0

    .line 467
    .local v11, dx:F
    const/4 v12, 0x0

    .line 469
    .local v12, dy:F
    and-int/lit8 v23, v20, 0x1

    if-eqz v23, :cond_b

    .line 470
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v8

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 472
    :cond_b
    and-int/lit8 v23, v20, 0x2

    if-eqz v23, :cond_c

    .line 473
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v9

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v12, v23, v24

    .line 475
    :cond_c
    and-int/lit8 v23, v20, 0x4

    if-eqz v23, :cond_d

    .line 476
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    add-float v23, v23, v8

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    add-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 479
    :cond_d
    and-int/lit8 v23, v20, 0x8

    if-eqz v23, :cond_e

    .line 480
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    add-float v23, v23, v9

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    add-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v12, v23, v24

    .line 484
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v6

    .line 486
    .local v6, crop:Landroid/graphics/RectF;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v13, v0, [F

    const/16 v23, 0x0

    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    aput v24, v13, v23

    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    aput v24, v13, v23

    .line 487
    .local v13, l1:[F
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v14, v0, [F

    const/16 v23, 0x0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    aput v24, v14, v23

    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    aput v24, v14, v23

    .line 488
    .local v14, l2:[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v23, v0

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 489
    :cond_f
    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    aput v24, v13, v23

    .line 490
    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    aput v24, v14, v23

    .line 492
    :cond_10
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v4, v0, [F

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, v13, v24

    const/16 v25, 0x0

    aget v25, v14, v25

    sub-float v24, v24, v25

    aput v24, v4, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, v13, v24

    const/16 v25, 0x1

    aget v25, v14, v25

    sub-float v24, v24, v25

    aput v24, v4, v23

    .line 493
    .local v4, b:[F
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v10, v0, [F

    const/16 v23, 0x0

    aput v11, v10, v23

    const/16 v23, 0x1

    aput v12, v10, v23

    .line 494
    .local v10, disp:[F
    invoke-static {v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->normalize([F)[F

    move-result-object v5

    .line 495
    .local v5, bUnit:[F
    invoke-static {v10, v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scalarProjection([F[F)F

    move-result v21

    .line 496
    .local v21, sp:F
    const/16 v23, 0x0

    aget v23, v5, v23

    mul-float v11, v21, v23

    .line 497
    const/16 v23, 0x1

    aget v23, v5, v23

    mul-float v12, v21, v23

    .line 498
    mul-float v23, v11, v19

    mul-float v24, v12, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;

    move-result-object v18

    .line 499
    .local v18, newCrop:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v15

    .line 500
    .restart local v15       #m:Landroid/graphics/Matrix;
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 501
    .restart local v16       #m0:Landroid/graphics/Matrix;
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 506
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 511
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    goto/16 :goto_3

    .line 514
    .end local v4           #b:[F
    .end local v5           #bUnit:[F
    .end local v6           #crop:Landroid/graphics/RectF;
    .end local v10           #disp:[F
    .end local v13           #l1:[F
    .end local v14           #l2:[F
    .end local v15           #m:Landroid/graphics/Matrix;
    .end local v16           #m0:Landroid/graphics/Matrix;
    .end local v18           #newCrop:Landroid/graphics/RectF;
    .end local v21           #sp:F
    :cond_11
    and-int/lit8 v23, v20, 0x1

    if-eqz v23, :cond_12

    .line 515
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 517
    :cond_12
    and-int/lit8 v23, v20, 0x2

    if-eqz v23, :cond_13

    .line 518
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v12

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 520
    :cond_13
    and-int/lit8 v23, v20, 0x4

    if-eqz v23, :cond_14

    .line 521
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 523
    :cond_14
    and-int/lit8 v23, v20, 0x8

    if-eqz v23, :cond_4

    .line 524
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    add-float v23, v23, v12

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2
.end method

.method public static setTouchTolerance(I)V
    .locals 0
    .parameter "tolerance"

    .prologue
    .line 101
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 102
    return-void
.end method

.method private swapAspect()V
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 96
    .local v0, temp:F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 97
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 98
    return-void
.end method


# virtual methods
.method public apply(FF)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 167
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 168
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 169
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 171
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 172
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 174
    return-void
.end method

.method public applyClear()V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 193
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 195
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 196
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 198
    return-void
.end method

.method public applyOriginal()V
    .locals 5

    .prologue
    .line 177
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 178
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 179
    .local v1, photobounds:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 180
    .local v3, w:F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 181
    .local v0, h:F
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 182
    .local v2, scale:F
    div-float v4, v3, v2

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 183
    div-float v4, v0, v2

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 184
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v4

    invoke-static {v1, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 186
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 187
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 189
    return-void
.end method

.method protected decoder(IF)I
    .locals 3
    .parameter "movingEdges"
    .parameter "rotation"

    .prologue
    const/4 v2, 0x4

    .line 683
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->constrainedRotation(F)I

    move-result v0

    .line 684
    .local v0, rot:I
    sparse-switch v0, :sswitch_data_0

    .line 692
    .end local p1
    :goto_0
    return p1

    .line 686
    .restart local p1
    :sswitch_0
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 688
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 690
    :sswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 684
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "canvas"
    .parameter "image"

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x4040

    const/16 v7, 0xff

    const/4 v2, 0x1

    .line 628
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 629
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 630
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 631
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 633
    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    if-eqz v6, :cond_0

    .line 634
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 635
    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v3

    .line 639
    .local v3, rotation:F
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v0

    .line 640
    .local v0, crop:Landroid/graphics/RectF;
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 642
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 643
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 645
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 646
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 647
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 648
    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawStraighten(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 650
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    invoke-virtual {p0, v6, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->decoder(IF)I

    move-result v1

    .line 651
    .local v1, decoded_moving:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 652
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    invoke-virtual {p1, v3, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 653
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->unrotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v4

    .line 654
    .local v4, scaledCrop:Landroid/graphics/RectF;
    if-nez v1, :cond_9

    .line 655
    .local v2, notMoving:Z
    :goto_0
    and-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_1

    if-eqz v2, :cond_2

    .line 656
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 658
    :cond_2
    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_3

    if-eqz v2, :cond_4

    .line 659
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 661
    :cond_4
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_5

    if-eqz v2, :cond_6

    .line 662
    :cond_5
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 664
    :cond_6
    and-int/lit8 v5, v1, 0x4

    if-nez v5, :cond_7

    if-eqz v2, :cond_8

    .line 665
    :cond_7
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 667
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 668
    return-void

    .end local v2           #notMoving:Z
    :cond_9
    move v2, v5

    .line 654
    goto :goto_0
.end method

.method protected gainedVisibility()V
    .locals 3

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v0

    .line 592
    .local v0, rot:F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    sub-float v1, v0, v1

    const/high16 v2, 0x42b4

    div-float/2addr v1, v2

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->swapAspect()V

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 596
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 597
    return-void
.end method

.method protected getCropBoundDisplayMatrix()Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 218
    .local v0, m:Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/graphics/Matrix;

    .end local v0           #m:Landroid/graphics/Matrix;
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 223
    .restart local v0       #m:Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v1

    .line 224
    .local v1, zoom:F
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 225
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 226
    return-object v0
.end method

.method protected getCropBoundsDisplayed()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 231
    .local v0, bounds:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 232
    .local v1, crop:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 234
    .local v2, m:Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 237
    new-instance v2, Landroid/graphics/Matrix;

    .end local v2           #m:Landroid/graphics/Matrix;
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 241
    .restart local v2       #m:Landroid/graphics/Matrix;
    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    .end local v2           #m:Landroid/graphics/Matrix;
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 242
    .restart local v2       #m:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v3

    .line 243
    .local v3, zoom:F
    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 244
    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 245
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 246
    return-object v1

    .line 239
    .end local v3           #zoom:F
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method protected getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 3
    .parameter "rotation"
    .parameter "localImage"

    .prologue
    .line 208
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalGeoFlipMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 209
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 213
    .end local v0           #m:Landroid/graphics/Matrix;
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imageLoaded()V
    .locals 0

    .prologue
    .line 582
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->imageLoaded()V

    .line 583
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->syncLocalToMasterGeometry()V

    .line 584
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyOriginal()V

    .line 585
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 586
    return-void
.end method

.method protected lostVisibility()V
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 608
    return-void
.end method

.method public resetParameter()V
    .locals 0

    .prologue
    .line 601
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->resetParameter()V

    .line 602
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 603
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 551
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->detectMovingEdges(FF)V

    .line 553
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 563
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-eqz v0, :cond_0

    .line 564
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    sub-float v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->moveEdges(FF)V

    .line 566
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 567
    return-void
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 557
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 559
    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 14
    .parameter "bounds"

    .prologue
    .line 308
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 309
    .local v2, cbounds:Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getScaledMinWidthHeight()F

    move-result v3

    .line 310
    .local v3, minWidthHeight:F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 311
    .local v1, aw:F
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 312
    .local v0, ah:F
    iget-boolean v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_0

    .line 313
    mul-float v10, v1, v0

    div-float/2addr v3, v10

    .line 314
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v10

    const/high16 v11, 0x42b4

    div-float/2addr v10, v11

    float-to-int v7, v10

    .line 315
    .local v7, r:I
    rem-int/lit8 v10, v7, 0x2

    if-eqz v10, :cond_0

    .line 316
    move v9, v1

    .line 317
    .local v9, temp:F
    move v1, v0

    .line 318
    move v0, v9

    .line 322
    .end local v7           #r:I
    .end local v9           #temp:F
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 323
    .local v5, newWidth:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 324
    .local v4, newHeight:F
    iget-boolean v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_6

    .line 325
    mul-float v10, v3, v1

    cmpg-float v10, v5, v10

    if-ltz v10, :cond_1

    mul-float v10, v3, v0

    cmpg-float v10, v4, v10

    if-gez v10, :cond_2

    .line 326
    :cond_1
    mul-float v5, v3, v1

    .line 327
    mul-float v4, v3, v0

    .line 337
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v6

    .line 338
    .local v6, pbounds:Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_3

    .line 339
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 341
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_4

    .line 342
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 345
    :cond_4
    iget v10, v2, Landroid/graphics/RectF;->left:F

    iget v11, v2, Landroid/graphics/RectF;->top:F

    iget v12, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v5

    iget v13, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v13, v4

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 346
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v8

    .line 348
    .local v8, straightenBounds:Landroid/graphics/RectF;
    invoke-virtual {v2, v8}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 350
    iget-boolean v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_5

    .line 351
    invoke-static {v2, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixAspectRatio(Landroid/graphics/RectF;FF)V

    .line 353
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 354
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 355
    return-void

    .line 330
    .end local v6           #pbounds:Landroid/graphics/RectF;
    .end local v8           #straightenBounds:Landroid/graphics/RectF;
    :cond_6
    cmpg-float v10, v5, v3

    if-gez v10, :cond_7

    .line 331
    move v5, v3

    .line 333
    :cond_7
    cmpg-float v10, v4, v3

    if-gez v10, :cond_2

    .line 334
    move v4, v3

    goto :goto_0
.end method
