.class public Landroid/net/wifi/WifiStatusBar;
.super Ljava/lang/Object;
.source "WifiStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStatusBar$WifiHandler;
    }
.end annotation


# static fields
.field private static final ACTION_UW_STATE_CHANGE:Ljava/lang/String; = "yulong.intent.action.UW_STATE_CHANGE"

.field public static final ACTION_WIFI_STATUSBAR:Ljava/lang/String; = "com.yulong.android.action.WifiStatusBar"

.field public static final FLAG_WIFI_STATUSBAR_ICONID:Ljava/lang/String; = "iconid"

.field public static final FLAG_WIFI_STATUSBAR_TYPEID:Ljava/lang/String; = "typeid"

.field public static final UW_CONNECTED:I = 0x5

.field public static final UW_CONNECTING:I = 0x4

.field public static final UW_DEREGISTING:I = 0x7

.field public static final UW_DISCONNECTING:I = 0x6

.field public static final UW_IDLE:I = 0x1

.field public static final UW_REGISTED:I = 0x3

.field public static final UW_REGISTING:I = 0x2

.field public static final UW_STATE_KEY:Ljava/lang/String; = "state"

.field private static final WIFI_ICON_COMMON:I = 0x0

.field private static final WIFI_ICON_CONNETCTED:I = 0x2

.field private static final WIFI_ICON_CONNETCTING:I = 0x4

.field private static final WIFI_ICON_DATA_IN:I = 0x5

.field private static final WIFI_ICON_DATA_INOUT:I = 0x7

.field private static final WIFI_ICON_DATA_OUT:I = 0x6

.field private static final WIFI_ICON_REGISTED:I = 0x1

.field private static final WIFI_ICON_REGISTING:I = 0x3

.field private static final WIFI_STATE_DISABLED:I = -0x2

.field private static final WIFI_STATE_ENABLED:I = -0x1


# instance fields
.field final TAG:Ljava/lang/String;

.field private final UW_CONNECT_FAILED:I

.field private final UW_REGIST_FAILED:I

.field private iconId:I

.field mContext:Landroid/content/Context;

.field private mIsWifiConnected:Z

.field mWifiActivity:I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiEnabled:Z

.field private wifiIconType:I

