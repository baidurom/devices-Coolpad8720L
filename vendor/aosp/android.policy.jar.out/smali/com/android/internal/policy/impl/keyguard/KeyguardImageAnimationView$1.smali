.class Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$1;
.super Ljava/lang/Object;
.source "KeyguardImageAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;
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
    .line 121
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOnScreenTurnOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOpenWallpaperLantern:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showingImagetAnimateView:Z

    if-eqz v0, :cond_0

    .line 130
    :cond_0
    return-void
.end method
