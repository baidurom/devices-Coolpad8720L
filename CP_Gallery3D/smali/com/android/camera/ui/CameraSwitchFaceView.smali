.class public Lcom/android/camera/ui/CameraSwitchFaceView;
.super Landroid/widget/ImageView;
.source "CameraSwitchFaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraSwitchFaceView$OnSwitchFaceClickListener;,
        Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;
    }
.end annotation


# instance fields
.field private volatile isClearMode:Z

.field mActivity:Lcom/android/camera/CameraActivity;

.field mBitmap:Landroid/graphics/Bitmap;

.field mContext:Landroid/content/Context;

.field private mFocusIndex:I

.field mPaint:Landroid/graphics/Paint;

.field mPreviewRect:Landroid/graphics/Rect;

.field mRects:[Landroid/graphics/Rect;

.field private mRotateControl:Lcom/android/camera/ui/RotateControl;

.field mSwitchBackground:Landroid/graphics/drawable/Drawable;

.field private mSwitchFaceClickListener:Lcom/android/camera/ui/CameraSwitchFaceView$OnSwitchFaceClickListener;

.field private mTouchMode:B

.field mZoom:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/CameraSwitchFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    sget-object v0, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;->DEFAULT:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mZoom:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    .line 62
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->isClearMode:Z

    .line 64
    const/16 v0, 0x25

    iput-byte v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mTouchMode:B

    .line 285
    iput v1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mFocusIndex:I

    .line 81
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mContext:Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitchFaceView;->init()V

    .line 83
    return-void
.end method

.method private detectTouchRegion(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, -0x1

    .line 262
    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRects:[Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRects:[Landroid/graphics/Rect;

    array-length v4, v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v3

    .line 272
    :cond_1
    :goto_0
    return v0

    .line 264
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRects:[Landroid/graphics/Rect;

    array-length v2, v4

    .line 265
    .local v2, length:I
    const/4 v1, 0x0

    .line 266
    .local v1, isContain:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 267
    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 268
    if-nez v1, :cond_1

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    .line 272
    goto :goto_0
.end method

.method private drawFaceRect(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x40c0

    .line 192
    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRects:[Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRects:[Landroid/graphics/Rect;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x0

    .line 195
    .local v0, focusColor:I
    iget-byte v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mTouchMode:B

    const/16 v4, 0x36

    if-ne v3, v4, :cond_2

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mSwitchBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 199
    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mSwitchBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 201
    :cond_2
    iget-byte v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mTouchMode:B

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    .line 202
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 203
    .local v2, rect:Landroid/graphics/RectF;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRects:[Landroid/graphics/Rect;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 204
    iget v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mFocusIndex:I

    if-ne v1, v3, :cond_3

    const v0, -0x7b3a84

    .line 205
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 207
    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    :cond_3
    const v0, -0x13ae98

    goto :goto_2
.end method

.method private drawSwitchFaceBitmap(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x13ae98

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/RotateControl;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mSwitchBackground:Landroid/graphics/drawable/Drawable;

    .line 99
    return-void
.end method


# virtual methods
.method public clearSwitchFaceData()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    .line 296
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 235
    iget-byte v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mTouchMode:B

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public displayFaceBitmap([III)V
    .locals 11
    .parameter "colors"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 118
    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 119
    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    .line 122
    :cond_0
    sget v0, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    .line 123
    .local v0, enterOrientation:I
    sget v5, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    .line 124
    .local v5, rotateOrientation:I
    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    invoke-virtual {v7, v0, v5}, Lcom/android/camera/ui/RotateControl;->getImageRotateAngle(II)I

    move-result v4

    .line 125
    .local v4, rotateAngle:I
    if-nez v4, :cond_3

    .line 126
    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 127
    .local v3, previewWidth:I
    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 128
    .local v2, previewHeight:I
    if-ne v3, p2, :cond_1

    if-eq v2, p3, :cond_3

    .line 129
    :cond_1
    if-le v3, v2, :cond_6

    .line 131
    const/16 v0, 0x10e

    .line 135
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    invoke-virtual {v7, v0, v5}, Lcom/android/camera/ui/RotateControl;->getImageRotateAngle(II)I

    move-result v4

    .line 136
    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7, v0}, Lcom/android/camera/CameraActivity;->setEnterOrientation(I)V

    .line 140
    .end local v2           #previewHeight:I
    .end local v3           #previewWidth:I
    :cond_3
    invoke-static {p1, p2, p3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->getRotateBitmap([IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    .line 141
    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 142
    .local v6, w:I
    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 143
    .local v1, h:I
    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v6, v7, :cond_4

    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eq v1, v7, :cond_5

    .line 144
    :cond_4
    iget-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mBitmap:Landroid/graphics/Bitmap;

    .line 146
    :cond_5
    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 148
    return-void

    .line 132
    .end local v1           #h:I
    .end local v6           #w:I
    .restart local v2       #previewHeight:I
    .restart local v3       #previewWidth:I
    :cond_6
    if-ge v3, v2, :cond_2

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public displayFaceRect([Landroid/graphics/Rect;)V
    .locals 6
    .parameter "rects"

    .prologue
    .line 170
    sget v2, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    .line 171
    .local v2, enterOrientation:I
    sget v3, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    .line 172
    .local v3, rotateOrientation:I
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/RotateControl;->getDestRegion([Landroid/graphics/Rect;IIII)[Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mRects:[Landroid/graphics/Rect;

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 178
    return-void
.end method

.method public enableTouchEvent()Z
    .locals 2

    .prologue
    .line 298
    iget-byte v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mTouchMode:B

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 280
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraSwitchFaceView;->drawSwitchFaceBitmap(Landroid/graphics/Canvas;)V

    .line 281
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->isClearMode:Z

    if-nez v0, :cond_1

    .line 282
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraSwitchFaceView;->drawFaceRect(Landroid/graphics/Canvas;)V

    .line 283
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 243
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 244
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 246
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    .line 247
    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 248
    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/CameraSwitchFaceView;->detectTouchRegion(II)I

    move-result v0

    .line 249
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mSwitchFaceClickListener:Lcom/android/camera/ui/CameraSwitchFaceView$OnSwitchFaceClickListener;

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mSwitchFaceClickListener:Lcom/android/camera/ui/CameraSwitchFaceView$OnSwitchFaceClickListener;

    invoke-interface {v3, v0}, Lcom/android/camera/ui/CameraSwitchFaceView$OnSwitchFaceClickListener;->switchFaceClick(I)V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setActivity(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mActivity:Lcom/android/camera/CameraActivity;

    .line 116
    return-void
.end method

.method public setClearMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->isClearMode:Z

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 107
    return-void
.end method

.method public setFocusFaceRegion(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 287
    iput p1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mFocusIndex:I

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 289
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mPreviewRect:Landroid/graphics/Rect;

    .line 113
    return-void
.end method

.method public setSwitchFaceClickListener(Lcom/android/camera/ui/CameraSwitchFaceView$OnSwitchFaceClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mSwitchFaceClickListener:Lcom/android/camera/ui/CameraSwitchFaceView$OnSwitchFaceClickListener;

    .line 73
    return-void
.end method

.method public setTouchMode(B)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 101
    iput-byte p1, p0, Lcom/android/camera/ui/CameraSwitchFaceView;->mTouchMode:B

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 103
    return-void
.end method
