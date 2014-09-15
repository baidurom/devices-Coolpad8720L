.class Lcom/android/camera/CameraManager$CameraEventHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraEventHandler;->this$0:Lcom/android/camera/CameraManager;

    .line 333
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 334
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraEventHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraEventHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    const/16 v1, 0x3039

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraEventHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x3039
        :pswitch_0
    .end packed-switch
.end method
