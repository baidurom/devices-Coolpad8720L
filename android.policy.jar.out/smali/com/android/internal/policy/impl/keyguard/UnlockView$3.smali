.class Lcom/android/internal/policy/impl/keyguard/UnlockView$3;
.super Ljava/lang/Object;
.source "UnlockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/UnlockView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/UnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/UnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 119
    .local v1, value:F
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 120
    .local v0, fraction:F
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 121
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 122
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockView;->mCircle3:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x3f00

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 124
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockView;->mSmsObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockView;->mPhoneObject:Lcom/android/internal/policy/impl/keyguard/UnlockObject;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/UnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/UnlockView;)Lcom/android/internal/policy/impl/keyguard/UnlockObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 130
    :cond_1
    return-void
.end method
