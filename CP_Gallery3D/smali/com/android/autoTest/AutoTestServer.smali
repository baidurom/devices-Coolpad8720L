.class public Lcom/android/autoTest/AutoTestServer;
.super Landroid/app/Service;
.source "AutoTestServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static TIMEOUT:I


# instance fields
.field private mCount:I

.field private mServiceHandler:Landroid/os/Handler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mServiceStartId:I

.field private mStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x14

    sput v0, Lcom/android/autoTest/AutoTestServer;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/autoTest/AutoTestServer;->mServiceStartId:I

    .line 46
    iput v1, p0, Lcom/android/autoTest/AutoTestServer;->mCount:I

    .line 49
    iput-boolean v1, p0, Lcom/android/autoTest/AutoTestServer;->mStart:Z

    .line 144
    new-instance v0, Lcom/android/autoTest/AutoTestServer$1;

    invoke-direct {v0, p0}, Lcom/android/autoTest/AutoTestServer$1;-><init>(Lcom/android/autoTest/AutoTestServer;)V

    iput-object v0, p0, Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/autoTest/AutoTestServer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/autoTest/AutoTestServer;->mCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/autoTest/AutoTestServer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/android/autoTest/AutoTestServer;->mCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/autoTest/AutoTestServer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/autoTest/AutoTestServer;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/autoTest/AutoTestServer;->mCount:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/android/autoTest/AutoTestServer;->TIMEOUT:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/autoTest/AutoTestServer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public broadCastSendStatus(IZ)V
    .locals 2
    .parameter "type"
    .parameter "success"

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.camera.action.ygtptest_finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "AutoTestServer"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 55
    .local v0, thr:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 116
    :goto_0
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 117
    monitor-enter p0

    .line 119
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 125
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 61
    :goto_0
    iget-object v2, p0, Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 62
    monitor-enter p0

    .line 64
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 70
    :cond_0
    if-nez p1, :cond_1

    .line 71
    const-string v2, "AutoTestServer"

    const-string v3, "Intent is null in onStartCommand: "

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v2, 0x2

    .line 109
    :goto_2
    return v2

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 77
    .local v1, msg:Landroid/os/Message;
    iput p3, p0, Lcom/android/autoTest/AutoTestServer;->mServiceStartId:I

    .line 78
    if-eqz p1, :cond_2

    .line 79
    const-string v2, "type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, cmdType:Ljava/lang/String;
    const-string v2, "capture"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    sget v2, Lcom/android/autoTest/AutoTestBroadCastReceiver;->delayTimeValue:I

    if-eqz v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;

    sget v3, Lcom/android/autoTest/AutoTestBroadCastReceiver;->delayTimeValue:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 109
    .end local v0           #cmdType:Ljava/lang/String;
    :cond_2
    :goto_3
    const/4 v2, 0x3

    goto :goto_2

    .line 87
    .restart local v0       #cmdType:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 89
    :cond_4
    const-string v2, "switchmode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    iget-object v2, p0, Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 93
    :cond_5
    const-string v2, "switchcameraId"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 97
    :cond_6
    const-string v2, "openAlbum"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 98
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    iget-object v2, p0, Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 101
    :cond_7
    const-string v2, "setting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    iget-object v2, p0, Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 65
    .end local v0           #cmdType:Ljava/lang/String;
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 131
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/autoTest/AutoTestServer;->mServiceLooper:Landroid/os/Looper;

    .line 134
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 135
    return-void
.end method
