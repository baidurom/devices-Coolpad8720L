.class public Lcom/android/internal/widget/multiwaveview/GlowPadView;
.super Landroid/view/View;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/multiwaveview/GlowPadView$MyGesture;,
        Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;,
        Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HIDE_ANIMATION_DELAY:I = 0x0

.field private static final HIDE_ANIMATION_DURATION:I = 0x0

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0x0

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x0

.field private static final SHOW_ANIMATION_DURATION:I = 0x0

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlowPadView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final WAVE_ANIMATION_DURATION:I = 0x546


# instance fields
.field private HEIGHT_DY:I

.field private TIP_EDGE_WIDTH:I

.field private TIP_NUM_SIZE:I

.field private WIDTH_DX:I

.field private bitmap1:Landroid/graphics/Bitmap;

.field private bitmap2:Landroid/graphics/Bitmap;

.field isRunWallPaperLantern:Z

.field private mActiveTarget:I

.field private mAllowScaling:Z

.field private mAlwaysTrackFinger:Z

.field private mAngle:F

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/android/internal/widget/multiwaveview/Tweener;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mFirstItemOffset:F

.field private mFirstUnreadBitmap:Landroid/graphics/Bitmap;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mHandleLockDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mHorizontalInset:I

.field mImageAnimateIntent:Landroid/content/Intent;

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mMagneticTargets:Z

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewTargetResources:I

.field private mNewTargetResources1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

.field private mPointerId:I

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mRingScaleFactor:F

.field private mSecondUnreadBitmap:Landroid/graphics/Bitmap;

.field private mShowHandleBitmap:Z

.field private mShowTargetBitmap:Z

.field private mSnapMargin:F

.field private mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetResourceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUnlockBitmapIdFirst:I

.field private mUnlockBitmapIdSecond:I

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F

.field private mshowstate1:F

.field private mshowstate2:F

.field private nshowstate1:F

.field private nshowstate2:F

.field private str1:Ljava/lang/String;

.field private str2:Ljava/lang/String;

.field private strPhoneNum:Ljava/lang/String;

.field private strSmsNum:Ljava/lang/String;

.field private unreadInforNum1:I

