.class Lcom/android/camera/ui/FaceView$1;
.super Landroid/os/Handler;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FaceView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/FaceView;->access$002(Lcom/android/camera/ui/FaceView;Z)Z

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    #getter for: Lcom/android/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;
    invoke-static {v1}, Lcom/android/camera/ui/FaceView;->access$200(Lcom/android/camera/ui/FaceView;)[Landroid/hardware/Camera$Face;

    move-result-object v1

    #setter for: Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;
    invoke-static {v0, v1}, Lcom/android/camera/ui/FaceView;->access$102(Lcom/android/camera/ui/FaceView;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
