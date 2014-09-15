.class public Lcom/android/camera/ui/StrangerPickClearView;
.super Landroid/widget/ImageView;
.source "StrangerPickClearView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/StrangerPickClearView$Listener;
    }
.end annotation


# instance fields
.field mEnterOrientation:I

.field mListener:Lcom/android/camera/ui/StrangerPickClearView$Listener;

.field mPickClearBitmap:Landroid/graphics/Bitmap;

.field mPreviewRect:Landroid/graphics/Rect;

.field mRotateControl:Lcom/android/camera/ui/RotateControl;

.field mRotateOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/StrangerPickClearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mEnterOrientation:I

    .line 35
    iput v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mRotateOrientation:I

    .line 47
    invoke-static {p1}, Lcom/android/camera/ui/RotateControl;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    .line 48
    return-void
.end method

.method private drawPickClearBitmap(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    .local v0, left:I
    const/4 v1, 0x0

    .line 83
    .local v1, top:I
    iget-object v2, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 85
    iget-object v2, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getPosition(II)[I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    iget-object v3, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/camera/ui/StrangerPickClearView;->mEnterOrientation:I

    iget v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mRotateOrientation:I

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/RotateControl;->getDestPosition(IILandroid/graphics/Rect;II)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_0
    return v5

    .line 111
    :pswitch_0
    iget-object v6, p0, Lcom/android/camera/ui/StrangerPickClearView;->mListener:Lcom/android/camera/ui/StrangerPickClearView$Listener;

    if-eqz v6, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 113
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 114
    .local v4, y:I
    const/4 v0, 0x0

    .local v0, dstX:I
    const/4 v1, 0x0

    .line 115
    .local v1, dstY:I
    iget-object v6, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 116
    iget-object v6, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    invoke-direct {p0, v3, v4}, Lcom/android/camera/ui/StrangerPickClearView;->getPosition(II)[I

    move-result-object v2

    .line 118
    .local v2, position:[I
    aget v0, v2, v5

    .line 119
    const/4 v5, 0x1

    aget v1, v2, v5

    .line 122
    .end local v2           #position:[I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mListener:Lcom/android/camera/ui/StrangerPickClearView$Listener;

    int-to-float v6, v0

    int-to-float v7, v1

    invoke-interface {v5, v6, v7}, Lcom/android/camera/ui/StrangerPickClearView$Listener;->onPositionTouch(FF)Z

    move-result v5

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getJpegData()[B
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/gallery3d/common/BitmapUtils;->generateImageData(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public getJpegHeight()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getJpegWidth()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/android/camera/ui/StrangerPickClearView;->drawPickClearBitmap(Landroid/graphics/Canvas;)V

    .line 105
    return-void
.end method

.method public setListener(Lcom/android/camera/ui/StrangerPickClearView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/camera/ui/StrangerPickClearView;->mListener:Lcom/android/camera/ui/StrangerPickClearView$Listener;

    .line 38
    return-void
.end method

.method public setPickClearBitmap([III)V
    .locals 8
    .parameter "colors"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 53
    iget-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 54
    iget-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    .line 57
    :cond_0
    sget v5, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    iput v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mEnterOrientation:I

    .line 58
    sget v5, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    iput v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mRotateOrientation:I

    .line 59
    sget v3, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    .line 60
    .local v3, passOrientation:I
    neg-int v4, v3

    .line 61
    .local v4, rotateAngle:I
    sget v5, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    sget v5, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    .line 63
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    iget v6, p0, Lcom/android/camera/ui/StrangerPickClearView;->mEnterOrientation:I

    iget v7, p0, Lcom/android/camera/ui/StrangerPickClearView;->mRotateOrientation:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ui/RotateControl;->getMarvellImageAngle(II)I

    move-result v4

    .line 66
    :cond_2
    invoke-static {p1, p2, p3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->getRotateBitmap([IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    .line 67
    iget-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 68
    .local v1, bitmapWidth:I
    iget-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 70
    .local v0, bitmapHeight:I
    iget-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 71
    iget-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v5, v1, :cond_3

    iget-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v5, v0, :cond_4

    .line 73
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/common/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 75
    .local v2, fb:Landroid/graphics/Bitmap;
    iput-object v2, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPickClearBitmap:Landroid/graphics/Bitmap;

    .line 78
    .end local v2           #fb:Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 79
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/ui/StrangerPickClearView;->mPreviewRect:Landroid/graphics/Rect;

    .line 51
    return-void
.end method
