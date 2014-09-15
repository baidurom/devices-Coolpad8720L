.class Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;
.super Landroid/widget/FrameLayout;
.source "GuageIndicatorContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GuageIndicatorContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorContent"
.end annotation


# instance fields
.field mContentView:Landroid/view/View;

.field mControlHeight:I

.field mControlWidth:I

.field final synthetic this$0:Lcom/android/camera/ui/GuageIndicatorContainer;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GuageIndicatorContainer;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    .line 96
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 128
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 129
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v4, v4, Lcom/android/camera/ui/GuageIndicatorContainer;->mContentWidth:I

    iget v5, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mControlWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 131
    .local v1, cl:I
    const/4 v3, 0x0

    .line 132
    .local v3, ct:I
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v4, v4, Lcom/android/camera/ui/GuageIndicatorContainer;->mGuageGravity:I

    const/16 v5, 0x30

    if-ne v4, v5, :cond_2

    .line 133
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v4, v4, Lcom/android/camera/ui/GuageIndicatorContainer;->mContentHeight:I

    div-int/lit8 v3, v4, 0x4

    .line 139
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mControlWidth:I

    add-int v2, v1, v4

    .line 140
    .local v2, cr:I
    iget v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mControlHeight:I

    add-int v0, v3, v4

    .line 141
    .local v0, cb:I
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 143
    .end local v0           #cb:I
    .end local v1           #cl:I
    .end local v2           #cr:I
    .end local v3           #ct:I
    :cond_1
    return-void

    .line 134
    .restart local v1       #cl:I
    .restart local v3       #ct:I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v4, v4, Lcom/android/camera/ui/GuageIndicatorContainer;->mGuageGravity:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_3

    .line 135
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v4, v4, Lcom/android/camera/ui/GuageIndicatorContainer;->mContentHeight:I

    iget v5, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mControlHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    goto :goto_0

    .line 136
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v4, v4, Lcom/android/camera/ui/GuageIndicatorContainer;->mGuageGravity:I

    const/16 v5, 0x50

    if-ne v4, v5, :cond_0

    .line 137
    iget-object v4, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v4, v4, Lcom/android/camera/ui/GuageIndicatorContainer;->mContentHeight:I

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v3, v4, 0x3

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 116
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mContentView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mControlWidth:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mControlHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v0, v0, Lcom/android/camera/ui/GuageIndicatorContainer;->mContentWidth:I

    invoke-static {v0, p1}, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->resolveSize(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v1, v1, Lcom/android/camera/ui/GuageIndicatorContainer;->mContentHeight:I

    invoke-static {v1, p2}, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 124
    return-void
.end method

.method public requestLayout(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iput p1, v1, Lcom/android/camera/ui/GuageIndicatorContainer;->mContentWidth:I

    .line 102
    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iput p2, v1, Lcom/android/camera/ui/GuageIndicatorContainer;->mContentHeight:I

    .line 103
    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget-object v1, v1, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    iget-object v2, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v2, v2, Lcom/android/camera/ui/GuageIndicatorContainer;->mMax:I

    invoke-interface {v1, v2}, Lcom/android/camera/ui/IndicatorControl;->setMaxValue(I)V

    .line 104
    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget-object v1, v1, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    iget-object v2, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget-object v2, v2, Lcom/android/camera/ui/GuageIndicatorContainer;->mControlCallback:Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;

    invoke-interface {v1, v2}, Lcom/android/camera/ui/IndicatorControl;->setControlCallback(Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;)V

    .line 105
    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget-object v1, v1, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    invoke-interface {v1}, Lcom/android/camera/ui/IndicatorControl;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mContentView:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget-object v1, v1, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    invoke-interface {v1}, Lcom/android/camera/ui/IndicatorControl;->getControlWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mControlWidth:I

    .line 107
    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->this$0:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget-object v1, v1, Lcom/android/camera/ui/GuageIndicatorContainer;->mIndicatorControl:Lcom/android/camera/ui/IndicatorControl;

    invoke-interface {v1}, Lcom/android/camera/ui/IndicatorControl;->getControlHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mControlHeight:I

    .line 108
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mControlWidth:I

    iget v2, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mControlHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    iget-object v1, p0, Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorContent;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 113
    return-void
.end method
