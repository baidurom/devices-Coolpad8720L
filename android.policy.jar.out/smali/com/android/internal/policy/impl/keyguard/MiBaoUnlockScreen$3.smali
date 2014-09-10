.class Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$3;
.super Ljava/lang/Object;
.source "MiBaoUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 232
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 236
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$100()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->digit:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$202(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;I)I

    .line 242
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$100()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->digit:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$200(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
