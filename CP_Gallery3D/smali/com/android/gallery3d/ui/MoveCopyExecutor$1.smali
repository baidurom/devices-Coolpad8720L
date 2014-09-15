.class Lcom/android/gallery3d/ui/MoveCopyExecutor$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "MoveCopyExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MoveCopyExecutor;->initialHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MoveCopyExecutor;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    const v3, 0x7f0e003b

    const v2, 0x7f0e003a

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 214
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 143
    :pswitch_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z
    invoke-static {v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$000(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mMovePic:Z
    invoke-static {v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$100(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #calls: Lcom/android/gallery3d/ui/MoveCopyExecutor;->newAlbum()V
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$200(Lcom/android/gallery3d/ui/MoveCopyExecutor;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v4, v4, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v4, v4, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    if-nez v4, :cond_2

    .line 151
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    new-instance v5, Lcom/yulong/android/view/dialog/AnimatedDialog;

    iget-object v6, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/yulong/android/view/dialog/AnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    .line 152
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v4, v4, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z
    invoke-static {v5}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$000(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 153
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v3, v3, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yulong/android/view/dialog/ProgressDialog;->setMax(I)V

    .line 154
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v2, v7}, Lcom/yulong/android/view/dialog/AlertDialog;->setCancelable(Z)V

    .line 155
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v2, v7}, Lcom/yulong/android/view/dialog/ProgressDialog;->setIndeterminate(Z)V

    .line 156
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v8, :cond_2

    .line 157
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v2, v8}, Lcom/yulong/android/view/dialog/ProgressDialog;->setProgressStyle(I)V

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgressListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    if-nez v2, :cond_3

    .line 161
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    new-instance v3, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;

    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    const-string v5, "Gallery Move or Copy Pictures Listener"

    invoke-direct {v3, v4, v5}, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgressListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgressListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressStart()V

    .line 164
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 165
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;

    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    invoke-direct {v4, v5}, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;-><init>(Lcom/android/gallery3d/ui/MoveCopyExecutor;)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    #setter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$402(Lcom/android/gallery3d/ui/MoveCopyExecutor;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 152
    goto :goto_1

    .line 168
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$400(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    if-eqz v2, :cond_0

    .line 169
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/yulong/android/view/dialog/ProgressDialog;->setProgress(I)V

    .line 170
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgressListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressUpdate(I)V

    goto/16 :goto_0

    .line 174
    :pswitch_2
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;)V

    .line 175
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v4, v4, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgressListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressComplete(I)V

    .line 176
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->FAIL:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$500(Lcom/android/gallery3d/ui/MoveCopyExecutor;)I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z
    invoke-static {v6}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$000(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_2
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, toast:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 181
    .end local v1           #toast:Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$400(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgressListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v2, :cond_8

    .line 182
    :cond_7
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v2}, Lcom/yulong/android/view/dialog/AlertDialog;->dismiss()V

    .line 183
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iput-object v9, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    .line 184
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #setter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v2, v9}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$402(Lcom/android/gallery3d/ui/MoveCopyExecutor;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 187
    :cond_8
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIsPause:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$600(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 191
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->data:Landroid/os/Bundle;

    const-string v3, "copy-picture"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->data:Landroid/os/Bundle;

    const-string v3, "move-picture"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->data:Landroid/os/Bundle;

    const-string v3, "pic-path-list"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIsPause:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$600(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 197
    .local v0, state:Lcom/android/gallery3d/app/ActivityState;
    instance-of v2, v0, Lcom/android/gallery3d/app/AlbumPage;

    if-eqz v2, :cond_b

    .line 198
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v4, v4, Lcom/android/gallery3d/ui/MoveCopyExecutor;->data:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 209
    .end local v0           #state:Lcom/android/gallery3d/app/ActivityState;
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #setter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z
    invoke-static {v2, v7}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$002(Lcom/android/gallery3d/ui/MoveCopyExecutor;Z)Z

    .line 210
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #setter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mMovePic:Z
    invoke-static {v2, v7}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$102(Lcom/android/gallery3d/ui/MoveCopyExecutor;Z)Z

    .line 211
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #setter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIntoSecubox:Z
    invoke-static {v2, v7}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$802(Lcom/android/gallery3d/ui/MoveCopyExecutor;Z)Z

    .line 212
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #setter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIsPause:Z
    invoke-static {v2, v7}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$602(Lcom/android/gallery3d/ui/MoveCopyExecutor;Z)Z

    goto/16 :goto_0

    :cond_a
    move v2, v3

    .line 177
    goto/16 :goto_2

    .line 199
    .restart local v0       #state:Lcom/android/gallery3d/app/ActivityState;
    :cond_b
    instance-of v2, v0, Lcom/android/gallery3d/app/AlbumSetPage;

    if-eqz v2, :cond_9

    .line 200
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIsPause:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$600(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIntoSecubox:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$800(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 202
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;->data:Landroid/os/Bundle;

    const-string v3, "move_copy_sucess"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 204
    :cond_c
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v4, v4, Lcom/android/gallery3d/ui/MoveCopyExecutor;->data:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_3

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
