.class public Lcom/android/camera/ui/RotateToastView;
.super Landroid/widget/FrameLayout;
.source "RotateToastView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RotateToastView$ToastLayout;
    }
.end annotation


# instance fields
.field isChangeView:Z

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mRemoveToastTask:Ljava/lang/Runnable;

.field mToastDuration:J

.field mToastLayout:Lcom/android/camera/ui/RotateToastView$ToastLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/RotateToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateToastView;->isChangeView:Z

    .line 97
    new-instance v0, Lcom/android/camera/ui/RotateToastView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/RotateToastView$1;-><init>(Lcom/android/camera/ui/RotateToastView;)V

    iput-object v0, p0, Lcom/android/camera/ui/RotateToastView;->mRemoveToastTask:Ljava/lang/Runnable;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateToastView;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    iput-object p1, p0, Lcom/android/camera/ui/RotateToastView;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/android/camera/ui/RotateToastView$ToastLayout;

    iget-object v1, p0, Lcom/android/camera/ui/RotateToastView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/RotateToastView$ToastLayout;-><init>(Lcom/android/camera/ui/RotateToastView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/RotateToastView;->mToastLayout:Lcom/android/camera/ui/RotateToastView$ToastLayout;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/RotateToastView;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method


# virtual methods
.method public showMessage(Ljava/lang/String;JII)V
    .locals 3
    .parameter "text"
    .parameter "duration"
    .parameter "rotateOrientation"
    .parameter "passOrientation"

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iput-wide p2, p0, Lcom/android/camera/ui/RotateToastView;->mToastDuration:J

    .line 53
    iget-object v1, p0, Lcom/android/camera/ui/RotateToastView;->mToastLayout:Lcom/android/camera/ui/RotateToastView$ToastLayout;

    invoke-virtual {v1, p1, p4}, Lcom/android/camera/ui/RotateToastView$ToastLayout;->setToastMessage(Ljava/lang/String;I)V

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/camera/ui/RotateToastView;->mToastLayout:Lcom/android/camera/ui/RotateToastView$ToastLayout;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateToastView$ToastLayout;->getToastWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/RotateToastView;->mToastLayout:Lcom/android/camera/ui/RotateToastView$ToastLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateToastView$ToastLayout;->getToastHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    iget-object v1, p0, Lcom/android/camera/ui/RotateToastView;->mToastLayout:Lcom/android/camera/ui/RotateToastView$ToastLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v1, p0, Lcom/android/camera/ui/RotateToastView;->mToastLayout:Lcom/android/camera/ui/RotateToastView$ToastLayout;

    neg-int v2, p5

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 59
    iget-object v1, p0, Lcom/android/camera/ui/RotateToastView;->mToastLayout:Lcom/android/camera/ui/RotateToastView$ToastLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 62
    return-void
.end method
