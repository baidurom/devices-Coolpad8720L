.class Lcom/android/camera/FocusOverlayManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FocusOverlayManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/FocusOverlayManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    .line 135
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 140
    const-string v0, "CAM_FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 143
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    #getter for: Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z
    invoke-static {v0}, Lcom/android/camera/FocusOverlayManager;->access$000(Lcom/android/camera/FocusOverlayManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    #calls: Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/android/camera/FocusOverlayManager;->access$100(Lcom/android/camera/FocusOverlayManager;)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    iget-object v0, v0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->startFaceDetection()V

    goto :goto_0

    .line 150
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    #setter for: Lcom/android/camera/FocusOverlayManager;->mState:I
    invoke-static {v0, v3}, Lcom/android/camera/FocusOverlayManager;->access$202(Lcom/android/camera/FocusOverlayManager;I)I

    .line 151
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 152
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    goto :goto_0

    .line 156
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    #getter for: Lcom/android/camera/FocusOverlayManager;->nDelaySeconds:I
    invoke-static {v0}, Lcom/android/camera/FocusOverlayManager;->access$300(Lcom/android/camera/FocusOverlayManager;)I

    move-result v0

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x3

    #setter for: Lcom/android/camera/FocusOverlayManager;->mState:I
    invoke-static {v0, v1}, Lcom/android/camera/FocusOverlayManager;->access$202(Lcom/android/camera/FocusOverlayManager;I)I

    .line 158
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    #setter for: Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z
    invoke-static {v0, v3}, Lcom/android/camera/FocusOverlayManager;->access$002(Lcom/android/camera/FocusOverlayManager;Z)Z

    .line 159
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    .line 160
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    iget-object v0, v0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    iget-object v0, v0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    #getter for: Lcom/android/camera/FocusOverlayManager;->nDelaySeconds:I
    invoke-static {v1}, Lcom/android/camera/FocusOverlayManager;->access$300(Lcom/android/camera/FocusOverlayManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/FocusOverlayManager$Listener;->updateDelayCaptureClock(I)V

    .line 167
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    invoke-static {v0}, Lcom/android/camera/FocusOverlayManager;->access$310(Lcom/android/camera/FocusOverlayManager;)I

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    #getter for: Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/FocusOverlayManager;->access$400(Lcom/android/camera/FocusOverlayManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    iget-object v0, v0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    iget-object v0, v0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    #getter for: Lcom/android/camera/FocusOverlayManager;->nDelaySeconds:I
    invoke-static {v1}, Lcom/android/camera/FocusOverlayManager;->access$300(Lcom/android/camera/FocusOverlayManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/FocusOverlayManager$Listener;->updateDelayCaptureClock(I)V

    goto :goto_1

    .line 171
    :sswitch_3
    const-string v0, "CAM_FocusManager"

    const-string v1, ">>>>>>>>>do force snap with no focus callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    #getter for: Lcom/android/camera/FocusOverlayManager;->mbDelayShutting:Z
    invoke-static {v0}, Lcom/android/camera/FocusOverlayManager;->access$000(Lcom/android/camera/FocusOverlayManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const-string v0, "CAM_FocusManager"

    const-string v1, ">>>>>>do capture while caf  is timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->this$0:Lcom/android/camera/FocusOverlayManager;

    #calls: Lcom/android/camera/FocusOverlayManager;->capture()V
    invoke-static {v0}, Lcom/android/camera/FocusOverlayManager;->access$500(Lcom/android/camera/FocusOverlayManager;)V

    goto/16 :goto_0

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0xbb9 -> :sswitch_3
    .end sparse-switch
.end method
