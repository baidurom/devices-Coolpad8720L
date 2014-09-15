.class Lcom/android/camera/ui/AudioImageView$AudioImage;
.super Landroid/widget/ImageView;
.source "AudioImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AudioImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioImage"
.end annotation


# instance fields
.field mAudioBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/camera/ui/AudioImageView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/AudioImageView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->this$0:Lcom/android/camera/ui/AudioImageView;

    .line 452
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 453
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 470
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->mAudioBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v0, v0, Lcom/android/camera/ui/AudioImageView;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v1, v1, Lcom/android/camera/ui/AudioImageView;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 473
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->mAudioBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 475
    :cond_0
    return-void
.end method

.method public recycleData()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->mAudioBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->mAudioBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->mAudioBitmap:Landroid/graphics/Bitmap;

    .line 481
    :cond_0
    return-void
.end method

.method public setImage([BII)V
    .locals 7
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 455
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Util;->byte2Color([B)[I

    move-result-object v1

    .line 458
    .local v1, pixel:[I
    iget-object v3, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget v3, v3, Lcom/android/camera/ui/AudioImageView;->mRotateAngle:I

    invoke-static {v1, p2, p3, v3}, Lcom/android/gallery3d/common/BitmapUtils;->getRotateBitmap([IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->mAudioBitmap:Landroid/graphics/Bitmap;

    .line 461
    iget-object v3, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->mAudioBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 462
    .local v2, w:I
    iget-object v3, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->mAudioBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 463
    .local v0, h:I
    iget-object v3, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v3, v3, Lcom/android/camera/ui/AudioImageView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v3, v3, Lcom/android/camera/ui/AudioImageView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 464
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->mAudioBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v4, v4, Lcom/android/camera/ui/AudioImageView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v5, v5, Lcom/android/camera/ui/AudioImageView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/AudioImageView$AudioImage;->mAudioBitmap:Landroid/graphics/Bitmap;

    .line 466
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method
