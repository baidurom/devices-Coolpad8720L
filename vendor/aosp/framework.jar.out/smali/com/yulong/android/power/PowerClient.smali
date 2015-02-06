.class public Lcom/yulong/android/power/PowerClient;
.super Ljava/lang/Object;
.source "PowerClient.java"


# static fields
.field public static final POWER_HINT_FINISH_ACTIVITY:I = 0x1000000d

.field public static final POWER_HINT_HAND_WRITE:I = 0x1000000e

.field public static final POWER_HINT_START_APP:I = 0x1000000c

.field private static final POWER_HINT_YULONG_START:I = 0x10000000


# instance fields
.field private mNativePowerClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 81
    invoke-static {}, Lcom/yulong/android/power/PowerClient;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/power/PowerClient;->mNativePowerClient:I

    .line 63
    invoke-direct {p0}, Lcom/yulong/android/power/PowerClient;->init()V

    .line 64
    return-void
.end method

.method private native init()V
.end method

.method private static native nativeClassInit()V
.end method

.method private native release()V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget v0, p0, Lcom/yulong/android/power/PowerClient;->mNativePowerClient:I

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/yulong/android/power/PowerClient;->release()V

    .line 75
    :cond_0
    return-void

    .line 71
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/yulong/android/power/PowerClient;->mNativePowerClient:I

    if-eqz v1, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/yulong/android/power/PowerClient;->release()V

    :cond_1
    throw v0
.end method

.method public native sendPowerHint(I[I)V
.end method
