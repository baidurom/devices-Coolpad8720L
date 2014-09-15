.class public Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
.source "ImageSmallBorder.java"


# instance fields
.field protected final mImageScaleFactor:F

.field protected final mInnerBorderColor:I

.field protected final mInnerBorderWidth:I

.field protected final mSelectedBackgroundColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mSelectedBackgroundColor:I

    .line 34
    const/high16 v0, -0x100

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mInnerBorderColor:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mInnerBorderWidth:I

    .line 36
    const/high16 v0, 0x4060

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mImageScaleFactor:F

    .line 40
    return-void
.end method


# virtual methods
.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "image"
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    .line 87
    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 89
    .local v1, iw:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 90
    .local v0, ih:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 91
    .local v2, s:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 93
    .end local v0           #ih:I
    .end local v1           #iw:I
    .end local v2           #s:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->requestFilteredImages()V

    .line 49
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 51
    new-instance v6, Landroid/graphics/RectF;

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    int-to-float v0, v0

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 53
    .local v6, border:Landroid/graphics/RectF;
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    const/4 v1, 0x0

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 61
    .local v8, path:Landroid/graphics/Path;
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v6, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 68
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    const/high16 v0, 0x4060

    const/high16 v1, 0x4060

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 70
    new-instance v7, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    .local v7, d:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->showTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 75
    .local v9, textWidth:F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v9

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v10, v0

    .line 76
    .local v10, x:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 78
    .local v11, y:I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v10

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mTextMargin:I

    sub-int v2, v11, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    .end local v9           #textWidth:F
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_1
    return-void
.end method
