.class Lcom/android/camera/PhotoModule$ZoomChangeListener;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1489
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 6

    .prologue
    .line 1528
    const-string v1, "CAM_PhotoModule"

    const-string v2, "onZoomEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_camera_capturemode_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0e01de

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1534
    .local v0, captureModeStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "tracksolid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraId:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1536
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setBlockFocus(Z)V

    .line 1538
    :cond_0
    return-void
.end method

.method public onZoomStart()V
    .locals 6

    .prologue
    .line 1514
    const-string v1, "CAM_PhotoModule"

    const-string v2, "onZoomStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_camera_capturemode_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0e01de

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1520
    .local v0, captureModeStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "tracksolid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraId:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1522
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setBlockFocus(Z)V

    .line 1524
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 1493
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onZoomValueChanged index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPaused:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1510
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGesturesTouch:B
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$7100(Lcom/android/camera/PhotoModule;)B

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->mZoomValue:I
    invoke-static {v1, p1}, Lcom/android/camera/PhotoModule;->access$7402(Lcom/android/camera/PhotoModule;I)I

    .line 1499
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1502
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mZoomValue:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$7400(Lcom/android/camera/PhotoModule;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1503
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 1504
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$7500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1505
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1506
    .local v0, p:Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 1507
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$7500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$7600(Lcom/android/camera/PhotoModule;)Ljava/util/List;

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
