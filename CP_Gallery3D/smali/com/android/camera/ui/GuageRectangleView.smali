.class public Lcom/android/camera/ui/GuageRectangleView;
.super Landroid/view/View;
.source "GuageRectangleView.java"

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

.field mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field mOnDrawable:Landroid/graphics/drawable/Drawable;

.field mPaint:Landroid/graphics/Paint;

.field mRectangleHeight:I

.field mRectangleWidth:I

.field mTextHeight:I

.field mTextWidth:I

.field mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/GuageRectangleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GuageRectangleView;->initView(Landroid/content/Context;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getControlHeight()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlHeight:I

    return v0
.end method

.method public getControlWidth()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlWidth:I

    return v0
.end method

.method public getIndicatorMode()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mMax:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mValue:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 118
    return-object p0
.end method

.method initView(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/ui/GuageRectangleView;->mContext:Landroid/content/Context;

    .line 50
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    const/4 v1, 0x2

    const/high16 v2, 0x4190

    iget-object v3, p0, Lcom/android/camera/ui/GuageRectangleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 55
    .local v0, textSize:I
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 59
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x3f99999a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 60
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mInterval:I

    .line 63
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mContext:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlInterval:I

    .line 64
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mContext:Landroid/content/Context;

    const/16 v2, 0x1a

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mRectangleWidth:I

    .line 65
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mRectangleHeight:I

    .line 66
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 153
    const/4 v4, 0x0

    .local v4, left:I
    const/4 v5, 0x0

    .line 154
    .local v5, top:I
    iget v6, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlWidth:I

    iget v7, p0, Lcom/android/camera/ui/GuageRectangleView;->mTextWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 155
    iget-object v6, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageText:Ljava/lang/String;

    int-to-float v7, v4

    iget v8, p0, Lcom/android/camera/ui/GuageRectangleView;->mTextHeight:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 156
    iget v6, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlWidth:I

    iget v7, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 157
    iget v6, p0, Lcom/android/camera/ui/GuageRectangleView;->mTextHeight:I

    iget v7, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlInterval:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 158
    const/4 v3, 0x0

    .line 160
    .local v3, isOn:Z
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 161
    .local v0, bounds:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v6, p0, Lcom/android/camera/ui/GuageRectangleView;->mMax:I

    if-ge v2, v6, :cond_2

    .line 162
    iget v6, p0, Lcom/android/camera/ui/GuageRectangleView;->mValue:I

    if-ge v2, v6, :cond_0

    const/4 v3, 0x1

    .line 163
    :goto_1
    if-eqz v3, :cond_1

    .line 164
    iget v6, p0, Lcom/android/camera/ui/GuageRectangleView;->mRectangleWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/camera/ui/GuageRectangleView;->mRectangleHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    iget-object v6, p0, Lcom/android/camera/ui/GuageRectangleView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 167
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 175
    iget v6, p0, Lcom/android/camera/ui/GuageRectangleView;->mRectangleWidth:I

    iget v7, p0, Lcom/android/camera/ui/GuageRectangleView;->mInterval:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 169
    :cond_1
    iget v6, p0, Lcom/android/camera/ui/GuageRectangleView;->mRectangleWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/camera/ui/GuageRectangleView;->mRectangleHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    iget-object v6, p0, Lcom/android/camera/ui/GuageRectangleView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 172
    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 177
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 147
    iget v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlWidth:I

    invoke-static {v0, p1}, Lcom/android/camera/ui/GuageRectangleView;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlHeight:I

    invoke-static {v1, p2}, Lcom/android/camera/ui/GuageRectangleView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 149
    return-void
.end method

.method public setControlCallback(Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 181
    return-void
.end method

.method public setGuageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 186
    return-void
.end method

.method public setIndicatorMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 125
    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/ui/GuageRectangleView;->mMax:I

    .line 71
    iget v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mRectangleWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mInterval:I

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageWidth:I

    .line 72
    iget v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mRectangleHeight:I

    iput v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageHeight:I

    .line 73
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

    iput-object v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageText:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mTextWidth:I

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mTextHeight:I

    .line 77
    iget v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mTextWidth:I

    iget v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlWidth:I

    .line 78
    iget v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mTextHeight:I

    iget v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlInterval:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlHeight:I

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 81
    return-void
.end method

.method public setRotateOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 113
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/ui/GuageRectangleView;->mValue:I

    .line 93
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

    iget v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageText:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mTextWidth:I

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mTextHeight:I

    .line 97
    iget v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mTextWidth:I

    iget v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlWidth:I

    .line 98
    iget v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mTextHeight:I

    iget v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlInterval:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/GuageRectangleView;->mGuageHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/GuageRectangleView;->mControlHeight:I

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 101
    return-void
.end method
