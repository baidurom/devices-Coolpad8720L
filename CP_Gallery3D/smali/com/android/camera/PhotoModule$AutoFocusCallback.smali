.class final Lcom/android/camera/PhotoModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2135
    iput-object p1, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2135
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2147
    :cond_0
    :goto_0
    return-void

    .line 2141
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraState:I
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusStartTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10300(Lcom/android/camera/PhotoModule;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    .line 2144
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v2, v2, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/PhotoModule;->setCameraState(I)V
    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$4200(Lcom/android/camera/PhotoModule;I)V

    .line 2146
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocus(ZZ)V

    goto :goto_0
.end method
