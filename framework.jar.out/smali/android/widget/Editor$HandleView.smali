.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$HandleView$CheckForLongPress;
    }
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_LONG_TAP:I = 0x1

.field static final TOUCH_MODE_MOVE:I = 0x2

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_WAITING:I = 0x3

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field private mActivePointerId:I

.field mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchMode:I

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    const/4 v3, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 3395
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 3396
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3389
    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3391
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 3427
    new-array v1, v3, [J

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 3428
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 3429
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3430
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3633
    iput v2, p0, Landroid/widget/Editor$HandleView;->mActivePointerId:I

    .line 3634
    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    .line 3397
    new-instance v1, Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, #android:attr@textSelectHandleWindowStyle#t

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 3399
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 3400
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3401
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3402
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3404
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 3405
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 3407
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 3409
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3410
    .local v0, handleHeight:I
    const v1, -0x41666666

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 3411
    const v1, 0x3f333333

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 3412
    return-void
.end method

.method static synthetic access$2700(Landroid/widget/Editor$HandleView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3369
    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$2702(Landroid/widget/Editor$HandleView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3369
    iput p1, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    return p1
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 3438
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3439
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 3440
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 3441
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3442
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 3445
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3446
    .local v3, now:J
    const/4 v0, 0x0

    .line 3447
    .local v0, i:I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3448
    .local v2, index:I
    iget v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3449
    .local v1, iMax:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 3450
    add-int/lit8 v0, v0, 0x1

    .line 3451
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 3454
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 3456
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3458
    :cond_1
    return-void
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 3524
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 3525
    const/4 v0, 0x1

    .line 3532
    :goto_0
    return v0

    .line 3528
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3529
    const/4 v0, 0x0

    goto :goto_0

    .line 3532
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #calls: Landroid/widget/Editor;->isPositionVisible(II)Z
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;II)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 3433
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3434
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 3435
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/widget/Editor$BaiduEditorInjector;->dismiss()V

    .line 3482
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 3483
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3484
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 3485
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 3488
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 3490
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 3491
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 3510
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3511
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3513
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 3514
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 3516
    :cond_1
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 3772
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 3519
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3461
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 3780
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 3781
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 3621
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3622
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3623
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 3776
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 3777
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 3466
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 3467
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 3648
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_0

    .line 3649
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3651
    :cond_0
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 3768
    :cond_1
    :goto_0
    const/4 v11, 0x1

    return v11

    .line 3656
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v11

    invoke-direct {p0, v11}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 3657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 3658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3660
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v11}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v5

    .line 3661
    .local v5, positionListener:Landroid/widget/Editor$PositionListener;
    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v11

    iput v11, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 3662
    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v11

    iput v11, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 3663
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 3666
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Landroid/widget/Editor$HandleView;->mActivePointerId:I

    .line 3667
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    iget-boolean v11, v11, Landroid/widget/TextView;->mYlHandWriteOpened:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3668
    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    .line 3669
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    if-nez v11, :cond_2

    .line 3670
    new-instance v11, Landroid/widget/Editor$HandleView$CheckForLongPress;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Landroid/widget/Editor$HandleView$CheckForLongPress;-><init>(Landroid/widget/Editor$HandleView;Landroid/widget/Editor$1;)V

    iput-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    .line 3672
    :cond_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v11

    add-int/lit8 v9, v11, 0x50

    .line 3673
    .local v9, timeTap:I
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    int-to-long v12, v9

    invoke-virtual {p0, v11, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3680
    .end local v5           #positionListener:Landroid/widget/Editor$PositionListener;
    .end local v9           #timeTap:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 3681
    .local v7, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 3684
    .local v8, rawY:F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v12, v12

    sub-float v6, v11, v12

    .line 3685
    .local v6, previousVerticalOffset:F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v11, v11

    sub-float v11, v8, v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v12, v12

    sub-float v0, v11, v12

    .line 3687
    .local v0, currentVerticalOffset:F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v11, v6, v11

    if-gez v11, :cond_5

    .line 3688
    iget v11, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 3689
    .local v4, newVerticalOffset:F
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 3694
    :goto_1
    iget v11, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v11, v11

    add-float/2addr v11, v4

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3696
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v11, v7, v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v12, v12

    add-float v2, v11, v12

    .line 3697
    .local v2, newPosX:F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v11, v8, v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v3, v11, v12

    .line 3700
    .local v3, newPosY:F
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    iget-boolean v11, v11, Landroid/widget/TextView;->mYlHandWriteOpened:Z

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_8

    .line 3701
    iget-object v10, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3702
    .local v10, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v11, 0x3e8

    const/high16 v12, 0x457a

    invoke-virtual {v10, v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3703
    iget v11, p0, Landroid/widget/Editor$HandleView;->mActivePointerId:I

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    float-to-int v1, v11

    .line 3704
    .local v1, initialVelocity:I
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    if-eqz v11, :cond_3

    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_6

    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x96

    if-le v11, v12, :cond_6

    .line 3706
    const/4 v11, 0x2

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    .line 3707
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    .line 3708
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    if-eqz v11, :cond_4

    .line 3709
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    invoke-virtual {p0, v11}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3710
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    .line 3715
    :cond_4
    :goto_2
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 3716
    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-static {v11, p0}, Landroid/widget/Editor$BaiduEditorInjector;->update(Landroid/widget/TextView;Landroid/widget/Editor$HandleView;)V

    .line 3717
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 3691
    .end local v1           #initialVelocity:I
    .end local v2           #newPosX:F
    .end local v3           #newPosY:F
    .end local v4           #newVerticalOffset:F
    .end local v10           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_5
    iget v11, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 3692
    .restart local v4       #newVerticalOffset:F
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_1

    .line 3712
    .restart local v1       #initialVelocity:I
    .restart local v2       #newPosX:F
    .restart local v3       #newPosY:F
    .restart local v10       #velocityTracker:Landroid/view/VelocityTracker;
    :cond_6
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    if-nez v11, :cond_4

    .line 3713
    const/4 v11, 0x3

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    goto :goto_2

    .line 3718
    :cond_7
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    iget-boolean v11, v11, Landroid/widget/TextView;->mYlHandWriteOpened:Z

    if-eqz v11, :cond_1

    .line 3719
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hide()V

    .line 3720
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 3724
    .end local v1           #initialVelocity:I
    .end local v10           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_8
    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    invoke-static {p0}, Landroid/widget/Editor$BaiduEditorInjector;->update(Landroid/widget/Editor$HandleView;)V

    .line 3725
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_1

    .line 3726
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 3735
    .end local v0           #currentVerticalOffset:F
    .end local v2           #newPosX:F
    .end local v3           #newPosY:F
    .end local v4           #newVerticalOffset:F
    .end local v6           #previousVerticalOffset:F
    .end local v7           #rawX:F
    .end local v8           #rawY:F
    :pswitch_2
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    iget-boolean v11, v11, Landroid/widget/TextView;->mYlHandWriteOpened:Z

    if-eqz v11, :cond_a

    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_a

    .line 3736
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    if-eqz v11, :cond_9

    .line 3737
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    invoke-virtual {p0, v11}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3738
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    .line 3740
    :cond_9
    const/4 v11, -0x1

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    .line 3742
    :cond_a
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_b

    .line 3743
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 3744
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3747
    :cond_b
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    .line 3748
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    invoke-static {}, Landroid/widget/Editor$BaiduEditorInjector;->hideDelayed()V

    goto/16 :goto_0

    .line 3753
    :pswitch_3
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    iget-boolean v11, v11, Landroid/widget/TextView;->mYlHandWriteOpened:Z

    if-eqz v11, :cond_d

    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_d

    .line 3754
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    if-eqz v11, :cond_c

    .line 3755
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    invoke-virtual {p0, v11}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3756
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/widget/Editor$HandleView;->mCheckForLongPress:Landroid/widget/Editor$HandleView$CheckForLongPress;

    .line 3758
    :cond_c
    const/4 v11, -0x1

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchMode:I

    .line 3760
    :cond_d
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_e

    .line 3761
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 3762
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/widget/Editor$HandleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3765
    :cond_e
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 3654
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 6
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    const/4 v3, 0x1

    .line 3543
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 3544
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 3546
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 3568
    :cond_0
    :goto_0
    return-void

    .line 3550
    :cond_1
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v4, :cond_4

    move v2, v3

    .line 3551
    .local v2, offsetChanged:Z
    :goto_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    .line 3552
    :cond_2
    if-eqz v2, :cond_3

    .line 3553
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 3554
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 3556
    :cond_3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3558
    .local v1, line:I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    const/high16 v5, 0x3f00

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 3559
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    invoke-virtual {p0, v1}, Landroid/widget/Editor$HandleView;->recaculateHandleViewVerticalPosition(I)V

    .line 3562
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 3563
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 3565
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3566
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 3550
    .end local v1           #line:I
    .end local v2           #offsetChanged:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public show()V
    .locals 2

    .prologue
    .line 3470
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3479
    :goto_0
    return-void

    .line 3472
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 3475
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3476
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3478
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 3494
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 3495
    new-instance v0, Landroid/widget/Editor$BaiduActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$BaiduActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 3497
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 3498
    new-instance v0, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 3506
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3507
    return-void

    .line 3504
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 3415
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 3416
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 3417
    .local v0, isRtlCharAtOffset:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3418
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 3419
    return-void

    .line 3417
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 9
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 3572
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {p0, v5, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3573
    if-nez p3, :cond_0

    iget-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v5, :cond_7

    .line 3574
    :cond_0
    iget-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v5, :cond_3

    .line 3576
    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v5, :cond_1

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v5, :cond_2

    .line 3577
    :cond_1
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v6, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 3578
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v6, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v6, p2, v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3579
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 3580
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 3583
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 3586
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3587
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v1, p1, v5

    .line 3588
    .local v1, positionX:I
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v2, p2, v5

    .line 3590
    .local v2, positionY:I
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 3591
    .local v4, selStart:I
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 3592
    .local v3, selEnd:I
    const/4 v0, 0x0

    .line 3593
    .local v0, bInvalidSelection:Z
    instance-of v5, p0, Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v5, :cond_4

    instance-of v5, p0, Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v5, :cond_5

    .line 3594
    :cond_4
    if-ne v4, v3, :cond_5

    if-ne v4, v7, :cond_5

    .line 3595
    const/4 v0, 0x1

    .line 3598
    :cond_5
    if-eqz v0, :cond_8

    .line 3599
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3600
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3615
    .end local v0           #bInvalidSelection:Z
    .end local v1           #positionX:I
    .end local v2           #positionY:I
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_6
    :goto_0
    iput-boolean v8, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 3617
    :cond_7
    return-void

    .line 3602
    .restart local v0       #bInvalidSelection:Z
    .restart local v1       #positionX:I
    .restart local v2       #positionY:I
    .restart local v3       #selEnd:I
    .restart local v4       #selStart:I
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3604
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v1, v2, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 3606
    :cond_9
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 3610
    .end local v0           #bInvalidSelection:Z
    .end local v1           #positionX:I
    .end local v2           #positionY:I
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_a
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3611
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method

.method protected recaculateHandleViewVerticalPosition(I)V
    .locals 5
    .parameter "line"

    .prologue
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .local v1, layout:Landroid/text/Layout;
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .local v2, offsetToBaseLine:I
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v2           #offsetToBaseLine:I
    :cond_1
    return-void
.end method
