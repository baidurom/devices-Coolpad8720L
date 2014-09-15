.class public Lcom/android/camera/CameraManager$CameraProxy;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraManager;)V
    .locals 1
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {p1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->Assert(Z)V

    .line 413
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 4
    .parameter "cb"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 495
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 496
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 497
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 501
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 503
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 5

    .prologue
    .line 601
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 602
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 603
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v2

    const-wide/16 v3, 0x1770

    invoke-virtual {v2, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 604
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 606
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    return-object v0
.end method

.method public lock()V
    .locals 4

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 447
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 448
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 449
    return-void
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 432
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 433
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 434
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 437
    :cond_0
    return-void
.end method

.method public registerOneShotPreivewFrame(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 4
    .parameter "cb"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 620
    const-string v0, "CameraManager"

    const-string v1, "registerOneShotPreivewFrame begin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 622
    const-string v0, "CameraManager"

    const-string v1, "registerOneShotPreivewFrame end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 624
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 421
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 422
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraEventHandler:Lcom/android/camera/CameraManager$CameraEventHandler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraEventHandler:Lcom/android/camera/CameraManager$CameraEventHandler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraEventHandler;

    move-result-object v0

    const/16 v1, 0x3039

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mCameraEventHandler:Lcom/android/camera/CameraManager$CameraEventHandler;
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1002(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraEventHandler;)Lcom/android/camera/CameraManager$CameraEventHandler;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 428
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 4
    .parameter "cb"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 508
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 509
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 510
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 549
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 551
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 552
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 4
    .parameter "cb"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 584
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v0, p1}, Lcom/android/camera/CameraManager;->access$702(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$ErrorCallback;)Landroid/hardware/Camera$ErrorCallback;

    .line 585
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 586
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 587
    return-void
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .parameter "listener"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 568
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 591
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 592
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 593
    return-void
.end method

.method public setParametersAsync(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "params"

    .prologue
    const/16 v1, 0x15

    .line 596
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 598
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 4
    .parameter "cb"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 483
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 484
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 485
    return-void
.end method

.method public setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 458
    return-void
.end method

.method public setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 454
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 556
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 557
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 558
    return-void
.end method

.method public startFaceDetection()V
    .locals 4

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 572
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 573
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 574
    return-void
.end method

.method public startPreviewAsync()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 462
    return-void
.end method

.method public startPreviewSync()V
    .locals 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 466
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 467
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 468
    return-void
.end method

.method public stopFaceDetection()V
    .locals 4

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 578
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 579
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 580
    return-void
.end method

.method public stopPreview()V
    .locals 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 471
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 472
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 473
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 7
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 516
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/camera/CameraManager$CameraProxy$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/CameraManager$CameraProxy$1;-><init>(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 523
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 524
    return-void
.end method

.method public takePicture2(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V
    .locals 9
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"
    .parameter "cameraState"
    .parameter "focusState"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 531
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcom/android/camera/CameraManager$CameraProxy$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/CameraManager$CameraProxy$2;-><init>(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 545
    return-void
.end method

.method public unlock()V
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 441
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 442
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    #calls: Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;Z)V

    .line 443
    return-void
.end method
