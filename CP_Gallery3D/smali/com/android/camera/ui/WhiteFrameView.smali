.class public Lcom/android/camera/ui/WhiteFrameView;
.super Landroid/widget/ImageView;
.source "WhiteFrameView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field duration:I

.field iFrameHeight:I

.field iFrameWidth:I

.field isAnimFinished:Z

.field private mActivity:Lcom/android/camera/CameraActivity;

.field mAlphaAnim:Landroid/view/animation/AlphaAnimation;

.field private mContext:Landroid/content/Context;

.field private mCurrentModule:Lcom/android/camera/CameraModule;

.field mFrameRect:Landroid/graphics/Rect;

.field mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/WhiteFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object p1, p0, Lcom/android/camera/ui/WhiteFrameView;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0xff

    const/4 v3, 0x1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/android/camera/ui/WhiteFrameView;->duration:I

    .line 30
    iput-boolean v3, p0, Lcom/android/camera/ui/WhiteFrameView;->isAnimFinished:Z

    .line 53
    iput-object p1, p0, Lcom/android/camera/ui/WhiteFrameView;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/camera/ui/WhiteFrameView;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/android/camera/ui/WhiteFrameView;->duration:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/WhiteFrameView;->isAnimFinished:Z

    .line 48
    iput-object p1, p0, Lcom/android/camera/ui/WhiteFrameView;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/WhiteFrameView;->isAnimFinished:Z

    .line 95
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 99
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/WhiteFrameView;->isAnimFinished:Z

    .line 90
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mFrameRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mFrameRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mFrameRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/WhiteFrameView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 120
    return-void
.end method

.method public requestRenderer(Landroid/graphics/Rect;Lcom/android/camera/CameraModule;)V
    .locals 1
    .parameter "rect"
    .parameter "mCurrentModule"

    .prologue
    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/WhiteFrameView;->iFrameWidth:I

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/WhiteFrameView;->iFrameHeight:I

    .line 69
    iput-object p1, p0, Lcom/android/camera/ui/WhiteFrameView;->mFrameRect:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    iput-object p2, p0, Lcom/android/camera/ui/WhiteFrameView;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 74
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/WhiteFrameView;->isAnimFinished:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/WhiteFrameView;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setContinueAnimation(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/ui/WhiteFrameView;->mActivity:Lcom/android/camera/CameraActivity;

    .line 37
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method
