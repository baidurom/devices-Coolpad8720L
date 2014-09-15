.class public Lcom/android/gallery3d/ui/BitmapScreenNail;
.super Ljava/lang/Object;
.source "BitmapScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# instance fields
.field private mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field protected mMainHandle:Landroid/os/Handler;

.field private mScreenfull:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mScreenfull:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mScreenfull:Z

    .line 35
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 66
    :cond_0
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 85
    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x780

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x438

    goto :goto_0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 78
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 39
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 40
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0
    .parameter "full"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mScreenfull:Z

    .line 89
    return-void
.end method
