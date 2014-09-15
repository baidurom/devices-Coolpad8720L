.class Lcom/android/camera/CameraActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


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
    .line 295
    iput-object p1, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, action:Ljava/lang/String;
    const-string v2, "yulong.intent.action.HallSensor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 303
    .local v1, state:I
    const-string v2, "CAM_activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>>the cur cover state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    iget v2, v2, Lcom/android/camera/CameraActivity;->mCoverState:I

    if-ne v2, v5, :cond_2

    .line 306
    const-string v2, "CAM_activity"

    const-string v3, ">>>>>>>>>open the cover"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v2, v5}, Lcom/android/camera/CameraModule;->CoverStateChange(Z)V

    .line 316
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    iput v1, v2, Lcom/android/camera/CameraActivity;->mCoverState:I

    .line 318
    .end local v1           #state:I
    :cond_1
    return-void

    .line 310
    .restart local v1       #state:I
    :cond_2
    if-ne v1, v5, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    iget v2, v2, Lcom/android/camera/CameraActivity;->mCoverState:I

    if-nez v2, :cond_0

    .line 311
    const-string v2, "CAM_activity"

    const-string v3, ">>>>>>>close the cover"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v2, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/CameraModule;->CoverStateChange(Z)V

    goto :goto_0
.end method
