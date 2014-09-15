.class public Lcom/android/camera/ui/DirectionsSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "DirectionsSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/DirectionsSlidingDrawer$1;,
        Lcom/android/camera/ui/DirectionsSlidingDrawer$SlidingHandler;,
        Lcom/android/camera/ui/DirectionsSlidingDrawer$DrawerToggler;,
        Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;,
        Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerCloseListener;,
        Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# instance fields
.field private isTouchable:Z

.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mInvert:Z

.field private mLocked:Z

.field private mMaximumAcceleration:I

.field private mMaximumMajorVelocity:I

.field private mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/high16 v9, 0x3f00

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->isTouchable:Z

    .line 65
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 66
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 84
    new-instance v5, Lcom/android/camera/ui/DirectionsSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/camera/ui/DirectionsSlidingDrawer$SlidingHandler;-><init>(Lcom/android/camera/ui/DirectionsSlidingDrawer;Lcom/android/camera/ui/DirectionsSlidingDrawer$1;)V

    iput-object v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 167
    sget-object v5, Lcom/android/gallery3d/R$styleable;->MultiDirectionSlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 170
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 173
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    if-ne v4, v10, :cond_2

    :cond_0
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    .line 174
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    .line 176
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    .line 178
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAllowSingleTap:Z

    .line 180
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimateOnClick:Z

    .line 182
    if-eq v4, v10, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    :cond_1
    :goto_1
    iput-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    .line 184
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 186
    .local v3, handleId:I
    if-nez v3, :cond_4

    .line 187
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_2
    move v5, v6

    .line 173
    goto :goto_0

    :cond_3
    move v7, v6

    .line 182
    goto :goto_1

    .line 192
    .restart local v3       #handleId:I
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 194
    .local v1, contentId:I
    if-nez v1, :cond_5

    .line 195
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 200
    :cond_5
    if-ne v3, v1, :cond_6

    .line 201
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :cond_6
    iput v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleId:I

    .line 206
    iput v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContentId:I

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 209
    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTapThreshold:I

    .line 210
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumTapVelocity:I

    .line 211
    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMinorVelocity:I

    .line 212
    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    .line 213
    const/high16 v5, 0x44fa

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumAcceleration:I

    .line 214
    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVelocityUnits:I

    .line 216
    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_7

    .line 217
    iget v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumAcceleration:I

    neg-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumAcceleration:I

    .line 218
    iget v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    .line 219
    iget v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMinorVelocity:I

    neg-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMinorVelocity:I

    .line 222
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 224
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/DirectionsSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/DirectionsSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/DirectionsSlidingDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->prepareTracking(I)V

    .line 548
    iget v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->performFling(IFZ)V

    .line 549
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->prepareTracking(I)V

    .line 553
    iget v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->performFling(IFZ)V

    .line 554
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 1009
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->moveHandle(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1013
    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    .line 1018
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x10

    const/16 v4, 0x3e8

    const/4 v3, 0x0

    .line 850
    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 851
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->incrementAnimation()V

    .line 853
    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v0, :cond_4

    .line 854
    iget v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 855
    iput-boolean v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    .line 856
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->closeDrawer()V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    .line 859
    iput-boolean v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    .line 860
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 857
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_1

    .line 862
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->moveHandle(I)V

    .line 863
    iget-wide v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mCurrentAnimationTime:J

    .line 864
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 869
    :cond_4
    iget v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_6

    .line 871
    iput-boolean v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    .line 872
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->closeDrawer()V

    goto :goto_0

    .line 869
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_2

    .line 873
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 874
    iput-boolean v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    .line 875
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 877
    :cond_7
    iget v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->moveHandle(I)V

    .line 878
    iget-wide v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mCurrentAnimationTime:J

    .line 879
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 888
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 889
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 890
    .local v4, t:F
    iget v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    .line 891
    .local v3, position:F
    iget v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    .line 892
    .local v5, v:F
    iget-boolean v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedAcceleration:F

    .line 893
    .local v0, a:F
    :goto_0
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    .line 894
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    .line 895
    iput-wide v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationLastTime:J

    .line 896
    return-void

    .line 892
    .end local v0           #a:F
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedAcceleration:F

    goto :goto_0
.end method

.method private moveHandle(I)V
    .locals 12
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 692
    iget-object v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    .line 694
    .local v3, handle:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_6

    .line 695
    if-ne p1, v9, :cond_1

    .line 696
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_0

    .line 697
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 701
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 777
    :goto_1
    return-void

    .line 700
    :cond_0
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 702
    :cond_1
    if-ne p1, v8, :cond_3

    .line 703
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_2

    .line 704
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 709
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 706
    :cond_2
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 711
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 712
    .local v6, top:I
    sub-int v1, p1, v6

    .line 713
    .local v1, deltaY:I
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_5

    .line 714
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    .line 721
    :cond_4
    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 723
    iget-object v2, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 724
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 726
    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 727
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 729
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 731
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 734
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 715
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_5
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_4

    .line 717
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_3

    .line 737
    .end local v1           #deltaY:I
    .end local v6           #top:I
    :cond_6
    if-ne p1, v9, :cond_8

    .line 738
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_7

    .line 739
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 743
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 742
    :cond_7
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 744
    :cond_8
    if-ne p1, v8, :cond_a

    .line 745
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_9

    .line 746
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 750
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 748
    :cond_9
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_5

    .line 752
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 753
    .local v4, left:I
    sub-int v0, p1, v4

    .line 754
    .local v0, deltaX:I
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_c

    .line 755
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    .line 761
    :cond_b
    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 763
    iget-object v2, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 764
    .restart local v2       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 766
    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 767
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 769
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 771
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 774
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 756
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_c
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_b

    .line 758
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_6
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 1024
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->moveHandle(I)V

    .line 1025
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    .line 1033
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 11
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    .line 557
    int-to-float v7, p1

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    .line 558
    iput p2, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    .line 564
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    if-eqz v7, :cond_11

    .line 565
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 566
    .local v0, bottom:I
    :goto_0
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_3

    iget v4, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    .line 568
    .local v4, handleHeight:I
    :goto_1
    const-string v7, "Sliding"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", velocity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMaximumMajorVelocity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_4

    const/4 v1, 0x1

    .line 572
    .local v1, c1:Z
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_8

    add-int v7, p1, v4

    sub-int v7, v0, v7

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    add-int/2addr v7, v8

    if-le v7, v4, :cond_7

    const/4 v2, 0x1

    .line 575
    .local v2, c2:Z
    :goto_3
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_c

    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_b

    const/4 v3, 0x1

    .line 577
    .local v3, c3:Z
    :goto_4
    const-string v7, "Sliding"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXPANDED. c1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", c2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", c3: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    if-nez p3, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_f

    if-eqz v3, :cond_f

    .line 581
    :cond_0
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumAcceleration:I

    neg-int v7, v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedAcceleration:F

    .line 582
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_e

    .line 583
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    .line 584
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    .line 651
    .end local v0           #bottom:I
    .end local v4           #handleHeight:I
    :cond_1
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 652
    .local v5, now:J
    iput-wide v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationLastTime:J

    .line 653
    const-wide/16 v7, 0x10

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mCurrentAnimationTime:J

    .line 654
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    .line 655
    iget-object v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    iget-object v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 658
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->stopTracking()V

    .line 659
    return-void

    .line 565
    .end local v1           #c1:Z
    .end local v2           #c2:Z
    .end local v3           #c3:Z
    .end local v5           #now:J
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    goto/16 :goto_0

    .line 566
    .restart local v0       #bottom:I
    :cond_3
    iget v4, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleWidth:I

    goto/16 :goto_1

    .line 570
    .restart local v4       #handleHeight:I
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_5
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_6

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 572
    .restart local v1       #c1:Z
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_8
    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    :goto_6
    add-int/2addr v7, v8

    if-le p1, v7, :cond_a

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_9
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleWidth:I

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 575
    .restart local v2       #c2:Z
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_c
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_d

    const/4 v3, 0x1

    goto/16 :goto_4

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 587
    .restart local v3       #c3:Z
    :cond_e
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1

    .line 588
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_5

    .line 595
    :cond_f
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumAcceleration:I

    neg-int v7, v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedAcceleration:F

    .line 597
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_10

    .line 598
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1

    .line 599
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 602
    :cond_10
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    .line 603
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 611
    .end local v0           #bottom:I
    .end local v1           #c1:Z
    .end local v2           #c2:Z
    .end local v3           #c3:Z
    .end local v4           #handleHeight:I
    :cond_11
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_14

    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_13

    const/4 v1, 0x1

    .line 613
    .restart local v1       #c1:Z
    :goto_7
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_18

    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    :goto_8
    div-int/lit8 v7, v7, 0x2

    if-ge p1, v7, :cond_17

    const/4 v2, 0x1

    .line 615
    .restart local v2       #c2:Z
    :goto_9
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_1c

    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1b

    const/4 v3, 0x1

    .line 618
    .restart local v3       #c3:Z
    :goto_a
    const-string v7, "Sliding"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "COLLAPSED. position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", velocity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMaximumMajorVelocity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v7, "Sliding"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "COLLAPSED. always: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", c1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", c2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", c3: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-nez p3, :cond_1f

    if-nez v1, :cond_12

    if-eqz v2, :cond_1f

    if-eqz v3, :cond_1f

    .line 625
    :cond_12
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v7, v7

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedAcceleration:F

    .line 627
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_1e

    .line 628
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    .line 629
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 611
    .end local v1           #c1:Z
    .end local v2           #c2:Z
    .end local v3           #c3:Z
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_14
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_15

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 613
    .restart local v1       #c1:Z
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    goto/16 :goto_8

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_18
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    :goto_b
    div-int/lit8 v7, v7, 0x2

    if-le p1, v7, :cond_1a

    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    goto :goto_b

    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 615
    .restart local v2       #c2:Z
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_1c
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1d

    const/4 v3, 0x1

    goto/16 :goto_a

    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 632
    .restart local v3       #c3:Z
    :cond_1e
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1

    .line 633
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 637
    :cond_1f
    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumAcceleration:I

    neg-int v7, v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedAcceleration:F

    .line 639
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_20

    .line 640
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1

    .line 641
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 644
    :cond_20
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    .line 645
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/high16 v8, 0x4000

    const/4 v9, 0x0

    .line 780
    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 833
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    .line 787
    .local v0, content:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 789
    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_3

    .line 790
    iget v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    .line 791
    .local v1, handleHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 792
    .local v3, height:I
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 796
    const-string v5, "Sliding"

    const-string v6, "content.layout(2)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_2

    .line 799
    iget v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 829
    .end local v1           #handleHeight:I
    .end local v3           #height:I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 830
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 832
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 802
    .restart local v1       #handleHeight:I
    .restart local v3       #height:I
    :cond_2
    iget v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 811
    .end local v1           #handleHeight:I
    .end local v3           #height:I
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 812
    .local v2, handleWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 813
    .local v4, width:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 817
    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_4

    .line 818
    iget v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    iget v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 822
    :cond_4
    iget v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 662
    iput-boolean v4, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTracking:Z

    .line 663
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 664
    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 666
    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_3

    .line 667
    iget v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedAcceleration:F

    .line 668
    iget v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimatedVelocity:F

    .line 669
    iget-boolean v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v3, :cond_1

    .line 670
    iget v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    .line 675
    :goto_1
    iget v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->moveHandle(I)V

    .line 676
    iput-boolean v4, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    .line 677
    iget-object v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 679
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationLastTime:J

    .line 680
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mCurrentAnimationTime:J

    .line 681
    iput-boolean v4, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    .line 689
    .end local v0           #now:J
    :goto_2
    return-void

    .end local v2           #opening:Z
    :cond_0
    move v2, v3

    .line 664
    goto :goto_0

    .line 672
    .restart local v2       #opening:Z
    :cond_1
    iget v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_3
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimationPosition:F

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_3

    .line 683
    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_4

    .line 684
    iput-boolean v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    .line 685
    iget-object v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 687
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 836
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 837
    iput-boolean v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTracking:Z

    .line 839
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 847
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->prepareContent()V

    .line 973
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;

    .line 974
    .local v0, scrollListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 975
    invoke-interface {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 977
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->animateClose(I)V

    .line 979
    if-eqz v0, :cond_1

    .line 980
    invoke-interface {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 982
    :cond_1
    return-void

    .line 977
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 994
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->prepareContent()V

    .line 995
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;

    .line 996
    .local v0, scrollListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 997
    invoke-interface {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 999
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->animateOpen(I)V

    .line 1001
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1003
    if-eqz v0, :cond_1

    .line 1004
    invoke-interface {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 1006
    :cond_1
    return-void

    .line 999
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->animateOpen()V

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->closeDrawer()V

    .line 958
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 959
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 960
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v1

    .line 281
    .local v1, drawingTime:J
    iget-object v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    .line 282
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    .line 284
    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 286
    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTracking:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_b

    .line 287
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 289
    if-eqz v4, :cond_3

    .line 290
    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_2

    .line 291
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {p1, v0, v6, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 317
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 321
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    return-void

    .line 295
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v6, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 298
    :cond_3
    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :goto_2
    invoke-virtual {p1, v0, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_2

    .line 303
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 304
    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_8

    .line 305
    if-eqz v4, :cond_6

    move v7, v6

    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    :goto_4
    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    :goto_5
    iget-object v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 305
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    move v7, v5

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_4

    .line 310
    :cond_8
    if-eqz v4, :cond_a

    move v5, v6

    :goto_6
    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    :cond_9
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    goto :goto_6

    .line 318
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_b
    iget-boolean v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 319
    iget-object v5, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1181
    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->isTouchable:Z

    if-nez v0, :cond_0

    .line 1182
    const/4 v0, 0x0

    .line 1184
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 228
    iget v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/android/camera/ui/DirectionsSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/DirectionsSlidingDrawer$DrawerToggler;-><init>(Lcom/android/camera/ui/DirectionsSlidingDrawer;Lcom/android/camera/ui/DirectionsSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 386
    iget-boolean v9, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v7

    .line 390
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 392
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 393
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 395
    .local v6, y:F
    iget-object v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 396
    .local v1, frame:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    .line 398
    .local v2, handle:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 399
    iget-boolean v9, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 403
    :cond_2
    if-nez v0, :cond_4

    .line 404
    iput-boolean v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTracking:Z

    .line 406
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 408
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->prepareContent()V

    .line 411
    iget-object v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;

    if-eqz v7, :cond_3

    .line 412
    iget-object v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v7}, Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 415
    :cond_3
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_5

    .line 416
    iget-object v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 417
    .local v4, top:I
    float-to-int v7, v6

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTouchDelta:I

    .line 418
    invoke-direct {p0, v4}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->prepareTracking(I)V

    .line 424
    .end local v4           #top:I
    :goto_1
    iget-object v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v7, v8

    .line 427
    goto :goto_0

    .line 420
    :cond_5
    iget-object v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 421
    .local v3, left:I
    float-to-int v7, v5

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTouchDelta:I

    .line 422
    invoke-direct {p0, v3}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 327
    iget-boolean v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 382
    :goto_0
    return-void

    .line 331
    :cond_0
    sub-int v7, p4, p2

    .line 332
    .local v7, width:I
    sub-int v6, p5, p3

    .line 334
    .local v6, height:I
    iget-object v1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    .line 336
    .local v1, handle:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 337
    .local v5, handleWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 339
    .local v2, handleHeight:I
    const-string v8, "Sliding"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleHeight: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    .line 346
    .local v0, content:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_4

    .line 347
    sub-int v8, v7, v5

    div-int/lit8 v3, v8, 0x2

    .line 348
    .local v3, handleLeft:I
    iget-boolean v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_2

    .line 349
    const-string v8, "Sliding"

    const-string v9, "content.layout(1)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-boolean v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    sub-int v8, v6, v8

    sub-int v4, v8, v2

    .line 352
    .local v4, handleTop:I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 378
    :goto_2
    add-int v8, v3, v5

    add-int v9, v4, v2

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 380
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    .line 381
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 350
    .end local v4           #handleTop:I
    :cond_1
    iget v4, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    goto :goto_1

    .line 355
    :cond_2
    iget-boolean v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v4, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    .line 357
    .restart local v4       #handleTop:I
    :goto_3
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 355
    .end local v4           #handleTop:I
    :cond_3
    sub-int v8, v6, v2

    iget v9, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    add-int v4, v8, v9

    goto :goto_3

    .line 362
    .end local v3           #handleLeft:I
    :cond_4
    sub-int v8, v6, v2

    div-int/lit8 v4, v8, 0x2

    .line 363
    .restart local v4       #handleTop:I
    iget-boolean v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_6

    .line 364
    iget-boolean v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    sub-int v8, v7, v8

    sub-int v3, v8, v5

    .line 366
    .restart local v3       #handleLeft:I
    :goto_4
    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 364
    .end local v3           #handleLeft:I
    :cond_5
    iget v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    goto :goto_4

    .line 370
    :cond_6
    iget-boolean v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_7

    iget v3, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    .line 372
    .restart local v3       #handleLeft:I
    :goto_5
    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v5

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 370
    .end local v3           #handleLeft:I
    :cond_7
    sub-int v8, v7, v5

    iget v9, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    add-int v3, v8, v9

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 247
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 248
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 250
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 251
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 253
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 255
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    .line 260
    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 262
    iget-boolean v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 265
    .local v1, height:I
    iget-object v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 275
    .end local v1           #height:I
    :goto_0
    invoke-virtual {p0, v6, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 276
    return-void

    .line 269
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 270
    .local v4, width:I
    iget-object v7, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 432
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mLocked:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->isTouchable:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 433
    :cond_0
    const/16 v17, 0x1

    .line 543
    :goto_0
    return v17

    .line 435
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTracking:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 438
    .local v2, action:I
    packed-switch v2, :pswitch_data_0

    .line 543
    .end local v2           #action:I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTracking:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimating:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    if-eqz v17, :cond_23

    :cond_3
    const/16 v17, 0x1

    goto :goto_0

    .line 440
    .restart local v2       #action:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    :goto_2
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTouchDelta:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    goto :goto_2

    .line 445
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 446
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVelocityUnits:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 448
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    .line 449
    .local v16, yVelocity:F
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 452
    .local v15, xVelocity:F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mVertical:Z

    .line 453
    .local v14, vertical:Z
    if-eqz v14, :cond_c

    .line 454
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_b

    const/4 v11, 0x1

    .line 455
    .local v11, negative:Z
    :goto_3
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_5

    .line 456
    neg-float v15, v15

    .line 459
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-gtz v17, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_8

    .line 461
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    .line 475
    :cond_8
    :goto_4
    float-to-double v0, v15

    move-wide/from16 v17, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v12, v0

    .line 476
    .local v12, velocity:F
    if-eqz v11, :cond_9

    .line 477
    neg-float v12, v12

    .line 480
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v10

    .line 481
    .local v10, handleTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 482
    .local v8, handleLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 483
    .local v7, handleBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v9

    .line 485
    .local v9, handleRight:I
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumTapVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_21

    .line 491
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 492
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v17

    sub-int v17, v17, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_11

    const/4 v3, 0x1

    .line 494
    .local v3, c1:Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-ge v10, v0, :cond_12

    const/4 v4, 0x1

    .line 496
    .local v4, c2:Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v17

    sub-int v17, v17, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    const/4 v5, 0x1

    .line 498
    .local v5, c3:Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleWidth:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-le v8, v0, :cond_14

    const/4 v6, 0x1

    .line 513
    .local v6, c4:Z
    :goto_8
    const-string v17, "Sliding"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_UP: c1: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", c2: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", c3: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", c4: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    if-eqz v14, :cond_a

    if-nez v3, :cond_a

    if-eqz v4, :cond_1f

    .line 518
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAllowSingleTap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1d

    .line 519
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 521
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 522
    if-eqz v14, :cond_1a

    .end local v10           #handleTop:I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .line 454
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    .end local v6           #c4:Z
    .end local v7           #handleBottom:I
    .end local v8           #handleLeft:I
    .end local v9           #handleRight:I
    .end local v11           #negative:Z
    .end local v12           #velocity:F
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 464
    :cond_c
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_10

    const/4 v11, 0x1

    .line 465
    .restart local v11       #negative:Z
    :goto_a
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_d

    .line 466
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    .line 469
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-gtz v17, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_8

    .line 471
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_4

    .line 464
    .end local v11           #negative:Z
    :cond_10
    const/4 v11, 0x0

    goto :goto_a

    .line 492
    .restart local v7       #handleBottom:I
    .restart local v8       #handleLeft:I
    .restart local v9       #handleRight:I
    .restart local v10       #handleTop:I
    .restart local v11       #negative:Z
    .restart local v12       #velocity:F
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 494
    .restart local v3       #c1:Z
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 496
    .restart local v4       #c2:Z
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 498
    .restart local v5       #c3:Z
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 501
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTapThreshold:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v10, v0, :cond_16

    const/4 v3, 0x1

    .line 503
    .restart local v3       #c1:Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v10, v0, :cond_17

    const/4 v4, 0x1

    .line 506
    .restart local v4       #c2:Z
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTapThreshold:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTopOffset:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v8, v0, :cond_18

    const/4 v5, 0x1

    .line 508
    .restart local v5       #c3:Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mBottomOffset:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandleWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v8, v0, :cond_19

    const/4 v6, 0x1

    .restart local v6       #c4:Z
    :goto_e
    goto/16 :goto_8

    .line 501
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    .end local v6           #c4:Z
    :cond_16
    const/4 v3, 0x0

    goto :goto_b

    .line 503
    .restart local v3       #c1:Z
    :cond_17
    const/4 v4, 0x0

    goto :goto_c

    .line 506
    .restart local v4       #c2:Z
    :cond_18
    const/4 v5, 0x0

    goto :goto_d

    .line 508
    .restart local v5       #c3:Z
    :cond_19
    const/4 v6, 0x0

    goto :goto_e

    .restart local v6       #c4:Z
    :cond_1a
    move v10, v8

    .line 522
    goto/16 :goto_9

    .line 524
    :cond_1b
    if-eqz v14, :cond_1c

    .end local v10           #handleTop:I
    :goto_f
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_1c
    move v10, v8

    goto :goto_f

    .line 527
    :cond_1d
    if-eqz v14, :cond_1e

    .end local v10           #handleTop:I
    :goto_10
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_1e
    move v10, v8

    goto :goto_10

    .line 531
    :cond_1f
    if-eqz v14, :cond_20

    .end local v10           #handleTop:I
    :goto_11
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_20
    move v10, v8

    goto :goto_11

    .line 535
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    .end local v6           #c4:Z
    :cond_21
    if-eqz v14, :cond_22

    .end local v10           #handleTop:I
    :goto_12
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_22
    move v10, v8

    goto :goto_12

    .line 543
    .end local v2           #action:I
    .end local v7           #handleBottom:I
    .end local v8           #handleLeft:I
    .end local v9           #handleRight:I
    .end local v10           #handleTop:I
    .end local v11           #negative:Z
    .end local v12           #velocity:F
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #vertical:Z
    .end local v15           #xVelocity:F
    .end local v16           #yVelocity:F
    :cond_23
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1170
    iput-boolean p1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->isTouchable:Z

    .line 1171
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1175
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1176
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .parameter "enabled"
    .parameter "lostfocus"

    .prologue
    .line 1161
    iput-boolean p1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->isTouchable:Z

    .line 1162
    if-eqz p2, :cond_0

    .line 1163
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->setEnabled(Z)V

    .line 1165
    :cond_0
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerCloseListener;

    .line 1060
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerOpenListener;

    .line 1048
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerScrollListener;

    .line 1073
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 909
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->openDrawer()V

    .line 913
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 914
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 915
    return-void

    .line 911
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method
