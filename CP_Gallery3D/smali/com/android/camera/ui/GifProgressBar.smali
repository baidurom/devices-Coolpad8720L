.class public Lcom/android/camera/ui/GifProgressBar;
.super Landroid/widget/FrameLayout;
.source "GifProgressBar.java"


# instance fields
.field private mProgress:Landroid/view/View;

.field private mProgressBackground:Landroid/view/View;

.field private mProgressText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f100121

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GifProgressBar;->mProgressBackground:Landroid/view/View;

    .line 35
    const v0, 0x7f100122

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GifProgressBar;->mProgress:Landroid/view/View;

    .line 36
    const v0, 0x7f100123

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/GifProgressBar;->mProgressText:Landroid/widget/TextView;

    .line 37
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 38
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .parameter "progressPercent"

    .prologue
    .line 42
    iget-object v2, p0, Lcom/android/camera/ui/GifProgressBar;->mProgress:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/ui/GifProgressBar;->mProgressBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    .local v1, layoutParams_back:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x64

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    iget-object v2, p0, Lcom/android/camera/ui/GifProgressBar;->mProgress:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v2, p0, Lcom/android/camera/ui/GifProgressBar;->mProgressText:Landroid/widget/TextView;

    div-int/lit8 v3, p1, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
