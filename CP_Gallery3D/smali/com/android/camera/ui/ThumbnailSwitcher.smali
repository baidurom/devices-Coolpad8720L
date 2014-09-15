.class public Lcom/android/camera/ui/ThumbnailSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "ThumbnailSwitcher.java"


# instance fields
.field anim:Landroid/view/animation/Animation;

.field private isEnd:Z

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mOldBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 23
    iput-object v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->isEnd:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 23
    iput-object v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->isEnd:Z

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/ThumbnailSwitcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->isEnd:Z

    return p1
.end method


# virtual methods
.method public onShowAnimation(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->anim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->anim:Landroid/view/animation/Animation;

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->anim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/camera/ui/ThumbnailSwitcher$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ThumbnailSwitcher$1;-><init>(Lcom/android/camera/ui/ThumbnailSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 99
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 110
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 116
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 117
    .local v0, image:Lcom/android/camera/ui/RotateImageView;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateImageView;->setThumbnailBitmap(Landroid/graphics/Bitmap;Z)V

    .line 118
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->showNext()V

    goto :goto_0

    .line 112
    .end local v0           #image:Lcom/android/camera/ui/RotateImageView;
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 53
    .local v0, image:Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->showNext()V

    .line 55
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 41
    .local v0, image:Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->showNext()V

    .line 43
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 47
    .local v0, image:Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 48
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->showNext()V

    .line 49
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->isEnd:Z

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "ThumbnailSwitcher"

    const-string v1, ">>>>> start animation  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher;->anim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 91
    :cond_0
    return-void
.end method
