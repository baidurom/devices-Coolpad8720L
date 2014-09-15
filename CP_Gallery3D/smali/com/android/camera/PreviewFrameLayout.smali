.class public Lcom/android/camera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"

# interfaces
.implements Lcom/android/camera/ui/LayoutChangeNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mAspectRatio:D

.field private mBorder:Landroid/view/View;

.field private mLayoutChangeHelper:Lcom/android/camera/ui/LayoutChangeHelper;

.field private mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-wide v0, 0x3ff5555555555555L

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 52
    new-instance v0, Lcom/android/camera/ui/LayoutChangeHelper;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/LayoutChangeHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/android/camera/ui/LayoutChangeHelper;

    .line 53
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 57
    const v1, 0x7f10010f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PreviewFrameLayout;->mBorder:Landroid/view/View;

    .line 58
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v1, :cond_0

    .line 59
    const v1, 0x7f10010b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 63
    .local v0, faceViewStub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 67
    .end local v0           #faceViewStub:Landroid/view/ViewStub;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 130
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/android/camera/ui/LayoutChangeHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/LayoutChangeHelper;->onLayout(ZIIII)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;->onLayout(ZIIII)V

    .line 135
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 94
    .local v2, previewWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 97
    .local v1, previewHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int v0, v4, v5

    .line 98
    .local v0, hPadding:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 101
    .local v3, vPadding:I
    sub-int/2addr v2, v0

    .line 102
    sub-int/2addr v1, v3

    .line 105
    add-int/2addr v2, v0

    .line 106
    add-int/2addr v1, v3

    .line 109
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 111
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged(II)V

    .line 120
    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 74
    const-wide/high16 v0, 0x3ff0

    div-double p1, v0, p1

    .line 77
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_2

    .line 78
    iput-wide p1, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 81
    :cond_2
    return-void
.end method

.method public setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/android/camera/ui/LayoutChangeHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/LayoutChangeHelper;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 126
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    .line 115
    return-void
.end method
