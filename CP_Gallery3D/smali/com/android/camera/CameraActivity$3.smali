.class Lcom/android/camera/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
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
    .line 2197
    iput-object p1, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 4
    .parameter "b"

    .prologue
    .line 2208
    sget-object v0, Lcom/android/camera/ShutterButton$ShutterMode;->VIDEO:Lcom/android/camera/ShutterButton$ShutterMode;

    invoke-virtual {p1}, Lcom/android/camera/ShutterButton;->getShutterMode()Lcom/android/camera/ShutterButton$ShutterMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2210
    const-string v0, "CAM_activity"

    const-string v1, "isPhoneCalling 11--22"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    iget-object v0, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isPhoneCalling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2213
    const-string v0, "CAM_activity"

    const-string v1, "isPhoneCalling 11--33"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    iget-object v0, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/CameraActivity;->mCallingVideoRecorderCloseAudio:Z

    .line 2219
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->isModuleIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2220
    iget-object v0, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/camera/CameraActivity;->mSwitchTime:J
    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraActivity;->access$802(Lcom/android/camera/CameraActivity;J)J

    .line 2221
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    .line 2225
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->updateStorageSpace()V

    .line 2226
    iget-object v0, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 2227
    const-string v0, "CAM_activity"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :goto_0
    return-void

    .line 2230
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/android/camera/ShutterButton;->getShutterMode()Lcom/android/camera/ShutterButton$ShutterMode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->showCameraModule(Lcom/android/camera/ShutterButton$ShutterMode;Z)V

    goto :goto_0

    .line 2232
    :cond_3
    const-string v0, "CAM_activity"

    const-string v1, ">>>>>>>skip swithing to video mode"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 2201
    return-void
.end method
