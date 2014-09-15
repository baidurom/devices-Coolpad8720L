.class Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;
.super Ljava/lang/Object;
.source "CameraBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertBitmapTask"
.end annotation


# instance fields
.field bh:I

.field bw:I

.field mData:[B

.field final synthetic this$0:Lcom/android/camera/ui/CameraBottomBar;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/CameraBottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/CameraBottomBar;Lcom/android/camera/ui/CameraBottomBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;-><init>(Lcom/android/camera/ui/CameraBottomBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 205
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    iget-boolean v1, v1, Lcom/android/camera/ui/CameraBottomBar;->isDone:Z

    if-nez v1, :cond_0

    .line 207
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 209
    iget-object v1, p0, Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    iget-object v2, p0, Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    iget v2, v2, Lcom/android/camera/ui/CameraBottomBar;->nViewIndex:I

    iget v3, p0, Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;->bw:I

    iget v4, p0, Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;->bh:I

    iget-object v5, p0, Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;->mData:[B

    #calls: Lcom/android/camera/ui/CameraBottomBar;->insertBitmap(III[B)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/camera/ui/CameraBottomBar;->access$100(Lcom/android/camera/ui/CameraBottomBar;III[B)V

    .line 210
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
