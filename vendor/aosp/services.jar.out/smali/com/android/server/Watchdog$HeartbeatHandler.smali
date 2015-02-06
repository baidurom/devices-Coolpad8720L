.class final Lcom/android/server/Watchdog$HeartbeatHandler;
.super Landroid/os/Handler;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HeartbeatHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    .line 142
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 146
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget v4, v4, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget v1, v4, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    .line 151
    .local v1, rebootInterval:I
    :goto_1
    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget v4, v4, Lcom/android/server/Watchdog;->mRebootInterval:I

    if-eq v4, v1, :cond_0

    .line 152
    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iput v1, v4, Lcom/android/server/Watchdog;->mRebootInterval:I

    .line 155
    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    invoke-virtual {v4, v3}, Lcom/android/server/Watchdog;->checkReboot(Z)V

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, v3, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 159
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_2

    .line 160
    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    monitor-enter v4

    .line 161
    :try_start_0
    iget-object v5, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, v3, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/Watchdog$Monitor;

    iput-object v3, v5, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 162
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, v3, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-interface {v3}, Lcom/android/server/Watchdog$Monitor;->monitor()V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v1           #rebootInterval:I
    .end local v2           #size:I
    :cond_1
    move v1, v3

    .line 149
    goto :goto_1

    .line 162
    .restart local v0       #i:I
    .restart local v1       #rebootInterval:I
    .restart local v2       #size:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 166
    :cond_2
    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    monitor-enter v4

    .line 167
    :try_start_2
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/Watchdog;->mCompleted:Z

    .line 168
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 169
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 146
    :pswitch_data_0
    .packed-switch 0xa9e
        :pswitch_0
    .end packed-switch
.end method
