.class Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$14;
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
    .line 391
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$14;->this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 395
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$100()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$14;->this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->asyncCheckPassword()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    goto :goto_0
.end method
