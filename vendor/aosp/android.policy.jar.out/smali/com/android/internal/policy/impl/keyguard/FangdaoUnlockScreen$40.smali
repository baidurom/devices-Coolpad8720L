.class Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$40;
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
    .line 704
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$40;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$40;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$40;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCurHalfKeyboardState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->setKeyboardState(I)V

    .line 708
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$40;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCurHalfKeyboardState:I

    goto :goto_0
.end method
