.class public Lcom/android/internal/policy/impl/keyguard/UnlockView;
.super Landroid/widget/FrameLayout;
.source "UnlockView.java"


# static fields
.field public static final ANGLEADD:F = 2.0f

.field public static final INCIRCLE:I = 0x1

.field public static final MAXANGLEADD:F = 10.0f

.field public static final OUTCIRCLE:I = 0x2

.field public static final STARTSHOW:I


# instance fields
.field private mCircle1:Landroid/widget/ImageView;

.field private mCircle2:Landroid/widget/ImageView;

.field private mCircle3:Landroid/widget/ImageView;

.field private mCircleAlpha:F

.field private mCircleAngle:F

.field private mCircleSize:I

.field private mCurAngle1:F

.field private mCurAngle2:F

.field private mCurAngle3:F

.field private mDownX:F

.field private mDownY:F

.field private mLock:Landroid/widget/ImageView;

.field private mLockCircle:Landroid/widget/ImageView;

.field private mLockSize:I

.field public mLockState:I

.field private mMoveAngle:F

.field private mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

.field private mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

.field private mStartShow1:Landroid/animation/ValueAnimator;

.field private mStartShow2:Landroid/animation/ValueAnimator;

.field private mStartShow3:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v1, -0x2

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x5

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 51
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    .line 54
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    const v2, 0x1080716

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    const v2, 0x1080718

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    const v2, 0x108071a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    .line 64
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 65
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 66
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 67
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 68
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 69
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 71
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockCircle:Landroid/widget/ImageView;

    .line 72
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockCircle:Landroid/widget/ImageView;

    const v2, 0x1080720

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockCircle:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockSize:I

    .line 78
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLock:Landroid/widget/ImageView;

    .line 79
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLock:Landroid/widget/ImageView;

    const v2, 0x108071d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLock:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow1:Landroid/animation/ValueAnimator;

    .line 83
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow1:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/UnlockView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/UnlockView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/UnlockView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow1:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 97
    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow2:Landroid/animation/ValueAnimator;

    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow2:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/UnlockView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/UnlockView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/UnlockView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow2:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 112
    new-array v1, v4, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow3:Landroid/animation/ValueAnimator;

    .line 113
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow3:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/UnlockView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/UnlockView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/UnlockView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 132
    return-void

    .line 82
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
        0x66t 0x66t 0x86t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 97
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
        0x66t 0x66t 0x86t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 112
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
        0x66t 0x66t 0x86t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Lcom/android/internal/policy/impl/keyguard/UnlockObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Lcom/android/internal/policy/impl/keyguard/UnlockObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    return-object v0
.end method

.method private setDestAngle(FF)V
    .locals 6
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/high16 v5, 0x4334

    const/high16 v4, 0x43b4

    .line 255
    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    .line 256
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 257
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    .line 260
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    .line 261
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 262
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    .line 267
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    .line 268
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 269
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    .line 274
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    .line 275
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 276
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    .line 282
    :cond_3
    :goto_2
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    .line 283
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 284
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    .line 289
    :cond_4
    :goto_3
    return-void

    .line 264
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    goto :goto_0

    .line 271
    :cond_6
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    goto :goto_1

    .line 278
    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    goto :goto_2

    .line 286
    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    goto :goto_3
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const v6, 0x3bb5dcc6

    const v5, -0x444a233a

    const/high16 v4, 0x4000

    const/high16 v3, 0x43b4

    const/high16 v2, 0x4120

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 172
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 174
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockState:I

    if-nez v0, :cond_9

    .line 175
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    .line 176
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 177
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    .line 180
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    .line 181
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 182
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    .line 185
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    .line 186
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 187
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    .line 189
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    .line 190
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 191
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow3:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    .line 195
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    .line 196
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 197
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    .line 199
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    const/high16 v1, 0x42b4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    mul-float/2addr v1, v5

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 251
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 252
    return-void

    .line 201
    :cond_6
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    const/high16 v1, 0x4334

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    mul-float/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    mul-float/2addr v1, v5

    const/high16 v2, 0x3fc0

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 204
    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    const/high16 v1, 0x4387

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    mul-float/2addr v1, v6

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 208
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    mul-float/2addr v1, v6

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 212
    :cond_9
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b

    .line 213
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 214
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    .line 222
    :goto_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_d

    .line 223
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 224
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    .line 231
    :goto_2
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_f

    .line 232
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 233
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    .line 240
    :goto_3
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_11

    .line 241
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    .line 242
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    goto/16 :goto_0

    .line 216
    :cond_a
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    goto :goto_1

    .line 219
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    goto :goto_1

    .line 226
    :cond_c
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    goto :goto_2

    .line 229
    :cond_d
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    goto :goto_2

    .line 235
    :cond_e
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    goto :goto_3

    .line 238
    :cond_f
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    goto :goto_3

    .line 244
    :cond_10
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    goto/16 :goto_0

    .line 247
    :cond_11
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mMoveAngle:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    goto/16 :goto_0
.end method