.field private wifiLevelCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v4, "WifiStatusBar"

    iput-object v4, p0, Landroid/net/wifi/WifiStatusBar;->TAG:Ljava/lang/String;

    .line 30
    const/4 v4, 0x1

    iput v4, p0, Landroid/net/wifi/WifiStatusBar;->UW_REGIST_FAILED:I

    .line 31
    const/4 v4, 0x2

    iput v4, p0, Landroid/net/wifi/WifiStatusBar;->UW_CONNECT_FAILED:I

    .line 67
    iput v6, p0, Landroid/net/wifi/WifiStatusBar;->mWifiActivity:I

    .line 74
    iput-object p1, p0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    .line 76
    const-string v4, "WifiStatusBar"

    const-string v5, "construct WifiStatusBar"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v4, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 86
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    new-instance v1, Landroid/net/wifi/WifiStatusBar$WifiHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Landroid/net/wifi/WifiStatusBar$WifiHandler;-><init>(Landroid/net/wifi/WifiStatusBar;Landroid/os/Looper;)V

    .line 87
    .local v1, handler:Landroid/os/Handler;
    new-instance v4, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v4}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStatusBar;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 88
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v3

    .line 89
    .local v3, wifiMessenger:Landroid/os/Messenger;
    if-eqz v3, :cond_0

    .line 90
    iget-object v4, p0, Landroid/net/wifi/WifiStatusBar;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 94
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/net/wifi/WifiStatusBar$1;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiStatusBar$1;-><init>(Landroid/net/wifi/WifiStatusBar;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    iput v6, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    .line 105
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiStatusBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    return p1
.end method

.method private emmit_quoted_string(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "myString"

    .prologue
    const/16 v2, 0x22

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    const-string p1, ""

    .line 316
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 311
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 312
    .local v0, lastPos:I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 313
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected sendUpdateWifiIconChange()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.action.WifiStatusBar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, intent2:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    const-string v1, "iconid"

    iget v2, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string/jumbo v1, "typeid"

    iget v2, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 304
    return-void
.end method

.method updateWifi(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string v9, "WifiStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WifiStatusBar: action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 162
    const-string/jumbo v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 164
    .local v8, wifiStatus:I
    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    const/4 v1, 0x1

    .line 165
    .local v1, enabled:Z
    :goto_1
    if-nez v1, :cond_4

    .line 167
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    .line 168
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/net/wifi/WifiStatusBar;->mWifiEnabled:Z

    .line 169
    const/4 v9, -0x2

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 176
    :goto_2
    const-string v9, "WifiStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WifiStatusBar iconId ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v1           #enabled:Z
    .end local v8           #wifiStatus:I
    :cond_2
    :goto_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiStatusBar;->sendUpdateWifiIconChange()V

    goto :goto_0

    .line 164
    .restart local v8       #wifiStatus:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 171
    .restart local v1       #enabled:Z
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/net/wifi/WifiStatusBar;->mWifiEnabled:Z

    .line 172
    const/4 v9, -0x1

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    goto :goto_2

    .line 177
    .end local v1           #enabled:Z
    .end local v8           #wifiStatus:I
    :cond_5
    const-string v9, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 179
    const-string v9, "connected"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 184
    .restart local v1       #enabled:Z
    const-string v9, "WifiStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WifiStatusBar iconId ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 185
    .end local v1           #enabled:Z
    :cond_6
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 186
    const-string/jumbo v9, "networkInfo"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 189
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    iget-boolean v9, p0, Landroid/net/wifi/WifiStatusBar;->mWifiEnabled:Z

    if-eqz v9, :cond_7

    .line 190
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 191
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    .line 192
    iget v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiLevelCount:I

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 199
    :cond_7
    :goto_4
    const-string v9, "WifiStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WifiStatusBar iconId ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 194
    :cond_8
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    .line 195
    const/4 v9, -0x1

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 196
    const/4 v9, 0x0

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_4

    .line 200
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_9
    const-string v9, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 202
    const-string/jumbo v9, "newRssi"

    const/16 v10, -0xc8

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 204
    .local v5, newRssi:I
    const-string v9, "WifiStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WifiStatusBar: mRssi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v9, 0x4

    invoke-static {v5, v9}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v9

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiLevelCount:I

    .line 208
    iget-boolean v9, p0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    if-eqz v9, :cond_2

    .line 209
    iget v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiLevelCount:I

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 210
    const-string v9, "WifiStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WifiStatusBar iconId ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 213
    .end local v5           #newRssi:I
    :cond_a
    const-string/jumbo v9, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 214
    iget-boolean v9, p0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    if-eqz v9, :cond_10

    .line 215
    iget-object v9, p0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 217
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, mySsid:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 219
    const-wide/16 v9, 0xc8

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 220
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 222
    :cond_b
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStatusBar;->emmit_quoted_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    const-string v9, "WifiStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current primary ap ssid is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v9, "ChinaNet_HomeCW"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "ChinaNet_CW"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "ChinaNet"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 227
    :cond_c
    const-string/jumbo v9, "state"

    const/4 v10, 0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 228
    .local v7, uwState:I
    const-string/jumbo v9, "state_reason"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 230
    .local v6, uwErrorCode:I
    const-string v9, "WifiStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CPUWDManager.UW_STATE_KEY:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",uwErrorCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v9, 0x1

    if-eq v9, v6, :cond_d

    const/4 v9, 0x2

    if-ne v9, v6, :cond_f

    .line 234
    :cond_d
    const/4 v9, 0x1

    if-ne v9, v6, :cond_e

    .line 235
    const/4 v9, 0x0

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto/16 :goto_0

    .line 236
    :cond_e
    const/4 v9, 0x2

    if-ne v9, v6, :cond_0

    .line 237
    const/4 v9, 0x1

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto/16 :goto_0

    .line 241
    :cond_f
    const-string v9, "WifiStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "uwState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    packed-switch v7, :pswitch_data_0

    .line 278
    const-string v9, "WifiStatusBar"

    const-string v10, "c+w default"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v9, 0x0

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    .line 285
    .end local v2           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v3           #mySsid:Ljava/lang/String;
    .end local v6           #uwErrorCode:I
    .end local v7           #uwState:I
    :cond_10
    :goto_5
    const-string v9, "WifiStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WifiStatusBar iconId ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; wifiIconType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 244
    .restart local v2       #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v3       #mySsid:Ljava/lang/String;
    .restart local v6       #uwErrorCode:I
    .restart local v7       #uwState:I
    :pswitch_0
    const/4 v9, 0x0

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 248
    :pswitch_1
    const-string v9, "WifiStatusBar"

    const-string v10, "C+W UW_REGISTING"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v9, 0x3

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 253
    :pswitch_2
    const-string v9, "WifiStatusBar"

    const-string v10, "C+W UW_REGISTED"

    invoke-static {v9, v10}, Landroid/util/Log;->d1(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v9, 0x1

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 258
    :pswitch_3
    const-string v9, "WifiStatusBar"

    const-string v10, "C+W UW_CONNECTING"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v9, 0x4

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 263
    :pswitch_4
    const-string v9, "WifiStatusBar"

    const-string v10, "C+W UW_CONNECTED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v9, 0x2

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 268
    :pswitch_5
    const-string v9, "WifiStatusBar"

    const-string v10, "C+W UW_DISCONNECTING"

    invoke-static {v9, v10}, Landroid/util/Log;->d1(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v9, 0x1

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 273
    :pswitch_6
    const-string v9, "WifiStatusBar"

    const-string v10, "C+W UW_DEREGISTING"

    invoke-static {v9, v10}, Landroid/util/Log;->d1(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v9, 0x0

    iput v9, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
