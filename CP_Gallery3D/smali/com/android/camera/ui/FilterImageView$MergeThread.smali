.class Lcom/android/camera/ui/FilterImageView$MergeThread;
.super Ljava/lang/Thread;
.source "FilterImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilterImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MergeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilterImageView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FilterImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/camera/ui/FilterImageView$MergeThread;->this$0:Lcom/android/camera/ui/FilterImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/FilterImageView;Lcom/android/camera/ui/FilterImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilterImageView$MergeThread;-><init>(Lcom/android/camera/ui/FilterImageView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/camera/ui/FilterImageView$MergeThread;->this$0:Lcom/android/camera/ui/FilterImageView;

    #getter for: Lcom/android/camera/ui/FilterImageView;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/ui/FilterImageView;->access$200(Lcom/android/camera/ui/FilterImageView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/FilterImageView$MergeThread;->this$0:Lcom/android/camera/ui/FilterImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilterImageView;->drawableLayerMerge()V

    .line 482
    iget-object v0, p0, Lcom/android/camera/ui/FilterImageView$MergeThread;->this$0:Lcom/android/camera/ui/FilterImageView;

    #getter for: Lcom/android/camera/ui/FilterImageView;->refreshHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/ui/FilterImageView;->access$300(Lcom/android/camera/ui/FilterImageView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x457

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 483
    monitor-exit v1

    .line 485
    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
