.class public Lcom/android/camera/ui/GuagePointView;
.super Landroid/view/View;
.source "GuagePointView.java"

# interfaces
.implements Lcom/android/camera/ui/IndicatorControl;


# instance fields
.field mContext:Landroid/content/Context;

.field mControlHeight:I

.field mControlInterval:I

.field mControlWidth:I

.field mGuageHeight:I

.field mGuageText:Ljava/lang/String;

.field mGuageWidth:I

.field mInterval:I

.field mMax:I

.field mNormalColor:I

.field mOnColor:I

.field mPaint:Landroid/graphics/Paint;

.field mRadius:I

.field mTextHeight:I

.field mTextWidth:I

.field mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/GuagePointView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const v0, -0x37ff0100

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mOnColor:I

    .line 34
    const v0, -0x37000001

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mNormalColor:I

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GuagePointView;->initView(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getControlHeight()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mControlHeight:I

    return v0
.end method

.method public getControlWidth()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mControlWidth:I

    return v0
.end method

.method public getIndicatorMode()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mMax:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mValue:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 108
    return-object p0
.end method

.method initView(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/GuagePointView;->mContext:Landroid/content/Context;

    .line 45
    const/4 v1, 0x2

    const/high16 v2, 0x4170

    iget-object v3, p0, Lcom/android/camera/ui/GuagePointView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 47
    .local v0, textSize:I
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 51
    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x3f99999a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 52
    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GuagePointView;->mInterval:I

    .line 55
    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mContext:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GuagePointView;->mControlInterval:I

    .line 56
    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GuagePointView;->mRadius:I

    .line 58
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    const/4 v3, 0x0

    .local v3, left:I
    const/4 v4, 0x0

    .line 144
    .local v4, top:I
    iget v5, p0, Lcom/android/camera/ui/GuagePointView;->mControlWidth:I

    iget v6, p0, Lcom/android/camera/ui/GuagePointView;->mTextWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 145
    iget-object v5, p0, Lcom/android/camera/ui/GuagePointView;->mGuageText:Ljava/lang/String;

    int-to-float v6, v3

    iget v7, p0, Lcom/android/camera/ui/GuagePointView;->mTextHeight:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    iget v5, p0, Lcom/android/camera/ui/GuagePointView;->mControlWidth:I

    iget v6, p0, Lcom/android/camera/ui/GuagePointView;->mGuageWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 147
    iget v5, p0, Lcom/android/camera/ui/GuagePointView;->mTextHeight:I

    iget v6, p0, Lcom/android/camera/ui/GuagePointView;->mControlInterval:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 148
    const/4 v2, 0x0

    .line 150
    .local v2, isOn:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/camera/ui/GuagePointView;->mMax:I

    if-ge v1, v5, :cond_3

    .line 151
    iget v5, p0, Lcom/android/camera/ui/GuagePointView;->mValue:I

    if-gt v1, v5, :cond_1

    const/4 v2, 0x1

    .line 152
    :goto_1
    if-eqz v2, :cond_2

    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mOnColor:I

    .line 153
    .local v0, color:I
    :goto_2
    iget v5, p0, Lcom/android/camera/ui/GuagePointView;->mValue:I

    iget v6, p0, Lcom/android/camera/ui/GuagePointView;->mMax:I

    if-ne v5, v6, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mOnColor:I

    .line 154
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget v5, p0, Lcom/android/camera/ui/GuagePointView;->mRadius:I

    add-int/2addr v3, v5

    .line 156
    int-to-float v5, v3

    int-to-float v6, v4

    iget v7, p0, Lcom/android/camera/ui/GuagePointView;->mRadius:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 157
    iget v5, p0, Lcom/android/camera/ui/GuagePointView;->mRadius:I

    iget v6, p0, Lcom/android/camera/ui/GuagePointView;->mInterval:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v0           #color:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 152
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mNormalColor:I

    goto :goto_2

    .line 159
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 137
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mControlWidth:I

    invoke-static {v0, p1}, Lcom/android/camera/ui/GuagePointView;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/GuagePointView;->mControlHeight:I

    invoke-static {v1, p2}, Lcom/android/camera/ui/GuagePointView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 139
    return-void
.end method

.method public setControlCallback(Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 163
    return-void
.end method

.method public setGuageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 168
    return-void
.end method

.method public setIndicatorMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 115
    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/camera/ui/GuagePointView;->mMax:I

    .line 62
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/GuagePointView;->mInterval:I

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mGuageWidth:I

    .line 63
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mGuageHeight:I

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GuagePointView;->mGuageText:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mGuageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mTextWidth:I

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mTextHeight:I

    .line 68
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mTextWidth:I

    iget v1, p0, Lcom/android/camera/ui/GuagePointView;->mGuageWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mControlWidth:I

    .line 69
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mTextHeight:I

    iget v1, p0, Lcom/android/camera/ui/GuagePointView;->mControlInterval:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/GuagePointView;->mGuageHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mControlHeight:I

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 72
    return-void
.end method

.method public setRotateOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 103
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/camera/ui/GuagePointView;->mValue:I

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/GuagePointView;->mMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GuagePointView;->mGuageText:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mGuageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mTextWidth:I

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mTextHeight:I

    .line 87
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mTextWidth:I

    iget v1, p0, Lcom/android/camera/ui/GuagePointView;->mGuageWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mControlWidth:I

    .line 88
    iget v0, p0, Lcom/android/camera/ui/GuagePointView;->mTextHeight:I

    iget v1, p0, Lcom/android/camera/ui/GuagePointView;->mControlInterval:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/GuagePointView;->mGuageHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/GuagePointView;->mControlHeight:I

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/GuagePointView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 91
    return-void
.end method
