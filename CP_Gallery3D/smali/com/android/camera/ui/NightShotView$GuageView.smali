.class Lcom/android/camera/ui/NightShotView$GuageView;
.super Landroid/widget/LinearLayout;
.source "NightShotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/NightShotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuageView"
.end annotation


# instance fields
.field mGuageHeight:I

.field mGuageSpace:I

.field mGuageWidth:I

.field mMax:I

.field mProgressBar:Landroid/widget/ProgressBar;

.field mTextValue:Landroid/widget/TextView;

.field mValue:I


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 301
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 302
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 305
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, vl:I
    const/4 v5, 0x0

    .line 306
    .local v5, vt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 307
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mGuageWidth:I

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 311
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v6, v4

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 312
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v7, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mGuageSpace:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 306
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 295
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 296
    iget v0, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mGuageWidth:I

    invoke-static {v0, p1}, Lcom/android/camera/ui/NightShotView$GuageView;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mGuageHeight:I

    invoke-static {v1, p2}, Lcom/android/camera/ui/NightShotView$GuageView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 298
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 283
    iput p1, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mMax:I

    .line 284
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 287
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mValue:I

    .line 290
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 291
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mTextValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/camera/ui/NightShotView$GuageView;->mValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    return-void
.end method
