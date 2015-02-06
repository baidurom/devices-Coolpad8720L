.class Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;
.super Landroid/os/Handler;
.source "UitechnoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/uitechno/service/YLUIWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchHandler"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field enable:Z

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/yulong/android/uitechno/service/YLUIWatchService;

.field time:I

.field type:I


# direct methods
.method constructor <init>(Lcom/yulong/android/uitechno/service/YLUIWatchService;)V
    .locals 1
    .parameter

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->this$0:Lcom/yulong/android/uitechno/service/YLUIWatchService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->enable:Z

    return-void
.end method


# virtual methods
.method public getEnable()Z
    .locals 1

    .prologue
    .line 1490
    iget-boolean v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->enable:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 1497
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1498
    iget-boolean v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->enable:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1508
    :goto_0
    return-void

    .line 1502
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->this$0:Lcom/yulong/android/uitechno/service/YLUIWatchService;

    iget-object v2, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->className:Ljava/lang/String;

    iget v4, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->type:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->startComponent(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    :goto_1
    iget v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    int-to-long v1, v1

    invoke-virtual {p0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setEnable(Z)V
    .locals 1
    .parameter "enableL"

    .prologue
    .line 1486
    iput-boolean p1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->enable:Z

    .line 1487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1488
    return-void
.end method
