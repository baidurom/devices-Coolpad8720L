.class Lcom/android/camera/ui/RotateToastView$ToastLayout;
.super Landroid/widget/FrameLayout;
.source "RotateToastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RotateToastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToastLayout"
.end annotation


# instance fields
.field mToastHeight:I

.field mToastLayoutHeight:I

.field mToastLayoutWidth:I

.field mToastTextView:Landroid/widget/TextView;

.field mToastWidth:I

.field final synthetic this$0:Lcom/android/camera/ui/RotateToastView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RotateToastView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/RotateToastView$ToastLayout;-><init>(Lcom/android/camera/ui/RotateToastView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/RotateToastView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->this$0:Lcom/android/camera/ui/RotateToastView;

    .line 110
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    invoke-direct {p0, p2}, Lcom/android/camera/ui/RotateToastView$ToastLayout;->initToastView(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method private calculateLayoutSize(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 153
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/Util;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v1

    .line 154
    .local v1, size:[I
    const/4 v2, 0x0

    .local v2, width:I
    const/4 v0, 0x0

    .line 155
    .local v0, height:I
    if-eqz p1, :cond_0

    const/16 v3, 0xb4

    if-ne p1, v3, :cond_2

    .line 156
    :cond_0
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 157
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 162
    :cond_1
    :goto_0
    iput v2, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastLayoutWidth:I

    .line 163
    iput v0, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastLayoutHeight:I

    .line 164
    return-void

    .line 158
    :cond_2
    const/16 v3, 0x5a

    if-eq p1, v3, :cond_3

    const/16 v3, 0x10e

    if-ne p1, v3, :cond_1

    .line 159
    :cond_3
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 160
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private initToastView(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0x1e

    const/16 v2, 0xa

    .line 114
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 115
    const v0, 0x7f04006d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastTextView:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastTextView:Landroid/widget/TextView;

    const v1, 0x7f02020f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public getToastHeight()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastLayoutHeight:I

    return v0
.end method

.method public getToastWidth()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastLayoutWidth:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 141
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 142
    iget-object v2, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->this$0:Lcom/android/camera/ui/RotateToastView;

    iget-boolean v2, v2, Lcom/android/camera/ui/RotateToastView;->isChangeView:Z

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastWidth:I

    .line 144
    iget-object v2, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastHeight:I

    .line 145
    iget-object v2, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->this$0:Lcom/android/camera/ui/RotateToastView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/camera/ui/RotateToastView;->isChangeView:Z

    .line 147
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastLayoutWidth:I

    iget v3, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 148
    .local v0, toastLeft:I
    iget v2, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastLayoutHeight:I

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v1, v2, 0x3

    .line 149
    .local v1, toastTop:I
    iget-object v2, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 151
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 135
    iget v0, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastLayoutWidth:I

    invoke-static {v0, p1}, Lcom/android/camera/ui/RotateToastView$ToastLayout;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastLayoutHeight:I

    invoke-static {v1, p2}, Lcom/android/camera/ui/RotateToastView$ToastLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 137
    return-void
.end method

.method public setToastMessage(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "orientation"

    .prologue
    const/4 v2, -0x2

    .line 121
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 122
    iget-object v1, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-direct {p0, p2}, Lcom/android/camera/ui/RotateToastView$ToastLayout;->calculateLayoutSize(I)V

    .line 124
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 128
    iget-object v1, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->mToastTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lcom/android/camera/ui/RotateToastView$ToastLayout;->this$0:Lcom/android/camera/ui/RotateToastView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/camera/ui/RotateToastView;->isChangeView:Z

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 131
    return-void
.end method
