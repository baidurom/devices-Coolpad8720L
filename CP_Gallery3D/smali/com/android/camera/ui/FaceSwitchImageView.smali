.class public Lcom/android/camera/ui/FaceSwitchImageView;
.super Landroid/widget/ImageView;
.source "FaceSwitchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FaceSwitchImageView$SwapImageListener;
    }
.end annotation


# instance fields
.field interRadius:I

.field mCenterX:I

.field mCenterY:I

.field mCircleBitmap:Landroid/graphics/Bitmap;

.field mCircleHeight:I

.field mCircleWidth:I

.field mContext:Landroid/content/Context;

.field mEnterOrientation:I

.field mFinalBitmap:Landroid/graphics/Bitmap;

.field mPassOrientation:I

.field mPathPaint:Landroid/graphics/Paint;

.field mRadiusInterval:I

.field mRotateControl:Lcom/android/camera/ui/RotateControl;

.field mRotateOrientation:I

.field mSwapListener:Lcom/android/camera/ui/FaceSwitchImageView$SwapImageListener;

.field outerRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/FaceSwitchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->outerRadius:I

    .line 47
    iput v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->interRadius:I

    .line 73
    iput-object p1, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/android/camera/ui/FaceSwitchImageView;->init()V

    .line 75
    return-void
.end method

.method private composeFinalBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "faceBitmap"
    .parameter "circleBitmap"
    .parameter "swapIndex"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 128
    iget v5, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleWidth:I

    iget v6, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 130
    .local v2, finalBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, p2, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 133
    .local v4, path:Landroid/graphics/Path;
    iget v5, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCenterX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCenterY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/ui/FaceSwitchImageView;->interRadius:I

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 134
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 135
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 136
    iget v5, p0, Lcom/android/camera/ui/FaceSwitchImageView;->interRadius:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/camera/ui/FaceSwitchImageView;->interRadius:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {p1, v5, v6}, Lcom/android/gallery3d/common/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    .local v1, fb:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 138
    .local v3, matrix:Landroid/graphics/Matrix;
    iget v5, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCenterX:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCenterY:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 139
    iget v5, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCenterX:I

    iget v6, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mRadiusInterval:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCenterY:I

    iget v7, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mRadiusInterval:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 140
    invoke-virtual {v0, v1, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 141
    return-object v2
.end method

.method private init()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mPathPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mPathPaint:Landroid/graphics/Paint;

    const v1, -0x575758

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mPathPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/RotateControl;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    .line 84
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    iput-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleBitmap:Landroid/graphics/Bitmap;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mFinalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mFinalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    iput-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mFinalBitmap:Landroid/graphics/Bitmap;

    .line 173
    :cond_1
    iput-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mSwapListener:Lcom/android/camera/ui/FaceSwitchImageView$SwapImageListener;

    .line 174
    iput-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mPathPaint:Landroid/graphics/Paint;

    .line 175
    return-void
.end method

.method public getCircleHeight()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleHeight:I

    return v0
.end method

.method public getCircleWidth()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleWidth:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mFinalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mFinalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleWidth:I

    invoke-static {v0, p1}, Lcom/android/camera/ui/FaceSwitchImageView;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleHeight:I

    invoke-static {v1, p2}, Lcom/android/camera/ui/FaceSwitchImageView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 147
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 159
    return-void
.end method

.method public setCircleParams(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleWidth:I

    .line 87
    iput p2, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleHeight:I

    .line 89
    iget v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->outerRadius:I

    .line 90
    iget v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCenterX:I

    .line 91
    iget v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCircleHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mCenterY:I

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mContext:Landroid/content/Context;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mRadiusInterval:I

    .line 93
    iget v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->outerRadius:I

    iget v1, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mRadiusInterval:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/FaceSwitchImageView;->interRadius:I

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 96
    return-void
.end method

.method public setFaceBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter "bitmap"
    .parameter "circleBitmap"
    .parameter "swapIndex"

    .prologue
    .line 100
    if-eqz p1, :cond_1

    .line 103
    sget v2, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    iput v2, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mEnterOrientation:I

    .line 104
    sget v2, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    iput v2, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mRotateOrientation:I

    .line 105
    sget v2, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    iput v2, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mPassOrientation:I

    .line 106
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    iget v3, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mEnterOrientation:I

    iget v4, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mRotateOrientation:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/RotateControl;->getImageRotateAngle(II)I

    move-result v1

    .line 107
    .local v1, rotateAngle:I
    if-eqz v1, :cond_2

    .line 109
    invoke-static {v1, p1}, Lcom/android/gallery3d/common/BitmapUtils;->getRotateBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    .local v0, faceBitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/ui/FaceSwitchImageView;->composeFinalBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mFinalBitmap:Landroid/graphics/Bitmap;

    .line 117
    if-eqz p1, :cond_0

    if-eq v0, p1, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    const/4 p1, 0x0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 123
    .end local v0           #faceBitmap:Landroid/graphics/Bitmap;
    .end local v1           #rotateAngle:I
    :cond_1
    return-void

    .line 111
    .restart local v1       #rotateAngle:I
    :cond_2
    move-object v0, p1

    .restart local v0       #faceBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public setSwapImageListener(Lcom/android/camera/ui/FaceSwitchImageView$SwapImageListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/ui/FaceSwitchImageView;->mSwapListener:Lcom/android/camera/ui/FaceSwitchImageView$SwapImageListener;

    .line 67
    return-void
.end method
