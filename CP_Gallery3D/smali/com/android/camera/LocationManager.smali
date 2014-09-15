.class public Lcom/android/camera/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/LocationManager$LocationListener;,
        Lcom/android/camera/LocationManager$Listener;
    }
.end annotation


# instance fields
.field public fristStart:Z

.field private mBaiDuLocation:Landroid/location/Location;

.field mBaiduLocationListener:Lcom/baidu/location/BDLocationListener;

.field private mBaiduLocationOn:Z

.field private mCDMALocation:Landroid/location/Location;

.field private mCDMALocationFail:Z

.field private mContext:Landroid/content/Context;

.field private mGPSToast:Landroid/widget/Toast;

.field private mGpsEnabled:Z

.field private mListener:Lcom/android/camera/LocationManager$Listener;

.field private mLocating:Z

.field private mLocationClient:Lcom/baidu/location/LocationClient;

.field private mLocationCount:I

.field mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNetWorkEnabled:Z

.field private mRecordLocation:Z

.field private mTimerGPS:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;

    .line 68
    iput-object v0, p0, Lcom/android/camera/LocationManager;->mCDMALocation:Landroid/location/Location;

    .line 69
    iput v3, p0, Lcom/android/camera/LocationManager;->mLocationCount:I

    .line 70
    iput-boolean v3, p0, Lcom/android/camera/LocationManager;->mLocating:Z

    .line 71
    iput-boolean v3, p0, Lcom/android/camera/LocationManager;->mCDMALocationFail:Z

    .line 73
    iput-boolean v4, p0, Lcom/android/camera/LocationManager;->mGpsEnabled:Z

    .line 74
    iput-boolean v4, p0, Lcom/android/camera/LocationManager;->mNetWorkEnabled:Z

    .line 76
    iput-object v0, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 77
    iput-object v0, p0, Lcom/android/camera/LocationManager;->mBaiDuLocation:Landroid/location/Location;

    .line 78
    iput-boolean v3, p0, Lcom/android/camera/LocationManager;->mBaiduLocationOn:Z

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/LocationManager$LocationListener;

    new-instance v1, Lcom/android/camera/LocationManager$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/LocationManager$LocationListener;-><init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/LocationManager$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/LocationManager$LocationListener;-><init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    .line 127
    iput-boolean v4, p0, Lcom/android/camera/LocationManager;->fristStart:Z

    .line 303
    new-instance v0, Lcom/android/camera/LocationManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/LocationManager$2;-><init>(Lcom/android/camera/LocationManager;)V

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mBaiduLocationListener:Lcom/baidu/location/BDLocationListener;

    .line 93
    iput-object p1, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/LocationManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mLocating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/LocationManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/camera/LocationManager;->mLocating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/LocationManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/camera/LocationManager;->mLocationCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/LocationManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/camera/LocationManager;->mLocationCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/camera/LocationManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/camera/LocationManager;->mLocationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/LocationManager;->mLocationCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/LocationManager;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/LocationManager;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/LocationManager;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mBaiDuLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/LocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/LocationManager;->mBaiDuLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/LocationManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    return v0
.end method

