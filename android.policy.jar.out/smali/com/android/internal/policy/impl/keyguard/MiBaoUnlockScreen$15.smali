.class Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$15;
.super Ljava/lang/Object;
.source "MiBaoUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->asyncCheckPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$15;->this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$15;->this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$15;->this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$400()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 573
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$100()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 574
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$400()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$400()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 576
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$502(I)I

    .line 577
    return-void
.end method
