.class Lcom/android/camera/ui/ThumbnailSwitcher$1;
.super Ljava/lang/Object;
.source "ThumbnailSwitcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ThumbnailSwitcher;->onShowAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ThumbnailSwitcher;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ThumbnailSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/ThumbnailSwitcher$1;->this$0:Lcom/android/camera/ui/ThumbnailSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher$1;->this$0:Lcom/android/camera/ui/ThumbnailSwitcher;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/ui/ThumbnailSwitcher;->isEnd:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/ThumbnailSwitcher;->access$002(Lcom/android/camera/ui/ThumbnailSwitcher;Z)Z

    .line 80
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 74
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/ThumbnailSwitcher$1;->this$0:Lcom/android/camera/ui/ThumbnailSwitcher;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/ui/ThumbnailSwitcher;->isEnd:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/ThumbnailSwitcher;->access$002(Lcom/android/camera/ui/ThumbnailSwitcher;Z)Z

    .line 68
    return-void
.end method