.method private startBaiduLocation()V
    .locals 3

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-nez v1, :cond_0

    .line 278
    new-instance v1, Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 279
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-nez v1, :cond_1

    .line 280
    const-string v1, "LocationManager"

    const-string v2, "##### mLocationClient is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    const-string v1, "LocationManager"

    const-string v2, "startBaiduLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 285
    .local v0, option:Lcom/baidu/location/LocationClientOption;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 286
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 287
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setPriority(I)V

    .line 288
    const-string v1, "YLCamera"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setProdName(Ljava/lang/String;)V

    .line 289
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 290
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 291
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->start()V

    .line 292
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->requestLocation()I

    .line 293
    const-string v1, "LocationManager"

    const-string v2, "registerLocationListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/android/camera/LocationManager;->mBaiduLocationListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 295
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/LocationManager;->mBaiduLocationOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v0           #option:Lcom/baidu/location/LocationClientOption;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startReceivingLocationUpdates()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 129
    const-string v0, "LocationManager"

    const-string v1, "startReceivingLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mGpsEnabled:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mNetWorkEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->fristStart:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 152
    .local v6, conn:Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_4

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 175
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 186
    :cond_3
    :goto_2
    iput-boolean v9, p0, Lcom/android/camera/LocationManager;->mLocating:Z

    .line 189
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->startBaiduLocation()V

    .line 191
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v9}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;

    .line 192
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;

    new-instance v1, Lcom/android/camera/LocationManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/LocationManager$1;-><init>(Lcom/android/camera/LocationManager;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2bc

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 223
    :cond_4
    return-void

    .line 163
    :catch_0
    move-exception v7

    .line 164
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v0, "LocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 165
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v7

    .line 166
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 182
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v0, "LocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 183
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v7

    .line 184
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 170
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method private stopBaiduLocation()V
    .locals 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mBaiduLocationOn:Z

    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const-string v0, "LocationManager"

    const-string v1, "######## stop bai dulocation "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/LocationManager;->mBaiduLocationOn:Z

    .line 356
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "LocationManager"

    const-string v1, "mLocationClient!=null and stop bai dulocation "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 359
    const-string v0, "LocationManager"

    const-string v1, "unRegisterLocationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/android/camera/LocationManager;->mBaiduLocationListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private stopReceivingLocationUpdates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 385
    const-string v2, "LocationManager"

    const-string v3, "--------stopReceivingLocationUpdates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    .line 387
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 389
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "LocationManager"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 394
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v2, "LocationManager"

    const-string v3, "stopReceivingLocationUpdates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v1           #i:I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->stopBaiduLocation()V

    .line 398
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;

    if-eqz v2, :cond_2

    .line 399
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 400
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 401
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;

    .line 403
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/LocationManager;->mGpsEnabled:Z

    if-nez v2, :cond_3

    .line 404
    const-string v2, "LocationManager"

    const-string v3, "--------stopReceivingLocationUpdates--------mGpsEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 408
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/LocationManager;->mNetWorkEnabled:Z

    if-nez v2, :cond_4

    .line 409
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 413
    :cond_4
    iput-boolean v4, p0, Lcom/android/camera/LocationManager;->mLocating:Z

    .line 416
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    invoke-interface {v2}, Lcom/android/camera/LocationManager$Listener;->hideGpsOnScreenIndicator()V

    .line 417
    :cond_5
    return-void
.end method


# virtual methods
.method public enabledNetWorkProvider()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/LocationManager;->mGpsEnabled:Z

    .line 543
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/LocationManager;->mNetWorkEnabled:Z

    .line 548
    return-void
.end method

.method public forceStopBaiduLoation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mGPSToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mGPSToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 373
    iput-object v2, p0, Lcom/android/camera/LocationManager;->mGPSToast:Landroid/widget/Toast;

    .line 375
    :cond_0
    const-string v0, "LocationManager"

    const-string v1, "!!!!!!forceStopBaiduLoation to  stop bai dulocation "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 377
    const-string v0, "LocationManager"

    const-string v1, "unRegisterLocationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/android/camera/LocationManager;->mBaiduLocationListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 379
    iput-object v2, p0, Lcom/android/camera/LocationManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 381
    :cond_1
    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-boolean v3, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-nez v3, :cond_1

    move-object v1, v2

    .line 110
    :cond_0
    :goto_0
    return-object v1

    .line 101
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/camera/LocationManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 103
    .local v1, l:Landroid/location/Location;
    if-nez v1, :cond_0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v1           #l:Landroid/location/Location;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/LocationManager;->mCDMALocation:Landroid/location/Location;

    if-eqz v3, :cond_3

    .line 106
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mCDMALocation:Landroid/location/Location;

    goto :goto_0

    .line 109
    :cond_3
    const-string v3, "LocationManager"

    const-string v4, "No location received yet."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 110
    goto :goto_0
.end method

.method public recordLocation(Z)V
    .locals 3
    .parameter "recordLocation"

    .prologue
    .line 115
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----recordLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-eq v0, p1, :cond_0

    .line 117
    iput-boolean p1, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    .line 118
    if-eqz p1, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->startReceivingLocationUpdates()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->stopReceivingLocationUpdates()V

    goto :goto_0
.end method
