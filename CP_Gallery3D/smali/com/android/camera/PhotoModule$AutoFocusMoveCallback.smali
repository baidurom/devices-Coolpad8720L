.class final Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2151
    iput-object p1, p0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2151
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "moving"
    .parameter "camera"

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraState:I
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraId:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFullScreenChange:Z
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2159
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onAutoFocusMoving"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocusMoving(Z)V

    goto :goto_0
.end method
