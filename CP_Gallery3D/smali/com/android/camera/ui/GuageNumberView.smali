.class public Lcom/android/camera/ui/GuageNumberView;
.super Landroid/widget/LinearLayout;
.source "GuageNumberView.java"

# interfaces
.implements Lcom/android/camera/ui/IndicatorControl;


# instance fields
.field mContext:Landroid/content/Context;

.field mControlHeight:I

.field mControlWidth:I

.field mEndTextView:Landroid/widget/TextView;

.field mMax:I

.field mProgressBar:Landroid/widget/ProgressBar;

.field mStartTextView:Landroid/widget/TextView;

.field mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/GuageNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GuageNumberView;->initView(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getControlHeight()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/camera/ui/GuageNumberView;->mControlHeight:I

    return v0
.end method

.method public getControlWidth()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/camera/ui/GuageNumberView;->mControlWidth:I

    return v0
.end method

.method public getIndicatorMode()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/ui/GuageNumberView;->mMax:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/camera/ui/GuageNumberView;->mValue:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 118
    return-object p0
.end method

.method initView(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/16 v9, 0x23

    const/4 v12, 0x0

    const/16 v11, 0x11

    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/GuageNumberView;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v5

    .line 52
    .local v5, textWidth:I
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 53
    .local v4, textHeight:I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v6, tvParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mStartTextView:Landroid/widget/TextView;

    .line 56
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mStartTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mStartTextView:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mStartTextView:Landroid/widget/TextView;

    const/high16 v9, 0x4170

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mStartTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mStartTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mContext:Landroid/content/Context;

    const v9, 0x7f04005c

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 63
    .local v7, view:Landroid/view/View;
    const v8, 0x7f10011a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, progressWidth:I
    invoke-static {p1}, Lcom/android/camera/Util;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v8

    aget v3, v8, v12

    .line 66
    .local v3, screenWidth:I
    const/16 v8, 0x1e0

    if-gt v3, v8, :cond_0

    .line 67
    div-int/lit8 v8, v3, 0x4

    mul-int/lit8 v2, v8, 0x3

    .line 71
    :goto_0
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mContext:Landroid/content/Context;

    const/4 v9, 0x6

    invoke-static {v8, v9}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    .line 72
    .local v1, progressHeight:I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mEndTextView:Landroid/widget/TextView;

    .line 78
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mEndTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mEndTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mEndTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v2

    iput v8, p0, Lcom/android/camera/ui/GuageNumberView;->mControlWidth:I

    .line 83
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/camera/ui/GuageNumberView;->mControlHeight:I

    .line 84
    return-void

    .line 69
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #progressHeight:I
    :cond_0
    iget-object v8, p0, Lcom/android/camera/ui/GuageNumberView;->mContext:Landroid/content/Context;

    const/16 v9, 0x10e

    invoke-static {v8, v9}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v2

    goto :goto_0
.end method

.method public setControlCallback(Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 143
    return-void
.end method

.method public setGuageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 148
    return-void
.end method

.method public setIndicatorMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 124
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/camera/ui/GuageNumberView;->mMax:I

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/GuageNumberView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/GuageNumberView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 92
    return-void
.end method

.method public setRotateOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 114
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/camera/ui/GuageNumberView;->mValue:I

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/GuageNumberView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/GuageNumberView;->mEndTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method
