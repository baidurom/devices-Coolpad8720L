.class Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;
.super Ljava/lang/Object;
.source "KeyguardImageAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;->val$imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 168
    const-string v0, "KeyguardImageTransitionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkThread imageView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v0, "KeyguardImageTransitionView"

    const-string v1, "mWorkThread bitmap = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$600()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;->val$imageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$600()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 180
    :cond_2
    const-string v0, "KeyguardImageTransitionView"

    const-string v1, "mWorkThread imageView = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
