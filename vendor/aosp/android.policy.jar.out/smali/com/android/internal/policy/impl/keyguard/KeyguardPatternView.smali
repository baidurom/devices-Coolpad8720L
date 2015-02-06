.class public Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SecurityPatternView"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEcaView:Landroid/view/View;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTotalFailedPatternAttempts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 65
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 79
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 84
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method private displayDefaultSecurityMessage()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x104030f

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x1040551

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 358
    .local v6, elapsedRealtime:J
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    .line 362
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 385
    return-void
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 302
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V

    .line 303
    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->start()V

    .line 304
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/16 v2, 0x8

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 158
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardPatternView$FooterMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 233
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 420
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 244
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 246
    .local v1, parent:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 247
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v2, 0x4170

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 250
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 122
    const v1, 0x10202ce

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 128
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 133
    const v1, 0x10202b6

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const v3, 0x104054c

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 146
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 147
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 148
    const v1, 0x10202bc

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 149
    const v1, 0x10202b8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, bouncerFrameView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 153
    :cond_1
    return-void

    .line 119
    .end local v0           #bouncerFrameView:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 128
    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 398
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->reset()V

    .line 403
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 178
    .local v2, result:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    .line 179
    .local v0, elapsed:J
    if-eqz v2, :cond_0

    const-wide/16 v4, 0x1af4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 182
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 184
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 185
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 186
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 187
    return v2

    :cond_2
    move v2, v3

    .line 185
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 238
    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->reset()V

    .line 242
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 197
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 198
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 199
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    .line 205
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    .line 214
    :goto_1
    return-void

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    goto :goto_0

    .line 207
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 209
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1

    .line 211
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 110
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 114
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 414
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method
