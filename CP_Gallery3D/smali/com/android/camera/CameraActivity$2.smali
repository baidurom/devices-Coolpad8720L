.class Lcom/android/camera/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->initThumbnailAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mThumbnailViewForSlideAnimation:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->animationCapture()V

    .line 665
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 655
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mThumbnailViewForSlideAnimation:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    return-void
.end method
