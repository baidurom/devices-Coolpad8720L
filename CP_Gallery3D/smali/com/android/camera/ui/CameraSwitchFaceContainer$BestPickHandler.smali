.class Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;
.super Landroid/os/Handler;
.source "CameraSwitchFaceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraSwitchFaceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BestPickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraSwitchFaceContainer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/CameraSwitchFaceContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;->this$0:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/CameraSwitchFaceContainer;Lcom/android/camera/ui/CameraSwitchFaceContainer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;-><init>(Lcom/android/camera/ui/CameraSwitchFaceContainer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 311
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 313
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 314
    .local v3, value:I
    iget-object v5, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;->this$0:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v5, v3}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->showProgressDialog(I)V

    .line 315
    const/16 v5, 0x64

    if-ne v3, v5, :cond_0

    .line 316
    iget-object v5, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;->this$0:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    #getter for: Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;
    invoke-static {v5}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->access$100(Lcom/android/camera/ui/CameraSwitchFaceContainer;)Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 317
    iget-object v5, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;->this$0:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    #getter for: Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;
    invoke-static {v5}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->access$100(Lcom/android/camera/ui/CameraSwitchFaceContainer;)Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;->onFinishProcess()V

    .line 319
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;->this$0:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v5}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->hideProgressDialog()V

    goto :goto_0

    .line 323
    .end local v3           #value:I
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 324
    .local v1, faceInfo:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;->this$0:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->setFaceInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    .end local v1           #faceInfo:Ljava/lang/String;
    :sswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    .line 328
    .local v0, data:[I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 329
    .local v4, width:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 330
    .local v2, height:I
    iget-object v5, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;->this$0:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v5, v0, v4, v2}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->setFaceImageData([III)V

    goto :goto_0

    .line 333
    .end local v0           #data:[I
    .end local v2           #height:I
    .end local v4           #width:I
    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    .line 334
    .restart local v0       #data:[I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 335
    .restart local v4       #width:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 336
    .restart local v2       #height:I
    iget-object v5, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;->this$0:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v5, v0, v4, v2}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->displaySwitchFaceBitmap([III)V

    goto :goto_0

    .line 339
    .end local v0           #data:[I
    .end local v2           #height:I
    .end local v4           #width:I
    :sswitch_4
    iget-object v5, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;->this$0:Lcom/android/camera/ui/CameraSwitchFaceContainer;

    invoke-virtual {v5}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->displayFaceInfo()V

    goto :goto_0

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0xbbb -> :sswitch_0
        0x1770 -> :sswitch_1
        0x1771 -> :sswitch_2
        0x1772 -> :sswitch_3
        0x1773 -> :sswitch_4
    .end sparse-switch
.end method
