.class Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$3;
.super Ljava/lang/Object;
.source "KeyguardImageAnimationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 317
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 319
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yulong.android.coolshow.LOCKSCREEN_TEXT_ACITIVTY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
