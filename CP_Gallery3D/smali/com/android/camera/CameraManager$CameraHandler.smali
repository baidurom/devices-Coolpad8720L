.class Lcom/android/camera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    .line 109
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    return-void
.end method

.method private enableShutterSound(Z)V
    .locals 0
    .parameter "enable"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 141
    return-void
.end method

.method private setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .parameter "listener"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 127
    return-void
.end method

.method private setPreviewTexture(Ljava/lang/Object;)V
    .locals 2
    .parameter "surfaceTexture"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    check-cast p1, Landroid/graphics/SurfaceTexture;

    .end local p1
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startFaceDetection()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 115
    return-void
.end method

.method private stopFaceDetection()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 151
    :try_start_0
    const-string v2, "CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage msg.what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 153
    const-string v2, "CameraManager"

    const-string v4, " mCamera == NULL, so we return all msg"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    return-void

    .line 156
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 292
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid CameraProxy message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/Exception;
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v3, :cond_1

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 297
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 301
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v6}, Lcom/android/camera/CameraManager;->access$002(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 302
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v2, v6}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 304
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_0
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 159
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v4}, Lcom/android/camera/CameraManager;->access$002(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 161
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mYLCamera:Lcom/android/camera/YLCamera;
    invoke-static {v2, v4}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/YLCamera;)Lcom/android/camera/YLCamera;

    .line 162
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v2, v4}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 308
    :cond_3
    :goto_2
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 166
    :pswitch_2
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v2, v4}, Lcom/android/camera/CameraManager;->access$302(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 168
    :try_start_4
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 169
    :catch_1
    move-exception v1

    .line 170
    .local v1, ex:Ljava/io/IOException;
    :try_start_5
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v2, v1}, Lcom/android/camera/CameraManager;->access$302(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;

    .line 171
    const-string v2, "camera_connected_camera_failed"

    invoke-static {v2}, Lcom/android/camera/Util;->launchBugReportSystemByReflect(Ljava/lang/String;)V

    goto :goto_2

    .line 176
    .end local v1           #ex:Ljava/io/IOException;
    :pswitch_3
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    goto :goto_2

    .line 180
    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    goto :goto_2

    .line 184
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/camera/CameraManager$CameraHandler;->setPreviewTexture(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 189
    :pswitch_6
    :try_start_6
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 190
    :catch_2
    move-exception v0

    .line 191
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 197
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_7
    :try_start_8
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 198
    :catch_3
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    :try_start_9
    const-string v2, "camera_open_preview_failed"

    invoke-static {v2}, Lcom/android/camera/Util;->launchBugReportSystemByReflect(Ljava/lang/String;)V

    .line 200
    const-string v2, "CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--START_PREVIEW_ASYNC----Exception ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 205
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_8
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_2

    .line 208
    :pswitch_9
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_2

    .line 212
    :pswitch_a
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_2

    .line 217
    :pswitch_b
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_2

    .line 221
    :pswitch_c
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_2

    .line 225
    :pswitch_d
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto/16 :goto_2

    .line 229
    :pswitch_e
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #calls: Lcom/android/camera/CameraManager;->setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    invoke-static {v2, v4, v5}, Lcom/android/camera/CameraManager;->access$400(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 233
    :pswitch_f
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_2

    .line 237
    :pswitch_10
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 238
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_2

    .line 242
    :pswitch_11
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-direct {p0, v2}, Lcom/android/camera/CameraManager$CameraHandler;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_2

    .line 246
    :pswitch_12
    invoke-direct {p0}, Lcom/android/camera/CameraManager$CameraHandler;->startFaceDetection()V

    goto/16 :goto_2

    .line 250
    :pswitch_13
    invoke-direct {p0}, Lcom/android/camera/CameraManager$CameraHandler;->stopFaceDetection()V

    goto/16 :goto_2

    .line 254
    :pswitch_14
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 255
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_2

    .line 259
    :pswitch_15
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_2

    .line 263
    :pswitch_16
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    #setter for: Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v4}, Lcom/android/camera/CameraManager;->access$502(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto/16 :goto_2

    .line 267
    :pswitch_17
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 271
    :pswitch_18
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_2

    .line 275
    :pswitch_19
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_3
    invoke-direct {p0, v2}, Lcom/android/camera/CameraManager$CameraHandler;->enableShutterSound(Z)V

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 281
    :pswitch_1a
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 298
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 299
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "CameraManager"

    const-string v3, "Fail to release the camera."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_1
        :pswitch_6
        :pswitch_18
        :pswitch_19
        :pswitch_1
        :pswitch_1a
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method
