.class Lcom/android/camera/PhotoModule$15;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->initCaptureModeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 4715
    iput-object p1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDrawerShown(ZLandroid/view/View;)V
    .locals 2
    .parameter "isShown"
    .parameter "v"

    .prologue
    .line 4720
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 4721
    .local v0, mVisible:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPaused:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4738
    :cond_0
    :goto_1
    return-void

    .line 4720
    .end local v0           #mVisible:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4722
    .restart local v0       #mVisible:I
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4723
    iget-object v1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 4726
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/MyTextPreferenceButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4728
    iget-object v1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$11400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreviewGestures;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 4729
    if-eqz p1, :cond_4

    .line 4730
    iget-object v1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$11400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreviewGestures;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/camera/PreviewGestures;->isInTouchReceiver(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4731
    iget-object v1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$11400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreviewGestures;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    goto :goto_1

    .line 4735
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$11400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreviewGestures;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/camera/PreviewGestures;->removeTouchReceiver(Landroid/view/View;)V

    goto :goto_1
.end method