.field private unreadInforNum2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 280
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 111
    new-instance v6, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;Lcom/android/internal/widget/multiwaveview/GlowPadView$1;)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 112
    new-instance v6, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;Lcom/android/internal/widget/multiwaveview/GlowPadView$1;)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 113
    new-instance v6, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;Lcom/android/internal/widget/multiwaveview/GlowPadView$1;)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 123
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 124
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 126
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 132
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    .line 135
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 136
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 137
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFirstItemOffset:F

    .line 138
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMagneticTargets:Z

    .line 141
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    .line 144
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mshowstate1:F

    .line 145
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->nshowstate1:F

    .line 147
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mshowstate2:F

    .line 148
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->nshowstate2:F

    .line 149
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowTargetBitmap:Z

    .line 150
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowHandleBitmap:Z

    .line 180
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.yulong.android.keyguardBackGournd.changed"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mImageAnimateIntent:Landroid/content/Intent;

    .line 181
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->isRunWallPaperLantern:Z

    .line 221
    new-instance v6, Lcom/android/internal/widget/multiwaveview/GlowPadView$1;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$1;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 228
    new-instance v6, Lcom/android/internal/widget/multiwaveview/GlowPadView$2;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$2;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 236
    new-instance v6, Lcom/android/internal/widget/multiwaveview/GlowPadView$3;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$3;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 243
    new-instance v6, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 262
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetResourceIds:Ljava/util/ArrayList;

    .line 268
    const/16 v6, 0x30

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGravity:I

    .line 269
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 283
    .local v4, res:Landroid/content/res/Resources;
    sget-object v6, Lcom/android/internal/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 284
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 285
    const/16 v6, 0xc

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 286
    const/16 v6, 0xe

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 287
    const/4 v6, 0x7

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFirstItemOffset:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFirstItemOffset:F

    .line 290
    const/16 v6, 0xd

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 292
    const/16 v6, 0xf

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 294
    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAllowScaling:Z

    .line 295
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v7, 0x1080720

    invoke-direct {v6, v4, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 296
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v7, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 297
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v7, 0x108071d

    invoke-direct {v6, v4, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleLockDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 298
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v7, 0x108071c

    invoke-direct {v6, v4, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 299
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v7, 0x4

    invoke-direct {p0, v0, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v7

    invoke-direct {v6, v4, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 302
    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    .line 303
    const/16 v6, 0x8

    iget-boolean v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMagneticTargets:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMagneticTargets:Z

    .line 305
    const/4 v6, 0x5

    invoke-direct {p0, v0, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v3

    .line 306
    .local v3, pointId:I
    if-eqz v3, :cond_3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 307
    .local v2, pointDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    .line 310
    const v6, 0x10807ab

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUnlockBitmapIdFirst:I

    .line 311
    const v6, 0x10807aa

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUnlockBitmapIdSecond:I

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUnlockBitmapIdFirst:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFirstUnreadBitmap:Landroid/graphics/Bitmap;

    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUnlockBitmapIdSecond:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSecondUnreadBitmap:Landroid/graphics/Bitmap;

    .line 317
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 318
    .local v1, outValue:Landroid/util/TypedValue;
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 319
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const v8, 0x10802fd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 320
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 321
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 322
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 323
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    const/4 v7, 0x4

    const v8, 0x10802df

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 324
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 325
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 326
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 330
    :cond_0
    const/16 v6, 0xa

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 331
    const-string v6, "GlowPadView"

    const-string v7, "--internalSetTargetResources 1--"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->internalSetTargetResources(Ljava/util/ArrayList;)V

    .line 335
    :cond_1
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 336
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify at least one target drawable"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 306
    .end local v1           #outValue:Landroid/util/TypedValue;
    .end local v2           #pointDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 340
    .restart local v1       #outValue:Landroid/util/TypedValue;
    .restart local v2       #pointDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 341
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    .line 342
    .local v5, resourceId:I
    if-nez v5, :cond_5

    .line 343
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify target descriptions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 345
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 349
    .end local v5           #resourceId:I
    :cond_6
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 350
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    .line 351
    .restart local v5       #resourceId:I
    if-nez v5, :cond_7

    .line 352
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify direction descriptions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 354
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 357
    .end local v5           #resourceId:I
    :cond_8
    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGravity:I

    .line 359
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    if-lez v6, :cond_9

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVibrateEnabled(Z)V

    .line 363
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->assignDefaultsIfNeeded()V

    .line 365
    new-instance v6, Lcom/android/internal/widget/multiwaveview/PointCloud;

    invoke-direct {v6, v2}, Lcom/android/internal/widget/multiwaveview/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    .line 366
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/PointCloud;->makePointCloud(FF)V

    .line 367
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v6, v6, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->setRadius(F)V

    .line 368
    new-instance v6, Landroid/view/GestureDetector;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/internal/widget/multiwaveview/GlowPadView$MyGesture;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$MyGesture;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    invoke-direct {v6, v7, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 369
    return-void

    .line 361
    :cond_9
    const/4 v6, 0x0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/multiwaveview/GlowPadView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/widget/multiwaveview/GlowPadView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/multiwaveview/GlowPadView;)Lcom/android/internal/widget/multiwaveview/PointCloud;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/multiwaveview/GlowPadView;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/multiwaveview/GlowPadView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/multiwaveview/GlowPadView;IFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/multiwaveview/GlowPadView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/multiwaveview/GlowPadView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/multiwaveview/GlowPadView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/multiwaveview/GlowPadView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/multiwaveview/GlowPadView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->internalSetTargetResources(Ljava/util/ArrayList;)V

    return-void
.end method

.method private announceTargets()V
    .locals 9

    .prologue
    .line 1520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1521
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1522
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1523
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1524
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1527
    const-string v6, "GlowPadView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "YLLOG: announceTargets()   targetDescription: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const-string v6, "GlowPadView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "YLLOG: announceTargets()   directionDescription: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1530
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1533
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1534
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1536
    :cond_2
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1216
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 1219
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1220
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 1223
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1224
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 1226
    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    .line 1229
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 1230
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1232
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1241
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    .line 1244
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1253
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    .line 1256
    :goto_1
    return-void

    .line 1234
    :pswitch_1
    iput v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1237
    :pswitch_2
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1246
    :sswitch_0
    iput v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1249
    :sswitch_1
    iput p2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1232
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1244
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private computeScaleFactor(IIII)F
    .locals 7
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "actualWidth"
    .parameter "actualHeight"

    .prologue
    const/high16 v4, 0x3f80

    .line 1266
    iget-boolean v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAllowScaling:Z

    if-nez v5, :cond_0

    .line 1302
    :goto_0
    return v4

    .line 1268
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 1269
    .local v1, layoutDirection:I
    iget v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGravity:I

    invoke-static {v5, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1271
    .local v0, absoluteGravity:I
    const/high16 v2, 0x3f80

    .line 1272
    .local v2, scaleX:F
    const/high16 v3, 0x3f80

    .line 1278
    .local v3, scaleY:F
    and-int/lit8 v5, v0, 0x7

    packed-switch v5, :pswitch_data_0

    .line 1284
    :pswitch_0
    if-le p1, p3, :cond_1

    .line 1285
    int-to-float v5, p3

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1290
    :cond_1
    :pswitch_1
    and-int/lit8 v5, v0, 0x70

    sparse-switch v5, :sswitch_data_0

    .line 1296
    if-le p2, p4, :cond_2

    .line 1297
    int-to-float v5, p4

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1302
    :cond_2
    :sswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    .line 1278
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1290
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 536
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 537
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 538
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 539
    .local v2, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .end local v2           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 542
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 559
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichTarget"

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->vibrate()V

    .line 550
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 553
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1506
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 562
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 563
    .local v0, activeTarget:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    move v1, v2

    .line 565
    .local v1, targetHit:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 568
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->highlightSelected(I)V

    .line 569
    iput-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowHandleBitmap:Z

    .line 572
    const/16 v2, 0x4b0

    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v3, v2, v5, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 573
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V

    .line 574
    iget-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    .line 576
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 584
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 585
    return-void

    .end local v1           #targetHit:Z
    :cond_1
    move v1, v3

    .line 563
    goto :goto_0

    .line 580
    .restart local v1       #targetHit:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v3, v3, v5, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 581
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 377
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlowRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method private getAngle(FI)F
    .locals 2
    .parameter "alpha"
    .parameter "i"

    .prologue
    .line 1429
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFirstItemOffset:F

    int-to-float v1, p2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 1555
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1556
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1557
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1558
    const-string v1, "GlowPadView"

    const-string v2, "The number of target drawables must be equal to the number of direction descriptions."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :goto_0
    return-object v0

    .line 1563
    :cond_1
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 1564
    :cond_2
    const-string v1, "GlowPadView"

    const-string v2, "index < 0 || index >= mDirectionDescriptions.size()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1567
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 2
    .parameter "a"
    .parameter "id"

    .prologue
    .line 372
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 373
    .local v0, tv:Landroid/util/TypedValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method private getRingHeight()F
    .locals 4

    .prologue
    .line 1327
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getRingWidth()F
    .locals 4

    .prologue
    .line 1323
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaledGlowRadiusSquared()F
    .locals 3

    .prologue
    .line 1511
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1512
    const v1, 0x3fa66666

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    mul-float v0, v1, v2

    .line 1516
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->square(F)F

    move-result v1

    return v1

    .line 1514
    .end local v0           #scaledTapRadius:F
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_0
.end method

.method private getSliceAngle()F
    .locals 4

    .prologue
    .line 1433
    const-wide v0, -0x3fe6de04abbbd2e8L

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 1539
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1540
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1541
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1542
    const-string v1, "GlowPadView"

    const-string v2, "The number of target drawables must be equal to the number of target descriptions."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :goto_0
    return-object v0

    .line 1547
    :cond_1
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 1548
    :cond_2
    const-string v1, "GlowPadView"

    const-string v2, "index < 0 || index >= mTargetDescriptions.size()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1551
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, -0x1

    .line 1051
    iput v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 1053
    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1054
    .local v0, actionIndex:I
    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 1055
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 1056
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1028
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1029
    .local v1, eventX:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1030
    .local v2, eventY:F
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 1031
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1032
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    .line 1037
    :goto_0
    return-void

    .line 1034
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointerId:I

    .line 1035
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 39
    .parameter "event"

    .prologue
    .line 1059
    const/4 v6, -0x1

    .line 1060
    .local v6, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 1061
    .local v12, historySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 1062
    .local v27, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1063
    .local v17, ntargets:I
    const/16 v31, 0x0

    .line 1064
    .local v31, x:F
    const/16 v32, 0x0

    .line 1065
    .local v32, y:F
    const/4 v5, 0x0

    .line 1066
    .local v5, activeAngle:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointerId:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1068
    .local v4, actionIndex:I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v4, v0, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    const/4 v14, 0x0

    .local v14, k:I
    :goto_1
    add-int/lit8 v33, v12, 0x1

    move/from16 v0, v33

    if-ge v14, v0, :cond_c

    .line 1073
    if-ge v14, v12, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v10

    .line 1075
    .local v10, eventX:F
    :goto_2
    if-ge v14, v12, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v11

    .line 1078
    .local v11, eventY:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    move/from16 v33, v0

    sub-float v29, v10, v33

    .line 1079
    .local v29, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    move/from16 v33, v0

    sub-float v30, v11, v33

    .line 1080
    .local v30, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v28, v0

    .line 1081
    .local v28, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    cmpl-float v33, v28, v33

    if-lez v33, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    div-float v18, v33, v28

    .line 1082
    .local v18, scale:F
    :goto_4
    mul-float v15, v29, v18

    .line 1083
    .local v15, limitX:F
    mul-float v16, v30, v18

    .line 1084
    .local v16, limitY:F
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 1086
    .local v8, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-nez v33, :cond_2

    .line 1087
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 1090
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_b

    .line 1092
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    move/from16 v34, v0

    sub-float v20, v33, v34

    .line 1093
    .local v20, snapRadius:F
    mul-float v19, v20, v20

    .line 1095
    .local v19, snapDistance2:F
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    move/from16 v0, v17

    if-ge v13, v0, :cond_b

    .line 1096
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1098
    .local v21, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFirstItemOffset:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    int-to-double v0, v13

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x3fe0

    sub-double v35, v35, v37

    const-wide/high16 v37, 0x4000

    mul-double v35, v35, v37

    const-wide v37, 0x400921fb54442d18L

    mul-double v35, v35, v37

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v37, v0

    div-double v35, v35, v37

    add-double v25, v33, v35

    .line 1099
    .local v25, targetMinRad:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFirstItemOffset:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    int-to-double v0, v13

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x3fe0

    add-double v35, v35, v37

    const-wide/high16 v37, 0x4000

    mul-double v35, v35, v37

    const-wide v37, 0x400921fb54442d18L

    mul-double v35, v35, v37

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v37, v0

    div-double v35, v35, v37

    add-double v23, v33, v35

    .line 1100
    .local v23, targetMaxRad:D
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_6

    .line 1101
    cmpl-double v33, v8, v25

    if-lez v33, :cond_3

    cmpg-double v33, v8, v23

    if-lez v33, :cond_5

    :cond_3
    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v8

    cmpl-double v33, v33, v25

    if-lez v33, :cond_4

    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v8

    cmpg-double v33, v33, v23

    if-lez v33, :cond_5

    :cond_4
    const-wide v33, 0x401921fb54442d18L

    sub-double v33, v8, v33

    cmpl-double v33, v33, v25

    if-lez v33, :cond_a

    const-wide v33, 0x401921fb54442d18L

    sub-double v33, v8, v33

    cmpg-double v33, v33, v23

    if-gtz v33, :cond_a

    :cond_5
    const/4 v7, 0x1

    .line 1107
    .local v7, angleMatches:Z
    :goto_6
    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v33

    cmpl-float v33, v33, v19

    if-lez v33, :cond_6

    .line 1108
    move v6, v13

    .line 1095
    .end local v7           #angleMatches:Z
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 1073
    .end local v8           #angleRad:D
    .end local v10           #eventX:F
    .end local v11           #eventY:F
    .end local v13           #i:I
    .end local v15           #limitX:F
    .end local v16           #limitY:F
    .end local v18           #scale:F
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v23           #targetMaxRad:D
    .end local v25           #targetMinRad:D
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    goto/16 :goto_2

    .line 1075
    .restart local v10       #eventX:F
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    goto/16 :goto_3

    .line 1081
    .restart local v11       #eventY:F
    .restart local v28       #touchRadius:F
    .restart local v29       #tx:F
    .restart local v30       #ty:F
    :cond_9
    const/high16 v18, 0x3f80

    goto/16 :goto_4

    .line 1101
    .restart local v8       #angleRad:D
    .restart local v13       #i:I
    .restart local v15       #limitX:F
    .restart local v16       #limitY:F
    .restart local v18       #scale:F
    .restart local v19       #snapDistance2:F
    .restart local v20       #snapRadius:F
    .restart local v21       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .restart local v23       #targetMaxRad:D
    .restart local v25       #targetMinRad:D
    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    .line 1114
    .end local v13           #i:I
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v23           #targetMaxRad:D
    .end local v25           #targetMinRad:D
    :cond_b
    move/from16 v31, v15

    .line 1115
    move/from16 v32, v16

    .line 1072
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1118
    .end local v8           #angleRad:D
    .end local v10           #eventX:F
    .end local v11           #eventY:F
    .end local v15           #limitX:F
    .end local v16           #limitY:F
    .end local v18           #scale:F
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 1122
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_10

    .line 1123
    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 1124
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1130
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v0, v6, :cond_f

    .line 1132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_d

    .line 1133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1134
    .restart local v21       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v33, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 1135
    sget-object v33, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 1142
    .end local v21           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_d
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_f

    .line 1143
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1144
    .restart local v21       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v33, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 1145
    sget-object v33, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 1150
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_f

    .line 1151
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 1152
    .local v22, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1156
    .end local v21           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v22           #targetContentDescription:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    goto/16 :goto_0

    .line 1126
    :cond_10
    const/16 v33, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 1127
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto/16 :goto_7
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1042
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointerId:I

    if-ne v1, v2, :cond_0

    .line 1043
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 1045
    :cond_0
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 516
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Lcom/android/internal/widget/multiwaveview/Tweener;)Z

    .line 524
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Lcom/android/internal/widget/multiwaveview/Tweener;)Z

    .line 532
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 533
    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 18
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 602
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    monitor-enter v11

    .line 603
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 606
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 607
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    .line 608
    .local v3, duration:I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 610
    .local v2, delay:I
    :goto_1
    if-eqz p2, :cond_2

    const/high16 v9, 0x3f80

    .line 612
    .local v9, targetScale:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 613
    .local v6, length:I
    sget-object v5, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 614
    .local v5, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v6, :cond_3

    .line 615
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 616
    .local v8, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v10, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 617
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v12, v3

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "scaleX"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string/jumbo v16, "scaleY"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string/jumbo v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v8, v12, v13, v14}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Lcom/android/internal/widget/multiwaveview/Tweener;)Z

    .line 614
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 607
    .end local v2           #delay:I
    .end local v3           #duration:I
    .end local v4           #i:I
    .end local v5           #interpolator:Landroid/animation/TimeInterpolator;
    .end local v6           #length:I
    .end local v8           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v9           #targetScale:F
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 608
    .restart local v3       #duration:I
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 610
    .restart local v2       #delay:I
    :cond_2
    const v9, 0x3f4ccccd

    goto/16 :goto_2

    .line 626
    .restart local v4       #i:I
    .restart local v5       #interpolator:Landroid/animation/TimeInterpolator;
    .restart local v6       #length:I
    .restart local v9       #targetScale:F
    :cond_3
    if-eqz p2, :cond_4

    const/high16 v7, 0x3f80

    .line 628
    .local v7, ringScaleTarget:F
    :goto_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    mul-float/2addr v7, v10

    .line 629
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    int-to-long v13, v3

    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "ease"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v5, v15, v16

    const/16 v16, 0x2

    const-string v17, "alpha"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string/jumbo v17, "scaleX"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string/jumbo v17, "scaleY"

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x8

    const-string v17, "delay"

    aput-object v17, v15, v16

    const/16 v16, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0xa

    const-string/jumbo v17, "onUpdate"

    aput-object v17, v15, v16

    const/16 v16, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0xc

    const-string/jumbo v17, "onComplete"

    aput-object v17, v15, v16

    const/16 v16, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14, v15}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Lcom/android/internal/widget/multiwaveview/Tweener;)Z

    .line 638
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 639
    monitor-exit v11

    .line 640
    return-void

    .line 626
    .end local v7           #ringScaleTarget:F
    :cond_4
    const/high16 v7, 0x3f00

    goto/16 :goto_4

    .line 639
    .end local v2           #delay:I
    .end local v3           #duration:I
    .end local v4           #i:I
    .end local v5           #interpolator:Landroid/animation/TimeInterpolator;
    .end local v6           #length:I
    .end local v9           #targetScale:F
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method private hideUnselected(I)V
    .locals 3
    .parameter "active"

    .prologue
    .line 594
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 595
    if-eq v0, p1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .parameter "activeTarget"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 590
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideUnselected(I)V

    .line 591
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 8
    .parameter "resourceId"

    .prologue
    .line 708
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 709
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    iput-object v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 710
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetResourceId:I

    .line 712
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 713
    .local v3, maxWidth:I
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v2

    .line 714
    .local v2, maxHeight:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 715
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 716
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 717
    .local v4, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 718
    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    .end local v4           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 721
    :cond_1
    iput v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    .line 722
    iput v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    .line 723
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 728
    :goto_1
    return-void

    .line 725
    :cond_2
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 726
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_1
.end method

.method private internalSetTargetResources(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 731
    .local p1, resourceIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v6, "GlowPadView"

    const-string v7, "--------internalSetTargetResources---"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->loadDrawableArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 733
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    iput-object v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 735
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetResourceIds:Ljava/util/ArrayList;

    .line 737
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 738
    .local v3, maxWidth:I
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v2

    .line 739
    .local v2, maxHeight:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 740
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 741
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 742
    .local v4, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 743
    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 740
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    .end local v4           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 746
    :cond_1
    iput v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    .line 747
    iput v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    .line 748
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 753
    :goto_1
    return-void

    .line 750
    :cond_2
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 751
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_1
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1571
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1572
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1573
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1574
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1575
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1576
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1578
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1579
    return-object v4
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 8
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 686
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 687
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 688
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 689
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 690
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 691
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    invoke-direct {v5, v4, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 692
    .local v5, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 691
    .end local v5           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 694
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 695
    return-object v2
.end method

.method private loadDrawableArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    .local p1, targetIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 700
    .local v2, res:Landroid/content/res/Resources;
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    .local v0, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 702
    new-instance v3, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    invoke-direct {v3, v2, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 703
    .local v3, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    .end local v3           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 705
    :cond_1
    return-object v0
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6
    .parameter "res"
    .parameter "existingResourceId"
    .parameter "newResourceId"

    .prologue
    .line 1614
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1615
    :cond_0
    const/4 v2, 0x0

    .line 1633
    :cond_1
    :goto_0
    return v2

    .line 1618
    :cond_2
    const/4 v2, 0x0

    .line 1619
    .local v2, result:Z
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1620
    .local v0, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1621
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1622
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1623
    .local v4, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 1624
    invoke-virtual {v4, p1, p3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1625
    const/4 v2, 0x1

    .line 1621
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1629
    .end local v4           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_4
    if-eqz v2, :cond_1

    .line 1630
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 435
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 444
    move v0, v1

    .line 446
    :goto_0
    return v0

    .line 437
    :sswitch_0
    move v0, p2

    .line 438
    goto :goto_0

    .line 440
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 441
    goto :goto_0

    .line 435
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 1186
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 1187
    if-eqz p1, :cond_0

    .line 1188
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->vibrate()V

    .line 1190
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGrabbedState:I

    .line 1191
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 1192
    if-nez p1, :cond_2

    .line 1193
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 1197
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1200
    :cond_1
    return-void

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 498
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Lcom/android/internal/widget/multiwaveview/Tweener;)Z

    .line 504
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Lcom/android/internal/widget/multiwaveview/Tweener;)Z

    .line 510
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 511
    return-void
.end method

.method private showTargets(Z)V
    .locals 14
    .parameter "animate"

    .prologue
    const/high16 v13, 0x3f80

    const/4 v1, 0x0

    .line 643
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    monitor-enter v7

    .line 644
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 645
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 646
    if-eqz p1, :cond_1

    move v0, v1

    .line 647
    .local v0, delay:I
    :goto_0
    if-eqz p1, :cond_0

    .line 648
    .local v1, duration:I
    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 649
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 650
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 651
    .local v5, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 652
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v8, v1

    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/high16 v12, 0x3f80

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const/high16 v12, 0x3f80

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const/high16 v12, 0x3f80

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string/jumbo v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v12, v10, v11

    invoke-static {v5, v8, v9, v10}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Lcom/android/internal/widget/multiwaveview/Tweener;)Z

    .line 649
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    move v0, v1

    .line 646
    goto :goto_0

    .line 661
    .restart local v0       #delay:I
    .restart local v1       #duration:I
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_2
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    mul-float v4, v6, v13

    .line 662
    .local v4, ringScale:F
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    int-to-long v9, v1

    const/16 v11, 0xe

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ease"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "alpha"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/high16 v13, 0x3f80

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string/jumbo v13, "scaleX"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string/jumbo v13, "scaleY"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "delay"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string/jumbo v13, "onUpdate"

    aput-object v13, v11, v12

    const/16 v12, 0xb

    iget-object v13, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v13, v11, v12

    const/16 v12, 0xc

    const-string/jumbo v13, "onComplete"

    aput-object v13, v11, v12

    const/16 v12, 0xd

    iget-object v13, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v13, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Lcom/android/internal/widget/multiwaveview/Tweener;)Z

    .line 671
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 672
    monitor-exit v7

    .line 673
    return-void

    .line 672
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #ringScale:F
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 1502
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 7
    .parameter "duration"
    .parameter "alpha"

    .prologue
    const/4 v6, 0x0

    .line 929
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 930
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 931
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/internal/widget/multiwaveview/Tweener;

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 934
    :cond_0
    int-to-long v1, p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ease"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    sget-object v5, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "alpha"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/high16 v5, 0x437f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "delay"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 938
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 940
    :cond_1
    return-void
.end method

.method private startWaveAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v1, 0x3f80

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 876
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 877
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 878
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 879
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v7

    sget-object v5, Lcom/android/internal/widget/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v5, v4, v9

    const-string v5, "delay"

    aput-object v5, v4, v10

    const/4 v5, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/android/internal/widget/multiwaveview/GlowPadView$5;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$5;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Lcom/android/internal/widget/multiwaveview/Tweener;)Z

    .line 892
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v7

    sget-object v5, Lcom/android/internal/widget/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v5, v4, v9

    const-string v5, "delay"

    aput-object v5, v4, v10

    const/4 v5, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/android/internal/widget/multiwaveview/GlowPadView$6;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$6;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Lcom/android/internal/widget/multiwaveview/Tweener;)Z

    .line 903
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 904
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 870
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 871
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 872
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 873
    return-void
