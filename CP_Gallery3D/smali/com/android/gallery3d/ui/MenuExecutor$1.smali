.class Lcom/android/gallery3d/ui/MenuExecutor$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 156
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 160
    .local v0, listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressStart()V

    goto :goto_0

    .line 165
    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$000(Lcom/android/gallery3d/ui/MenuExecutor;)V

    .line 166
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 167
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 168
    .restart local v0       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressComplete(I)V

    .line 170
    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$100(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->pickSefeBox()V

    goto :goto_0

    .line 178
    :pswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Lcom/yulong/android/view/dialog/AnimatedDialog;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/yulong/android/view/dialog/AnimatedDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Lcom/yulong/android/view/dialog/AnimatedDialog;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/yulong/android/view/dialog/AnimatedDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/yulong/android/view/dialog/ProgressDialog;->setProgress(I)V

    .line 179
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 180
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 181
    .restart local v0       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressUpdate(I)V

    goto :goto_0

    .line 186
    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :pswitch_4
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
