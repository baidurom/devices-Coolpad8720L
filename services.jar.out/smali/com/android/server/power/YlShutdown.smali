.class public final Lcom/android/server/power/YlShutdown;
.super Ljava/lang/Object;
.source "YlShutdown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/YlShutdown$MySensorEventListener;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final RADIO_SHUTDOWN_PROPERTY:Ljava/lang/String; = "sys.radio.shutdown"

.field private static final SHUTDOWN_DELAY:I = 0x9c40

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mPoweroffdelay:Ljava/lang/Runnable;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mShutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/server/power/YlShutdown$1;

    invoke-direct {v0}, Lcom/android/server/power/YlShutdown$1;-><init>()V

    sput-object v0, Lcom/android/server/power/YlShutdown;->mPoweroffdelay:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/server/power/YlShutdown;->mReboot:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/server/power/YlShutdown;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method public static shutDownSensor(Landroid/content/Context;)V
    .locals 4
    .parameter "cpContext"

    .prologue
    const/4 v3, 0x0

    .line 99
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 101
    .local v1, mSensorManager:Landroid/hardware/SensorManager;
    if-eqz v1, :cond_2

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 103
    .local v0, mSensor:Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v1, v0, v3}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    .line 106
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v1, v0, v3}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    .line 110
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v1, v0, v3}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    .line 115
    .end local v0           #mSensor:Landroid/hardware/Sensor;
    :cond_2
    return-void
.end method

.method public static shutDownTimeOut(ZLjava/lang/String;)V
    .locals 1
    .parameter "flag"
    .parameter "reason"

    .prologue
    .line 273
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 274
    sput-boolean p0, Lcom/android/server/power/YlShutdown;->mReboot:Z

    .line 275
    sput-object p1, Lcom/android/server/power/YlShutdown;->mRebootReason:Ljava/lang/String;

    .line 276
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/server/power/YlShutdown;->mShutHandler:Landroid/os/Handler;

    .line 279
    return-void
.end method

.method public static shutRadios(I)V
    .locals 8
    .parameter "timeout"

    .prologue
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p0

    add-long v1, v4, v6

    .line 123
    .local v1, endTime:J
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .line 124
    .local v0, done:[Z
    new-instance v3, Lcom/android/server/power/YlShutdown$2;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/server/power/YlShutdown$2;-><init>(J[Z)V

    .line 261
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 263
    int-to-long v4, p0

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_0

    .line 267
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    return-void

    .line 264
    :catch_0
    move-exception v4

    goto :goto_0
.end method
