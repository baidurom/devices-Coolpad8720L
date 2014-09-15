.class public Lcom/android/camera/ui/ZoomRenderer;
.super Lcom/android/camera/ui/OverlayRenderer;
.source "ZoomRenderer.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mCircleSize:I

.field private mDetector:Landroid/view/ScaleGestureDetector;

.field private mInnerStroke:I

.field public mIsZoomSupported:Z

.field private mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

.field private mMaxCircle:F

.field private mMaxZoom:I

.field private mMinCircle:F

.field private mMinZoom:I

.field private mOuterStroke:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mZoomFraction:I

.field private mZoomSig:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-direct {p0}, Lcom/android/camera/ui/OverlayRenderer;-><init>()V

    .line 51
    iput-boolean v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mIsZoomSupported:Z

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0d0049

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 69
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    const v1, 0x7f0d0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mInnerStroke:I

    .line 71
    const v1, 0x7f0d0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mOuterStroke:I

    .line 72
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 73
    const v1, 0x7f0d0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    .line 74
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/OverlayRenderer;->setVisible(Z)V

    .line 76
    return-void
.end method


# virtual methods
.method public layout(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/OverlayRenderer;->layout(IIII)V

    .line 101
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    .line 102
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ui/OverlayRenderer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/OverlayRenderer;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    .line 104
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    .line 105
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mInnerStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 115
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 116
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x4080

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mOuterStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mZoomSig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mZoomFraction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, txt:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 123
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    iget-object v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 125
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 130
    .local v1, sf:F
    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v0, v3

    .line 131
    .local v0, circle:F
    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 132
    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 133
    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    if-eqz v3, :cond_0

    float-to-int v3, v0

    iget v4, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    if-eq v3, v4, :cond_0

    .line 134
    float-to-int v3, v0

    iput v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    .line 135
    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinZoom:I

    iget v4, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxZoom:I

    iget v6, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinZoom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    iget v6, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 136
    .local v2, zoom:I
    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    invoke-interface {v3, v2}, Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 138
    .end local v2           #zoom:I
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    iget-boolean v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mIsZoomSupported:Z

    if-nez v2, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OverlayRenderer;->setVisible(Z)V

    .line 152
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/OverlayRenderer;->setVisible(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomStart()V

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/OverlayRenderer;->update()V

    move v0, v1

    .line 152
    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OverlayRenderer;->setVisible(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    .line 161
    :cond_0
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    .line 96
    return-void
.end method

.method public setZoom(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    int-to-float v1, p1

    iget v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxZoom:I

    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinZoom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    .line 86
    return-void
.end method

.method public setZoomMax(I)V
    .locals 1
    .parameter "zoomMaxIndex"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxZoom:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinZoom:I

    .line 82
    return-void
.end method

.method public setZoomValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 89
    div-int/lit8 p1, p1, 0xa

    .line 90
    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mZoomSig:I

    .line 91
    rem-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mZoomFraction:I

    .line 92
    return-void
.end method
