.class public Lcom/android/camera/ui/FocusIndicatorRotateLayout;
.super Lcom/android/camera/ui/RotateLayout;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;,
        Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;,
        Lcom/android/camera/ui/FocusIndicatorRotateLayout$EndAction;
    }
.end annotation


# instance fields
.field private mBlockFocus:Z

.field private mDisappear:Ljava/lang/Runnable;

.field private mEndAction:Ljava/lang/Runnable;

.field private mFocusScale:Landroid/view/animation/Animation;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;-><init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$EndAction;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout$EndAction;-><init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mEndAction:Ljava/lang/Runnable;

    .line 48
    iput-object v1, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mFocusScale:Landroid/view/animation/Animation;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mBlockFocus:Z

    .line 56
    const v0, 0x7f050008

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mFocusScale:Landroid/view/animation/Animation;

    .line 60
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/FocusIndicatorRotateLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    return p1
.end method

.method private setDrawable(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 156
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 157
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 159
    return-void
.end method

.method public setBlockFocus(Z)V
    .locals 0
    .parameter "blocked"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mBlockFocus:Z

    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0
.end method

.method public showFail(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mBlockFocus:Z

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_0
    const v0, 0x7f0200f4

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setDrawable(I)V

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    goto :goto_0
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mBlockFocus:Z

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    const v0, 0x7f0200f6

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setDrawable(I)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mFocusScale:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    goto :goto_0
.end method

.method public showSuccess(Z)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mBlockFocus:Z

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 104
    :cond_0
    const v0, 0x7f0200f5

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setDrawable(I)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    goto :goto_0
.end method
