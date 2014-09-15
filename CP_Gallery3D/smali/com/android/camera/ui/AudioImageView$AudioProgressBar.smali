.class Lcom/android/camera/ui/AudioImageView$AudioProgressBar;
.super Landroid/widget/FrameLayout;
.source "AudioImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AudioImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioProgressBar"
.end annotation


# instance fields
.field mAudioProgressImage:Landroid/widget/ImageView;

.field mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

.field mImageHeight:I

.field mImageWidth:I

.field mProgressHeight:I

.field mProgressWidth:I

.field final synthetic this$0:Lcom/android/camera/ui/AudioImageView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/AudioImageView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->this$0:Lcom/android/camera/ui/AudioImageView;

    .line 241
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->initImageView()V

    .line 244
    invoke-virtual {p0}, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->initProgressBar()V

    .line 245
    return-void
.end method


# virtual methods
.method initImageView()V
    .locals 3

    .prologue
    .line 247
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressImage:Landroid/widget/ImageView;

    .line 248
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressImage:Landroid/widget/ImageView;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 249
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 251
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mImageWidth:I

    .line 252
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v2, 0x50

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mImageHeight:I

    .line 253
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mImageWidth:I

    iget v2, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mImageHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 254
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 256
    return-void
.end method

.method initProgressBar()V
    .locals 4

    .prologue
    .line 258
    new-instance v1, Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/ui/AudioImageView$AudioProgressView;-><init>(Lcom/android/camera/ui/AudioImageView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    .line 259
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->setMaxValue(I)V

    .line 260
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    invoke-virtual {v1}, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->getControlWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mProgressWidth:I

    .line 261
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    invoke-virtual {v1}, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->getControlHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mProgressHeight:I

    .line 262
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mProgressWidth:I

    iget v2, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mProgressHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 263
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 265
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 288
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 289
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 292
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, vl:I
    const/4 v5, 0x0

    .line 293
    .local v5, vt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 294
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 297
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 298
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v6, v4

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 299
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 293
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    .line 268
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 269
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 273
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 274
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 277
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->measure(II)V

    .line 273
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mImageWidth:I

    iget v7, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mProgressWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 282
    .local v5, viewWidth:I
    iget v6, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mImageHeight:I

    iget v7, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mProgressHeight:I

    add-int v4, v6, v7

    .line 283
    .local v4, viewHeight:I
    invoke-static {v5, p1}, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->resolveSize(II)I

    move-result v6

    invoke-static {v4, p2}, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->resolveSize(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 285
    return-void
.end method

.method public recycleData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->stopAnimDrawable()V

    .line 319
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 321
    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressImage:Landroid/widget/ImageView;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    invoke-virtual {v0}, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->recycleData()V

    .line 326
    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    .line 328
    :cond_1
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressView:Lcom/android/camera/ui/AudioImageView$AudioProgressView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AudioImageView$AudioProgressView;->setValue(I)V

    .line 305
    return-void
.end method

.method public startAnimDrawable()V
    .locals 2

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 308
    .local v0, audioDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 309
    return-void
.end method

.method public stopAnimDrawable()V
    .locals 2

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->mAudioProgressImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 312
    .local v0, audioDrawable:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 315
    :cond_0
    return-void
.end method
