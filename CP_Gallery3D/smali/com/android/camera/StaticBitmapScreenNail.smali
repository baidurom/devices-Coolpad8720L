.class public Lcom/android/camera/StaticBitmapScreenNail;
.super Lcom/android/gallery3d/ui/BitmapScreenNail;
.source "StaticBitmapScreenNail.java"


# instance fields
.field mEnterOrientation:I

.field mHeight:I

.field mRect:Landroid/graphics/Rect;

.field mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/StaticBitmapScreenNail;->mRect:Landroid/graphics/Rect;

    .line 28
    iput v1, p0, Lcom/android/camera/StaticBitmapScreenNail;->mEnterOrientation:I

    .line 29
    iput v1, p0, Lcom/android/camera/StaticBitmapScreenNail;->mWidth:I

    .line 30
    iput v1, p0, Lcom/android/camera/StaticBitmapScreenNail;->mHeight:I

    .line 39
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/StaticBitmapScreenNail;->mRect:Landroid/graphics/Rect;

    .line 28
    iput v1, p0, Lcom/android/camera/StaticBitmapScreenNail;->mEnterOrientation:I

    .line 29
    iput v1, p0, Lcom/android/camera/StaticBitmapScreenNail;->mWidth:I

    .line 30
    iput v1, p0, Lcom/android/camera/StaticBitmapScreenNail;->mHeight:I

    .line 43
    iput p1, p0, Lcom/android/camera/StaticBitmapScreenNail;->mWidth:I

    .line 44
    iput p2, p0, Lcom/android/camera/StaticBitmapScreenNail;->mHeight:I

    .line 45
    iget v0, p0, Lcom/android/camera/StaticBitmapScreenNail;->mWidth:I

    iget v1, p0, Lcom/android/camera/StaticBitmapScreenNail;->mHeight:I

    if-le v0, v1, :cond_0

    .line 46
    iput p2, p0, Lcom/android/camera/StaticBitmapScreenNail;->mWidth:I

    .line 47
    iput p1, p0, Lcom/android/camera/StaticBitmapScreenNail;->mHeight:I

    .line 48
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/camera/StaticBitmapScreenNail;->mEnterOrientation:I

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 5
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 83
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/BitmapScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mMainHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/camera/StaticBitmapScreenNail;->mRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 87
    iget-object v0, p0, Lcom/android/camera/StaticBitmapScreenNail;->mRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 88
    iget-object v0, p0, Lcom/android/camera/StaticBitmapScreenNail;->mRect:Landroid/graphics/Rect;

    add-int v1, p4, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 89
    iget-object v0, p0, Lcom/android/camera/StaticBitmapScreenNail;->mRect:Landroid/graphics/Rect;

    add-int v1, p5, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 90
    const-string v0, "StaticBitmapScreenNail"

    const-string v1, "l:%s, t:%s, r:%s, b:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/StaticBitmapScreenNail;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/StaticBitmapScreenNail;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/StaticBitmapScreenNail;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/StaticBitmapScreenNail;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mMainHandle:Landroid/os/Handler;

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/android/camera/StaticBitmapScreenNail;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 96
    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/StaticBitmapScreenNail;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/camera/StaticBitmapScreenNail;->mWidth:I

    return v0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/BitmapScreenNail;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    return-void
.end method