.end method

.method private switchToState(IFF)V
    .locals 6
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 450
    packed-switch p1, :pswitch_data_0

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 452
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 453
    invoke-direct {p0, v2, v2, v1, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 454
    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 455
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 456
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleLockDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 461
    :pswitch_1
    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 465
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 466
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleLockDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 467
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 468
    invoke-direct {p0, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->showTargets(Z)V

    .line 469
    const/16 v0, 0xc8

    invoke-direct {p0, v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 470
    invoke-direct {p0, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 471
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->announceTargets()V

    goto :goto_0

    .line 477
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleLockDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 479
    invoke-direct {p0, v2, v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 484
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleLockDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 486
    invoke-direct {p0, v2, v2, v1, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 490
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->doFinish()V

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 1203
    iget v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v3

    .line 1204
    .local v0, tx:F
    iget v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v3

    .line 1205
    .local v1, ty:F
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 1207
    :cond_0
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 1208
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1209
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    .line 1212
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateGlowPosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x3f80

    .line 1016
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v2

    sub-float v0, p1, v2

    .line 1017
    .local v0, dx:F
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v2

    sub-float v1, p2, v2

    .line 1018
    .local v1, dy:F
    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v0, v2

    .line 1019
    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    .line 1020
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v2, v2, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->setX(F)V

    .line 1021
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v2, v2, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->setY(F)V

    .line 1022
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 1023
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 1024
    return-void
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/multiwaveview/PointCloud;->setCenter(FF)V

    .line 1438
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1439
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1440
    return-void
.end method

.method private updateTargetPosition(IFF)V
    .locals 2
    .parameter "i"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSliceAngle()F

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getAngle(FI)F

    move-result v0

    .line 1376
    .local v0, angle:F
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateTargetPosition(IFFF)V

    .line 1377
    return-void
.end method

.method private updateTargetPosition(IFFF)V
    .locals 11
    .parameter "i"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"

    .prologue
    const/high16 v10, 0x4180

    const/high16 v9, 0x4000

    .line 1380
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getRingWidth()F

    move-result v8

    div-float v2, v8, v9

    .line 1381
    .local v2, placementRadiusX:F
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getRingHeight()F

    move-result v8

    div-float v3, v8, v9

    .line 1382
    .local v3, placementRadiusY:F
    if-ltz p1, :cond_1

    .line 1383
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1384
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1385
    .local v4, targetIcon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v4, p2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1386
    invoke-virtual {v4, p3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1387
    float-to-double v8, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v2

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 1388
    float-to-double v8, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 1389
    float-to-double v8, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v6, v2, v8

    .line 1390
    .local v6, x:F
    float-to-double v8, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v7, v2, v8

    .line 1391
    .local v7, y:F
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->unreadInforNum2:I

    if-lez v8, :cond_0

    .line 1392
    const/4 v8, 0x1

    if-ne p1, v8, :cond_0

    .line 1395
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->unreadInforNum2:I

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getNumTip(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->bitmap2:Landroid/graphics/Bitmap;

    .line 1396
    add-float v8, p2, v6

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mshowstate1:F

    .line 1397
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8, v10}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 1398
    .local v0, nshowstate1Offset:I
    sub-float v8, p3, v7

    int-to-float v9, v0

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->nshowstate1:F

    .line 1401
    .end local v0           #nshowstate1Offset:I
    :cond_0
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->unreadInforNum1:I

    if-lez v8, :cond_1

    .line 1402
    const/4 v8, 0x3

    if-ne p1, v8, :cond_1

    .line 1404
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->unreadInforNum1:I

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getNumTip(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->bitmap1:Landroid/graphics/Bitmap;

    .line 1405
    add-float v8, p2, v6

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mshowstate2:F

    .line 1406
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8, v10}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 1407
    .local v1, nshowstate2Offset:I
    add-float v8, p3, v7

    int-to-float v9, v1

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->nshowstate2:F

    .line 1411
    .end local v1           #nshowstate2Offset:I
    .end local v4           #targetIcon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v5           #targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_1
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 1
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1414
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateTargetPositions(FFZ)V

    .line 1415
    return-void
.end method

.method private updateTargetPositions(FFZ)V
    .locals 4
    .parameter "centerX"
    .parameter "centerY"
    .parameter "skipActive"

    .prologue
    .line 1418
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1419
    .local v2, size:I
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSliceAngle()F

    move-result v0

    .line 1421
    .local v0, alpha:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1422
    if-eqz p3, :cond_0

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    if-eq v1, v3, :cond_1

    .line 1423
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getAngle(FI)F

    move-result v3

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateTargetPosition(IFFF)V

    .line 1421
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1426
    :cond_2
    return-void
.end method

.method private vibrate()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 676
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    .local v0, hapticEnabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 682
    :cond_0
    return-void

    .line 676
    .end local v0           #hapticEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dipValue"

    .prologue
    .line 1714
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1715
    .local v0, scale:F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getNumTip(I)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "num"

    .prologue
    .line 1718
    const/4 v8, 0x0

    .line 1720
    .local v8, mTipBubble:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x108065b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1723
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1724
    .local v12, tipWidth:I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 1725
    .local v11, tipHeight:I
    const/16 v16, 0x1b

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;->TIP_NUM_SIZE:I

    .line 1726
    const/16 v16, 0xe

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;->TIP_EDGE_WIDTH:I

    .line 1727
    const/16 v16, -0x5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;->WIDTH_DX:I

    .line 1728
    const/16 v16, -0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;->HEIGHT_DY:I

    .line 1741
    const/4 v3, 0x0

    .line 1742
    .local v3, bitmap:Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1743
    .local v13, unReadNumStr:Ljava/lang/String;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 1744
    .local v9, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->TIP_NUM_SIZE:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1745
    const/16 v16, 0xff

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1746
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1747
    sget-object v16, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1749
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1750
    .local v4, bounds:Landroid/graphics/Rect;
    const/16 v16, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v13, v0, v1, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1752
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->TIP_EDGE_WIDTH:I

    .line 1753
    .local v10, tipEdgeWidth:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->WIDTH_DX:I

    .line 1754
    .local v15, widthDx:I
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int/lit8 v16, v16, 0x1

    mul-int/lit8 v17, v10, 0x2

    add-int v16, v16, v17

    add-int v14, v16, v15

    .line 1757
    .local v14, width:I
    if-ge v14, v12, :cond_0

    .line 1758
    move v14, v12

    .line 1761
    :cond_0
    move v6, v11

    .line 1762
    .local v6, height:I
    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    invoke-static {v14, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1764
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1766
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v8, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1771
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    sub-int v18, v12, v10

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v10, v1, v2, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    sub-int v19, v14, v10

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v10, v1, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v8, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1775
    new-instance v16, Landroid/graphics/Rect;

    sub-int v17, v12, v10

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    sub-int v18, v14, v10

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v14, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v8, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1779
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->HEIGHT_DY:I

    .line 1780
    .local v7, heithDy:I
    const/high16 v16, -0x100

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1781
    div-int/lit8 v16, v14, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    add-int v17, v17, v6

    div-int/lit8 v17, v17, 0x2

    add-int v17, v17, v7

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v13, v0, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1785
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1786
    div-int/lit8 v16, v14, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    add-int v17, v17, v6

    div-int/lit8 v17, v17, 0x2

    add-int v17, v17, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v13, v0, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1789
    return-object v3
.end method

.method public getResourceIdForTarget(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 1583
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1584
    .local v0, drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0
.end method

.method protected getScaledSuggestedMinimumHeight()I
    .locals 4

    .prologue
    .line 427
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getScaledSuggestedMinimumWidth()I
    .locals 4

    .prologue
    .line 419
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 1603
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1604
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1605
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1609
    .end local v0           #i:I
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :goto_1
    return v0

    .line 1603
    .restart local v0       #i:I
    .restart local v1       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1609
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetResourceId:I

    return v0
.end method

.method public getTargetResourceIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetResourceIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v12, -0x100

    const/high16 v13, 0x41f0

    .line 1445
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/multiwaveview/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1446
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1447
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1448
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1449
    .local v4, ntargets:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 1450
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1451
    .local v8, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v8, :cond_2

    .line 1452
    iget-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowTargetBitmap:Z

    if-eqz v9, :cond_2

    .line 1454
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1455
    .local v0, d:Landroid/graphics/Paint;
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1456
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->bitmap2:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    .line 1458
    const-string v9, "GlowPadView"

    const-string v10, "------bitmap2 != null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->bitmap2:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mshowstate1:F

    iget v11, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->nshowstate1:F

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1461
    :cond_0
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->bitmap1:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    .line 1462
    const-string v9, "GlowPadView"

    const-string v10, "------bitmap1 != null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->bitmap1:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mshowstate2:F

    iget v11, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->nshowstate2:F

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1466
    :cond_1
    invoke-virtual {v8, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1449
    .end local v0           #d:Landroid/graphics/Paint;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1472
    .end local v8           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_3
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAngle:F

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setRotate(F)V

    .line 1473
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1474
    iget v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAngle:F

    const/high16 v10, 0x4000

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAngle:F

    .line 1475
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleLockDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1477
    iget-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowHandleBitmap:Z

    if-eqz v9, :cond_5

    .line 1478
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1479
    .restart local v0       #d:Landroid/graphics/Paint;
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1481
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->bitmap2:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_4

    .line 1482
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v9}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3ecccccd

    mul-float v5, v9, v10

    .line 1483
    .local v5, r:F
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x4194

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dip2px(Landroid/content/Context;F)I

    move-result v6

    .line 1484
    .local v6, secondUnreadBitmapoffsetX:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v9, v13}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dip2px(Landroid/content/Context;F)I

    move-result v7

    .line 1485
    .local v7, secondUnreadBitmapoffsetY:I
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSecondUnreadBitmap:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    int-to-float v11, v6

    add-float/2addr v10, v11

    iget v11, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    int-to-float v12, v7

    sub-float/2addr v11, v12

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1488
    .end local v5           #r:F
    .end local v6           #secondUnreadBitmapoffsetX:I
    .end local v7           #secondUnreadBitmapoffsetY:I
    :cond_4
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->bitmap1:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_5

    .line 1489
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x4220

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 1490
    .local v1, firstUnreadBitmapoffsetX:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v9, v13}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 1491
    .local v2, firstUnreadBitmapoffsetY:I
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFirstUnreadBitmap:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    int-to-float v11, v1

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    int-to-float v12, v2

    sub-float/2addr v11, v12

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1494
    .end local v0           #d:Landroid/graphics/Paint;
    .end local v1           #firstUnreadBitmapoffsetX:I
    .end local v2           #firstUnreadBitmapoffsetY:I
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1495
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1161
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1163
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1174
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1175
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1177
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1178
    return v2

    .line 1165
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1168
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1171
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1163
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1332
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1333
    sub-int v5, p4, p2

    .line 1334
    .local v5, width:I
    sub-int v0, p5, p3

    .line 1338
    .local v0, height:I
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getRingWidth()F

    move-result v4

    .line 1339
    .local v4, placementWidth:F
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getRingHeight()F

    move-result v3

    .line 1340
    .local v3, placementHeight:F
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    int-to-float v6, v6

    int-to-float v7, v5

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1342
    .local v1, newWaveCenterX:F
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    int-to-float v6, v6

    int-to-float v7, v0

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1345
    .local v2, newWaveCenterY:F
    iget-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    if-eqz v6, :cond_0

    .line 1346
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 1347
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 1348
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 1351
    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1352
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1354
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/multiwaveview/PointCloud;->setScale(F)V

    .line 1356
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1357
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1358
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleLockDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1359
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleLockDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1361
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1362
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDownDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1364
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 1365
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    .line 1366
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1368
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    .line 1369
    iput v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    .line 1372
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1307
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 1308
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 1309
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 1310
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 1312
    .local v0, computedHeight:I
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->computeScaleFactor(IIII)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    .line 1315
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getScaledSuggestedMinimumWidth()I

    move-result v5

    .line 1316
    .local v5, scaledWidth:I
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getScaledSuggestedMinimumHeight()I

    move-result v4

    .line 1318
    .local v4, scaledHeight:I
    sub-int v6, v1, v5

    sub-int v7, v0, v4

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->computeInsets(II)V

    .line 1319
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1320
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 944
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 945
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 946
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 947
    .local v7, y:F
    const/4 v5, 0x0

    .line 948
    .local v5, handled:Z
    iget v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v2, v6, v10

    .line 949
    .local v2, dx1:F
    iget v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v4, v7, v10

    .line 950
    .local v4, dy2:F
    invoke-direct {p0, v2, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v10

    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_0

    .line 951
    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v10, :cond_0

    .line 952
    const-string v10, "GlowPadView"

    const-string v11, "...........................onTouchEvent onlongpress is done"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 956
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1004
    :goto_0
    :pswitch_0
    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mImageAnimateIntent:Landroid/content/Intent;

    const-string v10, "isRunThread"

    iget-boolean v11, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->isRunWallPaperLantern:Z

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1006
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1008
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mImageAnimateIntent:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1011
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1012
    if-eqz v5, :cond_3

    :goto_1
    return v8

    .line 959
    :pswitch_1
    const-string v10, "GlowPadView"

    const-string v11, "*** DOWN ***"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v1, v6, v10

    .line 961
    .local v1, dx:F
    iget v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v3, v7, v10

    .line 962
    .local v3, dy:F
    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v10

    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_2

    .line 963
    iput-boolean v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowTargetBitmap:Z

    .line 964
    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowHandleBitmap:Z

    .line 965
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 966
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 967
    const/4 v5, 0x1

    .line 972
    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->isRunWallPaperLantern:Z

    goto :goto_0

    .line 969
    :cond_2
    const-string v8, "GlowPadView"

    const-string/jumbo v10, "the touch is out of circle"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 970
    goto :goto_1

    .line 976
    .end local v1           #dx:F
    .end local v3           #dy:F
    :pswitch_2
    const-string v10, "GlowPadView"

    const-string v11, "*** MOVE ***"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 978
    const/4 v5, 0x1

    .line 979
    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->isRunWallPaperLantern:Z

    goto :goto_0

    .line 984
    :pswitch_3
    const-string v10, "GlowPadView"

    const-string v11, "*** UP ***"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowTargetBitmap:Z

    .line 986
    iput-boolean v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowHandleBitmap:Z

    .line 987
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 988
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 989
    const/4 v5, 0x1

    .line 990
    iput-boolean v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->isRunWallPaperLantern:Z

    goto :goto_0

    .line 994
    :pswitch_4
    const-string v10, "GlowPadView"

    const-string v11, "*** CANCEL ***"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iput-boolean v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowTargetBitmap:Z

    .line 996
    iput-boolean v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowHandleBitmap:Z

    .line 997
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 998
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 999
    const/4 v5, 0x1

    .line 1000
    iput-boolean v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->isRunWallPaperLantern:Z

    goto/16 :goto_0

    .line 1012
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_1

    .line 956
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 851
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    if-lez v4, :cond_1

    .line 852
    const/4 v0, 0x1

    .line 853
    .local v0, doWaveAnimation:Z
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 856
    .local v3, waveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 857
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    .line 858
    .local v1, t:J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 859
    const/4 v0, 0x0

    .line 863
    .end local v1           #t:J
    :cond_0
    if-eqz v0, :cond_1

    .line 864
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->startWaveAnimation()V

    .line 867
    .end local v0           #doWaveAnimation:Z
    .end local v3           #waveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;
    :cond_1
    return-void
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 10
    .parameter "component"
    .parameter "name"
    .parameter "existingResId"

    .prologue
    .line 1646
    if-nez p3, :cond_1

    const/4 v5, 0x0

    .line 1674
    :cond_0
    :goto_0
    return v5

    .line 1648
    :cond_1
    const/4 v5, 0x0

    .line 1649
    .local v5, replaced:Z
    if-eqz p1, :cond_2

    .line 1651
    :try_start_0
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1653
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 1655
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 1656
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1657
    .local v1, iconResId:I
    if-eqz v1, :cond_2

    .line 1658
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1659
    .local v6, res:Landroid/content/res/Resources;
    invoke-direct {p0, v6, p3, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1670
    .end local v1           #iconResId:I
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_2
    :goto_1
    if-nez v5, :cond_0

    .line 1672
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, p3, p3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    goto :goto_0

    .line 1662
    :catch_0
    move-exception v0

    .line 1663
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "GlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1665
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 1666
    .local v3, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "GlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 913
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 914
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 915
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 916
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 918
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mShowTargetBitmap:Z

    if-eqz v0, :cond_0

    .line 919
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->showTargets(Z)V

    .line 924
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 925
    invoke-static {}, Lcom/android/internal/widget/multiwaveview/Tweener;->reset()V

    .line 926
    return-void

    .line 921
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    goto :goto_0
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 398
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 399
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 818
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    .line 819
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 822
    :cond_0
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 1588
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1589
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1590
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1591
    invoke-virtual {v1, p2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 1595
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void

    .line 1588
    .restart local v1       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setFirstUnReadNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 1679
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->unreadInforNum1:I

    .line 1681
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->strPhoneNum:Ljava/lang/String;

    .line 1682
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->unreadInforNum1:I

    if-gtz v0, :cond_0

    .line 1683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->bitmap1:Landroid/graphics/Bitmap;

    .line 1686
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 1687
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1688
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 1499
    return-void
.end method

.method public setSecondUnReadNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 1690
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->unreadInforNum2:I

    .line 1692
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->strSmsNum:Ljava/lang/String;

    .line 1694
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->unreadInforNum2:I

    if-gtz v0, :cond_0

    .line 1695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->bitmap2:Landroid/graphics/Bitmap;

    .line 1697
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 1698
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1699
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 797
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    .line 798
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 801
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 763
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    .line 767
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setTargetResources(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, resourceIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 773
    const-string v0, "GlowPadView"

    const-string v1, "---mAnimatingTargets = true---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    .line 780
    :goto_0
    return-void

    .line 776
    :cond_0
    const-string v0, "GlowPadView"

    const-string v1, "--internalSetTargetResources 3--"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources1:Ljava/util/ArrayList;

    .line 778
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->internalSetTargetResources(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setUnlockBitmapIdFirst(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 1707
    if-eqz p1, :cond_0

    .line 1708
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUnlockBitmapIdFirst:I

    .line 1709
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUnlockBitmapIdFirst:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFirstUnreadBitmap:Landroid/graphics/Bitmap;

    .line 1711
    :cond_0
    return-void
.end method

.method public setUnlockBitmapIdSecond(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 1701
    if-eqz p1, :cond_0

    .line 1702
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUnlockBitmapIdSecond:I

    .line 1703
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUnlockBitmapIdSecond:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSecondUnreadBitmap:Landroid/graphics/Bitmap;

    .line 1705
    :cond_0
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 839
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 840
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 844
    :goto_0
    return-void

    .line 842
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 390
    return-void
.end method
