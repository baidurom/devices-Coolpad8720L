.class Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$35;
.super Ljava/lang/Object;
.source "FangdaoUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$35;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$35;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    const-string v0, ""

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 640
    return-void
.end method
