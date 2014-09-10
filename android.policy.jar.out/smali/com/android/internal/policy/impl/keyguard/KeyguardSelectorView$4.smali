.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;
.super Landroid/os/Handler;
.source "KeyguardSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mDownY:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->getHalfSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    invoke-virtual {v0, v3, v3}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->setSmsAndPhoneNumber(II)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsRandomUnlockViewAdded:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1602(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;Z)Z

    .line 699
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mDownX:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mDownY:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->show(FF)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mShowUnlockViewTime:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1802(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;J)J

    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->carrierText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 705
    :cond_0
    return-void
.end method
