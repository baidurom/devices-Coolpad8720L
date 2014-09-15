.class public Lcom/android/camera/ui/GuageIndicatorContainer;
.super Landroid/widget/FrameLayout;
.source "GuageIndicatorContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;,
        Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;
    }
.end annotation


# instance fields
.field mContentHeight:I

.field mContentWidth:I

.field mContext:Landroid/content/Context;

.field public mControlCallback:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;

.field mGuageGravity:I

.field mIndicatorContent:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;

.field mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

.field mMax:I

.field mRotateControl:Lcom/android/camera/ui/RotateControl;

.field mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/GuageIndicatorContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mGuageGravity:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GuageIndicatorContainer;->initView(Landroid/content/Context;)V

    .line 38
    return-void
.end method


# virtual methods
.method public generateIndicator(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 88
    new-instance v0, Lcom/android/camera/ui/GuageNumberView;

    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GuageNumberView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    .line 91
    :goto_0
    return-void

    .line 76
    :pswitch_0
    new-instance v0, Lcom/android/camera/ui/GuageNumberView;

    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GuageNumberView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    goto :goto_0

    .line 79
    :pswitch_1
    new-instance v0, Lcom/android/camera/ui/GuagePointView;

    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GuagePointView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    goto :goto_0

    .line 82
    :pswitch_2
    new-instance v0, Lcom/android/camera/ui/GuageRectangleView;

    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GuageRectangleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    goto :goto_0

    .line 85
    :pswitch_3
    new-instance v0, Lcom/android/camera/ui/GuageSlideView;

    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GuageSlideView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mMax:I

    return v0
.end method

.method initView(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    iput-object p1, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/RotateControl;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    .line 43
    return-void
.end method

.method public setControlCallback(Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mControlCallback:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;

    .line 27
    return-void
.end method

.method public setGuageGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mGuageGravity:I

    .line 58
    return-void
.end method

.method public setMaxValue(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mMax:I

    .line 46
    return-void
.end method

.method public setOrientation(II)V
    .locals 6
    .parameter "rotateOrientation"
    .parameter "passOrientation"

    .prologue
    .line 60
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorContent:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    invoke-virtual {v4, p1}, Lcom/android/camera/ui/RotateControl;->calculateScreenSize(I)[I

    move-result-object v3

    .line 62
    .local v3, size:[I
    const/4 v4, 0x0

    aget v1, v3, v4

    .line 63
    .local v1, contentWidth:I
    const/4 v4, 0x1

    aget v0, v3, v4

    .line 64
    .local v0, contentHeight:I
    new-instance v4, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;

    iget-object v5, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;-><init>(Lcom/android/camera/ui/GuageIndicatorContainer;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorContent:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;

    .line 65
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorContent:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;

    invoke-virtual {v4, v1, v0}, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->requestLayout(II)V

    .line 66
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 68
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorContent:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorContent:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorContent:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;

    neg-int v5, p2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotation(F)V

    .line 71
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorContent:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 72
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mValue:I

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    iget v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer;->mValue:I

    invoke-interface {v0, v1}, Lcom/android/camera/ui/IndicatorControl;->setValue(I)V

    .line 51
    :cond_0
    return-void
.end method
