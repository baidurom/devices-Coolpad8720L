.class public Lcom/android/camera/ui/NightShotView;
.super Landroid/widget/FrameLayout;
.source "NightShotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/NightShotView$GuageView;,
        Lcom/android/camera/ui/NightShotView$GuageContainer;,
        Lcom/android/camera/ui/NightShotView$OnChangedListener;
    }
.end annotation


# instance fields
.field isContained:Z

.field isStartAnimation:Z

.field mBorderWidth:I

.field private mChangedListener:Lcom/android/camera/ui/NightShotView$OnChangedListener;

.field mContentHeight:I

.field mContentWidth:I

.field mContext:Landroid/content/Context;

.field mGuageContainer:Lcom/android/camera/ui/NightShotView$GuageContainer;

.field mLeft:I

.field mRotateControl:Lcom/android/camera/ui/RotateControl;

.field mScreenHeight:I

.field mScreenWidth:I

.field mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/NightShotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-boolean v0, p0, Lcom/android/camera/ui/NightShotView;->isStartAnimation:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/camera/ui/NightShotView;->isContained:Z

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/NightShotView;->initView(Landroid/content/Context;)V

    .line 72
    return-void
.end method


# virtual methods
.method initView(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/NightShotView;->isContained:Z

    .line 75
    iput-object p1, p0, Lcom/android/camera/ui/NightShotView;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/NightShotView;->mBorderWidth:I

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/RotateControl;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/NightShotView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    .line 78
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 182
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView;->mGuageContainer:Lcom/android/camera/ui/NightShotView$GuageContainer;

    iget v1, p0, Lcom/android/camera/ui/NightShotView;->mLeft:I

    iget v2, p0, Lcom/android/camera/ui/NightShotView;->mTop:I

    iget v3, p0, Lcom/android/camera/ui/NightShotView;->mLeft:I

    iget v4, p0, Lcom/android/camera/ui/NightShotView;->mContentWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/NightShotView;->mTop:I

    iget v5, p0, Lcom/android/camera/ui/NightShotView;->mContentHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 184
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/NightShotView;->mScreenWidth:I

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/NightShotView;->mScreenHeight:I

    .line 190
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView;->mGuageContainer:Lcom/android/camera/ui/NightShotView$GuageContainer;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView;->mGuageContainer:Lcom/android/camera/ui/NightShotView$GuageContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/NightShotView$GuageContainer;->setMaxValue(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public setOnChangedListener(Lcom/android/camera/ui/NightShotView$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/ui/NightShotView;->mChangedListener:Lcom/android/camera/ui/NightShotView$OnChangedListener;

    .line 61
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView;->mGuageContainer:Lcom/android/camera/ui/NightShotView$GuageContainer;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView;->mGuageContainer:Lcom/android/camera/ui/NightShotView$GuageContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/NightShotView$GuageContainer;->setValue(I)V

    .line 102
    :cond_0
    return-void
.end method
