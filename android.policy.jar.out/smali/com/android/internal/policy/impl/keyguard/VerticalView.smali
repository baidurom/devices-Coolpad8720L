.class public Lcom/android/internal/policy/impl/keyguard/VerticalView;
.super Landroid/view/View;
.source "VerticalView.java"


# static fields
.field private static final MAX_TEXT:I = 0x10

.field private static final TAG:Ljava/lang/String; = "VerticalView"


# instance fields
.field private mBaseLine:I

.field private mLastTextCount:I

.field public mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    .line 22
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    .line 23
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mLastTextCount:I

    .line 24
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mBaseLine:I

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VerticalView;->setText(Ljava/lang/String;)V

    .line 46
    const v0, 0x3f4ccccd

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    const/high16 v2, 0x3300

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    .line 22
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    .line 23
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mLastTextCount:I

    .line 24
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mBaseLine:I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VerticalView;->setText(Ljava/lang/String;)V

    .line 34
    const v0, 0x3f4ccccd

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    const/high16 v2, 0x3300

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 37
    return-void
.end method

.method private refreshText(Z)V
    .locals 3
    .parameter "force"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mLastTextCount:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    if-nez v1, :cond_1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mLastTextCount:I

    .line 82
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 83
    .local v0, len:I
    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VerticalView;->updateBaseLine()V

    .line 96
    .end local v0           #len:I
    :cond_1
    return-void

    .line 86
    .restart local v0       #len:I
    :cond_2
    const/16 v1, 0x8

    if-gt v0, v1, :cond_3

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    goto :goto_0
.end method

.method private updateBaseLine()V
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 143
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mBaseLine:I

    .line 145
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/16 v7, 0x8

    .line 119
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 120
    const-string v3, "KeyguardOwnerInfo"

    const-string v4, "..................VerticalView  draw is done"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, 0x0

    .local v1, x:I
    const/4 v2, 0x0

    .line 123
    .local v2, y:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 124
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 129
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0x10

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 131
    if-ne v0, v7, :cond_0

    .line 132
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    sub-int/2addr v1, v3

    .line 133
    const/4 v2, 0x0

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mBaseLine:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 136
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mTextSize:I

    add-int/2addr v2, v3

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    goto :goto_0

    .line 139
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 110
    const-string v0, "KeyguardOwnerInfo"

    const-string v1, ".....................VerticalView  onLayout is done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VerticalView;->refreshText(Z)V

    .line 113
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 115
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 105
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mText:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VerticalView;->refreshText(Z)V

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 75
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 55
    return-void
.end method

.method public setTextFont(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 59
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 60
    .local v1, tf:Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VerticalView;->updateBaseLine()V

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 69
    return-void

    .line 61
    .end local v1           #tf:Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "KeyguardOwnerInfo"

    const-string v3, ".....................VerticalView  setTextFont is exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v2, "system/fonts/Roboto-Regular.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 64
    .restart local v1       #tf:Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VerticalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
