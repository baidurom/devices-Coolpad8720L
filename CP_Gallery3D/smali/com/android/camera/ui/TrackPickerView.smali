.class public Lcom/android/camera/ui/TrackPickerView;
.super Landroid/widget/ImageView;
.source "TrackPickerView.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mBitmapHeight:I

.field mBitmapWidth:I

.field mContext:Landroid/content/Context;

.field mPaint:Landroid/graphics/Paint;

.field mPreviewRect:Landroid/graphics/Rect;

.field mRects:[Landroid/graphics/Rect;

.field mRotateControl:Lcom/android/camera/ui/RotateControl;

.field mTrackHeight:I

.field mTrackWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TrackPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TrackPickerView;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private drawTrackBitmap(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawTrackRect(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/high16 v3, 0x4120

    .line 99
    iget-object v2, p0, Lcom/android/camera/ui/TrackPickerView;->mRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/TrackPickerView;->mRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 107
    :cond_0
    return-void

    .line 102
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 103
    .local v1, rect:Landroid/graphics/RectF;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/TrackPickerView;->mRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/camera/ui/TrackPickerView;->mRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 105
    iget-object v2, p0, Lcom/android/camera/ui/TrackPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/TrackPickerView;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x13ae98

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/RotateControl;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    .line 51
    return-void
.end method


# virtual methods
.method public getJpegData()[B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/gallery3d/common/BitmapUtils;->generateImageData(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public getJpegHeight()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJpegWidth()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/TrackPickerView;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TrackPickerView;->drawTrackBitmap(Landroid/graphics/Canvas;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TrackPickerView;->drawTrackRect(Landroid/graphics/Canvas;)V

    .line 137
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/ui/TrackPickerView;->mPreviewRect:Landroid/graphics/Rect;

    .line 54
    return-void
.end method

.method public setTrackBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackWidth:I

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackHeight:I

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmapWidth:I

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmapHeight:I

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 70
    return-void
.end method

.method public setTrackBitmap([III)V
    .locals 7
    .parameter "colors"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 72
    iget-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    :cond_0
    sget v0, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    .line 77
    .local v0, enterOrientation:I
    sget v3, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    .line 78
    .local v3, rotateOrientation:I
    iget-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    invoke-virtual {v4, v0, v3}, Lcom/android/camera/ui/RotateControl;->getImageRotateAngle(II)I

    move-result v2

    .line 79
    .local v2, rotateAngle:I
    invoke-static {p1, p2, p3, v2}, Lcom/android/gallery3d/common/BitmapUtils;->getRotateBitmap([IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackWidth:I

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackHeight:I

    .line 82
    iget-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 83
    iget-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackWidth:I

    .line 84
    iget-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackHeight:I

    .line 86
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmapWidth:I

    .line 87
    iget-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmapHeight:I

    .line 88
    iget v4, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackWidth:I

    iget v5, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmapWidth:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackHeight:I

    iget v5, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmapHeight:I

    if-eq v4, v5, :cond_3

    .line 91
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackWidth:I

    iget v6, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackHeight:I

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/common/BitmapUtils;->createScaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 92
    .local v1, fb:Landroid/graphics/Bitmap;
    iput-object v1, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmap:Landroid/graphics/Bitmap;

    .line 93
    iget v4, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackWidth:I

    iput v4, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmapWidth:I

    .line 94
    iget v4, p0, Lcom/android/camera/ui/TrackPickerView;->mTrackHeight:I

    iput v4, p0, Lcom/android/camera/ui/TrackPickerView;->mBitmapHeight:I

    .line 96
    .end local v1           #fb:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 97
    return-void
.end method

.method public setTrackRect([Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rects"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/ui/TrackPickerView;->mRects:[Landroid/graphics/Rect;

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    return-void
.end method
