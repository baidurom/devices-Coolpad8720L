.class public Lcom/android/camera/PhotoModule$CameraErrorCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1736
    iput-object p1, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v3, 0x0

    .line 1743
    const-string v0, "CameraErrorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got camera error callback. error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3039

    if-ne p1, v0, :cond_2

    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2008(Lcom/android/camera/PhotoModule;)I

    .line 1750
    const-string v0, "camera_die"

    invoke-static {v0}, Lcom/android/camera/Util;->launchBugReportSystemByReflect(Ljava/lang/String;)V

    .line 1751
    const-string v0, "CameraErrorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera die, mDiedTimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDiedTimes:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDiedTimes:I
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 1753
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1771
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1772
    const-string v0, "CameraErrorCallback"

    const-string v1, "------onError----->"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->finish()V

    .line 1774
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v0, v3}, Lcom/android/camera/PhotoModule;->access$4902(Lcom/android/camera/PhotoModule;Lcom/android/camera/CameraEffectModule;)Lcom/android/camera/CameraEffectModule;

    .line 1775
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;
    invoke-static {v0, v3}, Lcom/android/camera/PhotoModule;->access$8002(Lcom/android/camera/PhotoModule;Landroid/media/ImageEffectService;)Landroid/media/ImageEffectService;

    .line 1776
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    const-string v1, "none"

    #setter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$8102(Lcom/android/camera/PhotoModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1782
    :cond_2
    return-void

    .line 1754
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1757
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->closeCamera()V
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)V

    .line 1762
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->isTaskRunning:Z
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1763
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/PhotoModule;->isTaskRunning:Z
    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$602(Lcom/android/camera/PhotoModule;Z)Z

    .line 1764
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    new-instance v1, Lcom/android/camera/PhotoModule$CameraStartUpThread;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v1, v0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 1765
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1767
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1768
    iget-object v0, p0, Lcom/android/camera/PhotoModule$CameraErrorCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    goto :goto_0
.end method
