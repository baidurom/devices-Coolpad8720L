.class public Lcom/yulong/android/telephony/PPPOEManager;
.super Landroid/os/Handler;
.source "PPPOEManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/telephony/PPPOEManager$1;,
        Lcom/yulong/android/telephony/PPPOEManager$JavaServiceImpl;,
        Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_PPPOE_COMPLETED:Ljava/lang/String; = "android.net.wifi.PPPOE_COMPLETED_ACTION"

.field public static final ACTION_PPPOE_GET_PPPOEINFO:Ljava/lang/String; = "yulong.intent.action.ACTION_PPPOE_GET_PPPOEINFO"

.field public static final ACTION_PPPOE_SEND_PPPOEINFO:Ljava/lang/String; = "yulong.intent.action.ACTION_PPPOE_SEND_PPPOEINFO"

.field public static final ACTION_PPPOE_START_SERVICE:Ljava/lang/String; = "yulong.intent.action.START_PPPOE_SERVICE"

.field public static final ACTION_PPPOE_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.PPPOE_STATE_CHANGED"

.field public static final ACTION_PPPOE_STOP_SERVICE:Ljava/lang/String; = "yulong.intent.action.STOP_PPPOE_SERVICE"

.field private static final DBG:Z = true

.field public static final EXTRA_PPPOE_RESULT_ERROR_CODE:Ljava/lang/String; = "pppoe_result_error_code"

.field public static final EXTRA_PPPOE_RESULT_STATUS:Ljava/lang/String; = "pppoe_result_status"

.field private static final E_PPPOE_STATE_CONNECTED:I = 0x3ee

.field private static final E_PPPOE_STATE_CONNECTING:I = 0x3ed

.field private static final E_PPPOE_STATE_DISCONNECTED:I = 0x3f0

.field private static final E_PPPOE_STATE_DISCONNECTING:I = 0x3ef

.field private static final E_PPPOE_STATE_FAILURE:I = 0x3f1

.field public static final PPPOE_RESLUT_ALREADY_ONLINE:Ljava/lang/String; = "ALREADY_ONLINE"

.field public static final PPPOE_RESLUT_FAILURE:Ljava/lang/String; = "FAILURE"

.field public static final PPPOE_RESLUT_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final PPPOE_STATE_CONNECTED:Ljava/lang/String; = "PPPOE_STATE_CONNECTED"

.field public static final PPPOE_STATE_CONNECTING:Ljava/lang/String; = "PPPOE_STATE_CONNECTING"

.field public static final PPPOE_STATE_DISCONNECTED:Ljava/lang/String; = "PPPOE_STATE_DISCONNECTED"

.field public static final PPPOE_STATE_DISCONNECTING:Ljava/lang/String; = "PPPOE_STATE_DISCONNECTING"

