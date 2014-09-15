.class Lcom/android/camera/ui/AmbilightView$AmbilightImage;
.super Landroid/widget/ImageView;
.source "AmbilightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AmbilightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbilightImage"
.end annotation


# instance fields
.field mAmbilightBitmap:Landroid/graphics/Bitmap;

.field mRotateControl:Lcom/android/camera/ui/RotateControl;

.field final synthetic this$0:Lcom/android/camera/ui/AmbilightView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/AmbilightView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/AmbilightView$AmbilightImage;-><init>(Lcom/android/camera/ui/AmbilightView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/AmbilightView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->this$0:Lcom/android/camera/ui/AmbilightView;

    .line 167
    invoke-direct {p0, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->initImageView()V

    .line 169
    return-void
.end method

.method private drawContentImage(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->mAmbilightBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->mAmbilightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 212
    const-string v0, "AmbilightView"

    const-string v1, "draw ambilight bitmap!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->mAmbilightBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 214
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method


# virtual methods
.method public cleanView()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->mAmbilightBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->mAmbilightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->mAmbilightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->mAmbilightBitmap:Landroid/graphics/Bitmap;

    .line 222
    :cond_0
    return-void
.end method

.method initImageView()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/RotateControl;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    .line 172
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    sget-object v0, Lcom/android/camera/ui/AmbilightView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/AmbilightView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lcom/android/camera/ui/AmbilightView;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sget-object v1, Lcom/android/camera/ui/AmbilightView;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->drawContentImage(Landroid/graphics/Canvas;)V

    .line 206
    return-void
.end method

.method public setContentImage([III)V
    .locals 5
    .parameter "colors"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 179
    sget v0, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    .line 180
    .local v0, enterOrientation:I
    sget v2, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    .line 181
    .local v2, rotateOrientation:I
    iget-object v3, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    invoke-virtual {v3, v0, v2}, Lcom/android/camera/ui/RotateControl;->getImageRotateAngle(II)I

    move-result v1

    .line 182
    .local v1, rotateAngle:I
    invoke-static {p1, p2, p3, v1}, Lcom/android/gallery3d/common/BitmapUtils;->getRotateBitmap([IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->mAmbilightBitmap:Landroid/graphics/Bitmap;

    .line 183
    const/4 p1, 0x0

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 186
    iget-object v3, p0, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->this$0:Lcom/android/camera/ui/AmbilightView;

    #getter for: Lcom/android/camera/ui/AmbilightView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/AmbilightView;->access$100(Lcom/android/camera/ui/AmbilightView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    return-void
.end method
