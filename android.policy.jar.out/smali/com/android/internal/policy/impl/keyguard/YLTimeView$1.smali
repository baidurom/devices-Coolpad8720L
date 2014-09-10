.class Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;
.super Ljava/lang/Object;
.source "YLTimeView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/YLTimeView;->makeValueAnimator(ILandroid/widget/ImageView;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/YLTimeView;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$newId:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/YLTimeView;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/YLTimeView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;->val$imageView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;->val$newId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 183
    .local v0, angle:F
    const/high16 v1, 0x42b4

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 184
    const/high16 v1, 0x4334

    sub-float/2addr v0, v1

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;->val$newId:I

    if-eq v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/YLTimeView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;->val$newId:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;->val$imageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;->val$newId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 192
    return-void
.end method
