.class public Lcom/android/camera/ui/GuageSlideView;
.super Landroid/widget/LinearLayout;
.source "GuageSlideView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/camera/ui/IndicatorControl;


# instance fields
.field mCallback:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;

.field mContext:Landroid/content/Context;

.field mControlHeight:I

.field mControlWidth:I

.field mMax:I

.field mSeekBar:Landroid/widget/SeekBar;

.field mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/GuageSlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GuageSlideView;->initView(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getControlHeight()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/ui/GuageSlideView;->mControlHeight:I

    return v0
.end method

.method public getControlWidth()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/ui/GuageSlideView;->mControlWidth:I

    return v0
.end method

.method public getIndicatorMode()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/ui/GuageSlideView;->mMax:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/camera/ui/GuageSlideView;->mValue:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 87
    return-object p0
.end method

.method initView(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, -0x1

    .line 41
    iput-object p1, p0, Lcom/android/camera/ui/GuageSlideView;->mContext:Landroid/content/Context;

    .line 42
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 45
    iget-object v4, p0, Lcom/android/camera/ui/GuageSlideView;->mContext:Landroid/content/Context;

    const v5, 0x7f040064

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, view:Landroid/view/View;
    const v4, 0x7f100134

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/camera/ui/GuageSlideView;->mSeekBar:Landroid/widget/SeekBar;

    .line 47
    iget-object v4, p0, Lcom/android/camera/ui/GuageSlideView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 48
    iget-object v4, p0, Lcom/android/camera/ui/GuageSlideView;->mContext:Landroid/content/Context;

    const/16 v5, 0x118

    invoke-static {v4, v5}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 49
    .local v3, width:I
    iget-object v4, p0, Lcom/android/camera/ui/GuageSlideView;->mContext:Landroid/content/Context;

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v0

    .line 50
    .local v0, height:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/camera/ui/GuageSlideView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v4, p0, Lcom/android/camera/ui/GuageSlideView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    iput v3, p0, Lcom/android/camera/ui/GuageSlideView;->mControlWidth:I

    .line 58
    iput v0, p0, Lcom/android/camera/ui/GuageSlideView;->mControlHeight:I

    .line 59
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/GuageSlideView;->mCallback:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/GuageSlideView;->mCallback:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;

    invoke-interface {v0, p2}, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;->onGuageValue(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 120
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/GuageSlideView;->mCallback:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/GuageSlideView;->mCallback:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;->onIdle(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public setControlCallback(Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/ui/GuageSlideView;->mCallback:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;

    .line 110
    return-void
.end method

.method public setGuageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 131
    return-void
.end method

.method public setIndicatorMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 93
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/ui/GuageSlideView;->mMax:I

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/GuageSlideView;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/camera/ui/GuageSlideView;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/GuageSlideView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 66
    return-void
.end method

.method public setRotateOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 84
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/camera/ui/GuageSlideView;->mValue:I

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/GuageSlideView;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/camera/ui/GuageSlideView;->mValue:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    return-void
.end method
