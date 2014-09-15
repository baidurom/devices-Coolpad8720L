.class Lcom/android/camera/ui/AudioImageView$AudioProgressView;
.super Landroid/view/View;
.source "AudioImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AudioImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioProgressView"
.end annotation


# instance fields
.field mControlHeight:I

.field mControlInterval:I

.field mControlWidth:I

.field mInterval:I

.field mMax:I

.field mPaint:Landroid/graphics/Paint;

.field mProgressBg:Landroid/graphics/drawable/Drawable;

.field mProgressHeight:I

.field mProgressOn:Landroid/graphics/drawable/Drawable;

.field mProgressWidth:I

.field mRectangleHeight:I

.field mRectangleWidth:I

.field mTextHeight:I

.field mTextValue:Ljava/lang/String;

.field mTextWidth:I

.field mValue:I

.field final synthetic this$0:Lcom/android/camera/ui/AudioImageView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/AudioImageView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/AudioImageView$AudioProgressView;-><init>(Lcom/android/camera/ui/AudioImageView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 343
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/AudioImageView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->this$0:Lcom/android/camera/ui/AudioImageView;

    .line 345
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->initView()V

    .line 347
    return-void
.end method


# virtual methods
.method public getControlHeight()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlHeight:I

    return v0
.end method

.method public getControlWidth()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlWidth:I

    return v0
.end method

.method initView()V
    .locals 4

    .prologue
    .line 351
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressOn:Landroid/graphics/drawable/Drawable;

    .line 352
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressBg:Landroid/graphics/drawable/Drawable;

    .line 354
    const/4 v1, 0x2

    const/high16 v2, 0x4180

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 356
    .local v0, textSize:I
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    .line 357
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 358
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 359
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 360
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x3f99999a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 361
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mInterval:I

    .line 364
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlInterval:I

    .line 365
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mRectangleWidth:I

    .line 366
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mRectangleHeight:I

    .line 367
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 412
    iget v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlWidth:I

    iget v7, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 413
    .local v4, left:I
    iget v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlHeight:I

    iget v7, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    .line 414
    .local v5, top:I
    const/4 v3, 0x0

    .line 416
    .local v3, isOn:Z
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 417
    .local v0, bounds:Landroid/graphics/Rect;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    iget v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mMax:I

    add-int/lit8 v6, v6, 0x1

    if-ge v2, v6, :cond_2

    .line 418
    iget v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mValue:I

    if-gt v2, v6, :cond_0

    const/4 v3, 0x1

    .line 419
    :goto_1
    if-eqz v3, :cond_1

    .line 420
    iget v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mRectangleWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mRectangleHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 422
    iget-object v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 423
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressOn:Landroid/graphics/drawable/Drawable;

    .line 430
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 431
    iget v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mRectangleWidth:I

    iget v7, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mInterval:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 425
    :cond_1
    iget v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mRectangleWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mRectangleHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 427
    iget-object v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 428
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressBg:Landroid/graphics/drawable/Drawable;

    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 434
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlWidth:I

    iget v7, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 435
    iget v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressHeight:I

    iget v7, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlInterval:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 436
    iget-object v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextValue:Ljava/lang/String;

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 437
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 405
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 406
    iget v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlWidth:I

    invoke-static {v0, p1}, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlHeight:I

    invoke-static {v1, p2}, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 408
    return-void
.end method

.method public recycleData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 439
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressOn:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 440
    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressOn:Landroid/graphics/drawable/Drawable;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 443
    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressBg:Landroid/graphics/drawable/Drawable;

    .line 445
    :cond_1
    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    .line 446
    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextValue:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public setMaxValue(I)V
    .locals 5
    .parameter "max"

    .prologue
    const/4 v4, 0x0

    .line 369
    iput p1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mMax:I

    .line 370
    iget v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mRectangleWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mInterval:I

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressWidth:I

    .line 371
    iget v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mRectangleHeight:I

    iput v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressHeight:I

    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f0e030d

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextValue:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextWidth:I

    .line 374
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextHeight:I

    .line 377
    iget v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressWidth:I

    iget v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlWidth:I

    .line 378
    iget v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressHeight:I

    iget v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlInterval:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlHeight:I

    .line 380
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 381
    return-void
.end method

.method public setValue(I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 383
    iput p1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mValue:I

    .line 384
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f0e030d

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextValue:Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextWidth:I

    .line 386
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextHeight:I

    .line 390
    iget v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressWidth:I

    iget v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlWidth:I

    .line 391
    iget v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mProgressHeight:I

    iget v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mTextHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlInterval:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->mControlHeight:I

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 393
    return-void
.end method
