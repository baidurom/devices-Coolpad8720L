.class Lcom/android/camera/VideoModule$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 3905
    iput-object p1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3905
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$ZoomChangeListener;-><init>(Lcom/android/camera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 0

    .prologue
    .line 3928
    return-void
.end method

.method public onZoomStart()V
    .locals 0

    .prologue
    .line 3925
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 3909
    iget-object v1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mPaused:Z
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$3900(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3921
    :cond_0
    :goto_0
    return-void

    .line 3910
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #setter for: Lcom/android/camera/VideoModule;->mZoomValue:I
    invoke-static {v1, p1}, Lcom/android/camera/VideoModule;->access$4002(Lcom/android/camera/VideoModule;I)I

    .line 3911
    iget-object v1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$600(Lcom/android/camera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 3913
    iget-object v1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$600(Lcom/android/camera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mZoomValue:I
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$4000(Lcom/android/camera/VideoModule;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 3914
    iget-object v1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$600(Lcom/android/camera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 3915
    iget-object v1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$4100(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3916
    iget-object v1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3917
    .local v0, p:Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 3918
    iget-object v1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$4100(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$4200(Lcom/android/camera/VideoModule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    goto :goto_0
.end method