.method public getHalfSize()I
    .locals 2

    .prologue
    .line 364
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    sget v1, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public isSelectSmsAndPhone()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 393
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mMoveIn:Z

    if-eqz v3, :cond_0

    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, intenIncomingCall:Landroid/content/Intent;
    const/high16 v3, 0x1020

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 405
    .end local v0           #intenIncomingCall:Landroid/content/Intent;
    :goto_0
    return v2

    .line 400
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mMoveIn:Z

    if-eqz v3, :cond_1

    .line 401
    new-instance v1, Landroid/content/Intent;

    const-string v3, "yulong.intent.action.UNLOCKSCREEN_TO_MMS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, intentToMessage:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 405
    .end local v1           #intentToMessage:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUnlock()Z
    .locals 2

    .prologue
    .line 389
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmsAndPhoneNumber(II)V
    .locals 6
    .parameter "sms"
    .parameter "phone"

    .prologue
    const/16 v5, 0x31

    .line 135
    if-eqz p2, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1080675

    const v4, 0x1080674

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/android/internal/policy/impl/keyguard/UnlockObject;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    .line 140
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    sget v2, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    if-eqz p1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    :cond_2
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x108066f

    const v4, 0x108066e

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/internal/policy/impl/keyguard/UnlockObject;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    .line 152
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    sget v2, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 154
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    if-nez p2, :cond_4

    .line 155
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    return-void

    .line 157
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method public setUnlockState(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    .line 292
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mDownX:F

    sub-float v0, p1, v3

    .line 293
    .local v0, deltaX:F
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mDownY:F

    sub-float v1, p2, v3

    .line 294
    .local v1, deltaY:F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 296
    .local v2, move:I
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockSize:I

    if-gt v2, v3, :cond_3

    .line 297
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockState:I

    if-eqz v3, :cond_0

    .line 298
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockState:I

    .line 299
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLock:Landroid/widget/ImageView;

    const v4, 0x108071d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    const v4, 0x1080716

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    const v4, 0x1080718

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    const v4, 0x108071a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 305
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 306
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 308
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    .line 332
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    if-eqz v3, :cond_1

    .line 333
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 334
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    sget v4, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_7

    .line 335
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->onMoveIn()V

    .line 342
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    if-eqz v3, :cond_2

    .line 343
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    if-nez v3, :cond_9

    .line 344
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 345
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    sget v4, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_8

    .line 346
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->onMoveIn()V

    .line 361
    :cond_2
    :goto_2
    return-void

    .line 310
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    if-gt v2, v3, :cond_5

    .line 311
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockState:I

    if-eq v3, v6, :cond_4

    .line 312
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockState:I

    .line 313
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLock:Landroid/widget/ImageView;

    const v4, 0x108071e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    const v4, 0x1080717

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    const v4, 0x1080719

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    const v4, 0x108071b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    const v4, 0x3f333333

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 318
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    const v4, 0x3f59999a

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 319
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 322
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->setDestAngle(FF)V

    goto/16 :goto_0

    .line 324
    :cond_5
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockState:I

    if-eq v3, v7, :cond_6

    .line 325
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockState:I

    .line 326
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLock:Landroid/widget/ImageView;

    const v4, 0x108071f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->setDestAngle(FF)V

    goto/16 :goto_0

    .line 337
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->onMoveOut()V

    goto/16 :goto_1

    .line 348
    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->onMoveOut()V

    goto :goto_2

    .line 352
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 353
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleSize:I

    sget v4, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_a

    .line 354
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->onMoveIn()V

    goto/16 :goto_2

    .line 356
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->onMoveOut()V

    goto/16 :goto_2
.end method

.method public show(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 368
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mDownX:F

    .line 369
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mDownY:F

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLockState:I

    .line 372
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAngle:F

    .line 373
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle3:F

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle2:F

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCurAngle1:F

    .line 374
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircleAlpha:F

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mLock:Landroid/widget/ImageView;

    const v1, 0x108071d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    const v1, 0x1080716

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    const v1, 0x1080718

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    const v1, 0x108071a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView;->mStartShow3:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 386
    return-void
.end method
