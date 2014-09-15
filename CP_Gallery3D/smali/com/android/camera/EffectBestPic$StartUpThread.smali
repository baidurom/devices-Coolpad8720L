.class Lcom/android/camera/EffectBestPic$StartUpThread;
.super Ljava/lang/Thread;
.source "EffectBestPic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EffectBestPic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartUpThread"
.end annotation


# instance fields
.field isDone:Z

.field startUpTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field task:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/camera/EffectBestPic;

.field updateCount:I


# direct methods
.method public constructor <init>(Lcom/android/camera/EffectBestPic;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 272
    iput-object p1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->this$0:Lcom/android/camera/EffectBestPic;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 268
    iput v2, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->updateCount:I

    .line 270
    iput-boolean v2, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->isDone:Z

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->startUpTaskList:Ljava/util/ArrayList;

    .line 274
    iput v2, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->updateCount:I

    .line 275
    return-void
.end method


# virtual methods
.method public clearAllTask()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->startUpTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->isDone:Z

    .line 282
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 285
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 286
    iget-object v2, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->startUpTaskList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 288
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->isDone:Z

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->startUpTaskList:Ljava/util/ArrayList;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 290
    iget-object v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->startUpTaskList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->startUpTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->startUpTaskList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->task:Ljava/lang/Runnable;

    .line 293
    iget-object v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->this$0:Lcom/android/camera/EffectBestPic;

    #getter for: Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/EffectBestPic;->access$000(Lcom/android/camera/EffectBestPic;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->task:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    iget-object v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->startUpTaskList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->task:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 295
    iget v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->updateCount:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 296
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->isDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    return-void

    .line 299
    :cond_2
    :try_start_2
    iget v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->updateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/EffectBestPic$StartUpThread;->updateCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 305
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
