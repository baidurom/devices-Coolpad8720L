.class Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$1;
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
    .line 223
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->digit:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->access$002(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;I)I

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->digit:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->digit:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->access$284(Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    return-void
.end method
