.class Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$39;
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
    .line 699
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$39;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$39;->this$0:Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->setKeyboardState(I)V

    .line 703
    return-void
.end method