.field private static final TAG:Ljava/lang/String; = "CP_COMM:PPPOEManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUWService:Lcom/yulong/android/uwservice/IUWNativeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    new-instance v0, Lcom/yulong/android/telephony/PPPOEInfo;

    invoke-direct {v0}, Lcom/yulong/android/telephony/PPPOEInfo;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    .line 121
    const-string v0, "CPUWDManager starting up"

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/PPPOEManager;->LOGD(Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/yulong/android/telephony/PPPOEManager;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Lcom/yulong/android/telephony/PPPOEManager;->startMonitoring()V

    .line 127
    return-void
.end method


# virtual methods
.method LOGD(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 188
    const-string v0, "CP_COMM:PPPOEManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method LOGE(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 192
    const-string v0, "CP_COMM:PPPOEManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method dispatchLinkStateMsg(II)V
    .locals 5
    .parameter "rasConnStats"
    .parameter "error"

    .prologue
    .line 130
    const-string v3, "onCPUwdLinkStateChange"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/PPPOEManager;->LOGE(Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 135
    :pswitch_0
    const-string v3, "pppoe"

    const-string v4, "in case E_PPPOE_STATE_CONNECTING"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    const-string v4, "PPPOE_STATE_CONNECTING"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/PPPOEInfo;->updatePppoeStatus(Ljava/lang/String;)V

    .line 137
    const-string v3, "pppoe_state"

    const-string v4, "PPPOE_STATE_CONNECTING"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/PPPOEInfo;->updatePppoeOnlineTime(Z)V

    .line 142
    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    const-string v4, "PPPOE_STATE_CONNECTED"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/PPPOEInfo;->updatePppoeStatus(Ljava/lang/String;)V

    .line 143
    const-string v3, "pppoe_state"

    const-string v4, "PPPOE_STATE_CONNECTED"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, itIntent:Landroid/content/Intent;
    const-string v3, "pppoe_result_status"

    const-string v4, "SUCCESS"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 150
    .end local v2           #itIntent:Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    const-string v4, "PPPOE_STATE_DISCONNECTING"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/PPPOEInfo;->updatePppoeStatus(Ljava/lang/String;)V

    .line 151
    const-string v3, "pppoe_state"

    const-string v4, "PPPOE_STATE_DISCONNECTING"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    const-string v4, "PPPOE_STATE_DISCONNECTED"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/PPPOEInfo;->updatePppoeStatus(Ljava/lang/String;)V

    .line 156
    const-string v3, "pppoe_state"

    const-string v4, "PPPOE_STATE_DISCONNECTED"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, it:Landroid/content/Intent;
    const-string v3, "pppoe_result_status"

    const-string v4, "FAILURE"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v3, "pppoe_result_error_code"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPppoeInfo()Lcom/yulong/android/telephony/PPPOEInfo;
    .locals 2

    .prologue
    .line 272
    const-string v0, "pppoe"

    const-string v1, "$$$$$ in PPPOEManager getPppoeInfo()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    invoke-virtual {v0}, Lcom/yulong/android/telephony/PPPOEInfo;->updatePppoeOnlineTime()V

    .line 275
    iget-object v0, p0, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    return-object v0
.end method

.method public getUWNativeService()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 204
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/yulong/android/telephony/PPPOEManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    .line 206
    const/16 v1, 0xa

    .line 207
    .local v1, count:I
    :goto_0
    if-lez v1, :cond_1

    .line 208
    const-string v4, "uwservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 209
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 210
    invoke-static {v0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/uwservice/IUWNativeService;

    move-result-object v4

    iput-object v4, p0, Lcom/yulong/android/telephony/PPPOEManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    .line 211
    const-string v4, "start  success"

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/PPPOEManager;->LOGD(Ljava/lang/String;)V

    .line 235
    .end local v0           #binder:Landroid/os/IBinder;
    :goto_1
    return v3

    .line 216
    .restart local v0       #binder:Landroid/os/IBinder;
    :cond_0
    const-wide/16 v4, 0x1e

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 223
    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    .line 219
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 224
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_1
    if-nez v1, :cond_2

    .line 225
    const-string v4, "ctl.start"

    const-string v5, "cw_service"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 227
    const-string v4, "uwservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 228
    .restart local v0       #binder:Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 229
    invoke-static {v0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/uwservice/IUWNativeService;

    move-result-object v4

    iput-object v4, p0, Lcom/yulong/android/telephony/PPPOEManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    .line 230
    const-string v4, "start  success 2"

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/PPPOEManager;->LOGD(Ljava/lang/String;)V

    goto :goto_1

    .line 234
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_2
    const-string v3, "cannot start uwservice"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/PPPOEManager;->LOGD(Ljava/lang/String;)V

    .line 235
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    .line 176
    return-void
.end method

.method public startMonitoring()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "yulong.intent.action.START_PPPOE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "yulong.intent.action.STOP_PPPOE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "yulong.intent.action.ACTION_PPPOE_SEND_PPPOEINFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;-><init>(Lcom/yulong/android/telephony/PPPOEManager;Lcom/yulong/android/telephony/PPPOEManager$1;)V

    iput-object v1, p0, Lcom/yulong/android/telephony/PPPOEManager;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iget-object v1, p0, Lcom/yulong/android/telephony/PPPOEManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/telephony/PPPOEManager;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public startPppoe(Lcom/yulong/android/telephony/PPPOEConfig;)V
    .locals 3
    .parameter "pppoeConfig"

    .prologue
    .line 242
    const-string v1, "pppoe"

    const-string v2, "$$$$$ in PPPOEManager startPppoe()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/yulong/android/telephony/PPPOEManager;->getUWNativeService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/yulong/android/telephony/PPPOEManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    new-instance v2, Lcom/yulong/android/telephony/PPPOEManager$JavaServiceImpl;

    invoke-direct {v2, p0}, Lcom/yulong/android/telephony/PPPOEManager$JavaServiceImpl;-><init>(Lcom/yulong/android/telephony/PPPOEManager;)V

    invoke-interface {v1, v2, p1}, Lcom/yulong/android/uwservice/IUWNativeService;->UWstartPppoe(Lcom/yulong/android/uwservice/IUWJavaService;Lcom/yulong/android/telephony/PPPOEConfig;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopPppoe()V
    .locals 3

    .prologue
    .line 258
    const-string v1, "pppoe"

    const-string v2, "$$$$$ in PPPOEManager stopPppoe()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/yulong/android/telephony/PPPOEManager;->getUWNativeService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yulong/android/telephony/PPPOEInfo;->updatePppoeOnlineTime(Z)V

    .line 263
    iget-object v1, p0, Lcom/yulong/android/telephony/PPPOEManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    invoke-interface {v1}, Lcom/yulong/android/uwservice/IUWNativeService;->UWstopPppoe()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
