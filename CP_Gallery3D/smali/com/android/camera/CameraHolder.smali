.class public Lcom/android/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraHolder$1;,
        Lcom/android/camera/CameraHolder$MyHandler;,
        Lcom/android/camera/CameraHolder$OpenReleaseState;
    }
.end annotation


# static fields
.field private static mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

.field private static mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private static sDateFormat:Ljava/text/SimpleDateFormat;

.field private static sHolder:Lcom/android/camera/CameraHolder;

.field private static sOpenReleaseStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/CameraHolder$OpenReleaseState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraId:I

.field private mCameraOpened:Z

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private final mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/CameraHolder;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v4, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    .line 57
    iput v4, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    .line 58
    iput v4, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    .line 157
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    new-instance v2, Lcom/android/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/CameraHolder$MyHandler;-><init>(Lcom/android/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 160
    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-eqz v2, :cond_2

    .line 161
    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v2, v2

    iput v2, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    .line 162
    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 173
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_4

    .line 174
    iget v2, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_3

    .line 175
    iput v1, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    .line 173
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1           #i:I
    :cond_2
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    .line 165
    iget v2, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 166
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget v2, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 168
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    :cond_3
    iget v2, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 177
    iput v1, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    goto :goto_1

    .line 180
    :cond_4
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/CameraHolder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    return v0
.end method

.method private static declared-synchronized collectState(ILcom/android/camera/CameraManager$CameraProxy;)V
    .locals 8
    .parameter "id"
    .parameter "device"

    .prologue
    .line 77
    const-class v5, Lcom/android/camera/CameraHolder;

    monitor-enter v5

    :try_start_0
    new-instance v2, Lcom/android/camera/CameraHolder$OpenReleaseState;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/camera/CameraHolder$OpenReleaseState;-><init>(Lcom/android/camera/CameraHolder$1;)V

    .line 78
    .local v2, s:Lcom/android/camera/CameraHolder$OpenReleaseState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/camera/CameraHolder$OpenReleaseState;->time:J

    .line 79
    iput p0, v2, Lcom/android/camera/CameraHolder$OpenReleaseState;->id:I

    .line 80
    if-nez p1, :cond_0

    .line 81
    const-string v4, "(null)"

    iput-object v4, v2, Lcom/android/camera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;

    .line 86
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 87
    .local v3, stack:[Ljava/lang/StackTraceElement;
    array-length v4, v3

    new-array v1, v4, [Ljava/lang/String;

    .line 88
    .local v1, lines:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 89
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    .end local v0           #i:I
    .end local v1           #lines:[Ljava/lang/String;
    .end local v3           #stack:[Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/camera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    .end local v2           #s:Lcom/android/camera/CameraHolder$OpenReleaseState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 91
    .restart local v0       #i:I
    .restart local v1       #lines:[Ljava/lang/String;
    .restart local v2       #s:Lcom/android/camera/CameraHolder$OpenReleaseState;
    .restart local v3       #stack:[Ljava/lang/StackTraceElement;
    :cond_1
    :try_start_1
    iput-object v1, v2, Lcom/android/camera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    .line 93
    sget-object v4, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0xa

    if-le v4, v6, :cond_2

    .line 94
    sget-object v4, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 96
    :cond_2
    sget-object v4, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit v5

    return-void
.end method

.method private static declared-synchronized dumpStates()V
    .locals 9

    .prologue
    .line 100
    const-class v5, Lcom/android/camera/CameraHolder;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 101
    sget-object v4, Lcom/android/camera/CameraHolder;->sOpenReleaseStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraHolder$OpenReleaseState;

    .line 102
    .local v3, s:Lcom/android/camera/CameraHolder$OpenReleaseState;
    sget-object v4, Lcom/android/camera/CameraHolder;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v3, Lcom/android/camera/CameraHolder$OpenReleaseState;->time:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, date:Ljava/lang/String;
    const-string v4, "CameraHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "State "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v4, "CameraHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCameraId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/camera/CameraHolder$OpenReleaseState;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCameraDevice = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/camera/CameraHolder$OpenReleaseState;->device:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v4, "CameraHolder"

    const-string v6, "Stack:"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v4, v3, Lcom/android/camera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 107
    const-string v4, "CameraHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/camera/CameraHolder$OpenReleaseState;->stack:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 110
    .end local v0           #date:Ljava/lang/String;
    .end local v2           #j:I
    .end local v3           #s:Lcom/android/camera/CameraHolder$OpenReleaseState;
    :cond_1
    monitor-exit v5

    return-void

    .line 100
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static injectMockCamera([Landroid/hardware/Camera$CameraInfo;[Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 1
    .parameter "info"
    .parameter "camera"

    .prologue
    .line 151
    sput-object p0, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 152
    sput-object p1, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    .line 153
    new-instance v0, Lcom/android/camera/CameraHolder;

    invoke-direct {v0}, Lcom/android/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    .line 154
    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/camera/CameraHolder;
    .locals 2

    .prologue
    .line 121
    const-class v1, Lcom/android/camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/camera/CameraHolder;

    invoke-direct {v0}, Lcom/android/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    .line 124
    :cond_0
    sget-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public keep()V
    .locals 1

    .prologue
    .line 283
    const/16 v0, 0xfa0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraHolder;->keep(I)V

    .line 284
    return-void
.end method

.method public declared-synchronized keep(I)V
    .locals 4
    .parameter "time"

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 4
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {p1, v2}, Lcom/android/camera/CameraHolder;->collectState(ILcom/android/camera/CameraManager$CameraProxy;)V

    .line 194
    iget-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-eqz v2, :cond_0

    .line 195
    const-string v2, "CameraHolder"

    const-string v3, "double open"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Lcom/android/camera/CameraHolder;->dumpStates()V

    .line 199
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-nez v2, :cond_2

    :goto_0
    invoke-static {v1}, Lcom/android/camera/Util;->Assert(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    if-eq v1, p1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->release()V

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 203
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    .line 207
    :try_start_1
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v1, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-nez v1, :cond_3

    .line 209
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraManager;->cameraOpen(I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 215
    :goto_1
    iput p1, p0, Lcom/android/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 230
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 231
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    .line 233
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 199
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 211
    :cond_3
    :try_start_3
    sget-object v1, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_4

    .line 212
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    new-instance v1, Lcom/android/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 193
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 213
    :cond_4
    :try_start_5
    sget-object v1, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 223
    :cond_5
    :try_start_6
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->reconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 224
    :catch_1
    move-exception v0

    .line 225
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    const-string v1, "CameraHolder"

    const-string v2, "reconnect failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v1, Lcom/android/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 6

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    iget-object v3, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {v2, v3}, Lcom/android/camera/CameraHolder;->collectState(ILcom/android/camera/CameraManager$CameraProxy;)V

    .line 258
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 280
    :goto_0
    monitor-exit p0

    return-void

    .line 260
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 261
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 262
    iget-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-eqz v2, :cond_1

    .line 263
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 264
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 269
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    .line 270
    const-string v2, "CameraHolder"

    const-string v3, ">>>>>>>>just stop preivew in release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 273
    .restart local v0       #now:J
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 274
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->release()V

    .line 275
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 278
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 279
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/CameraHolder;->mCameraId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized tryOpen(I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    .line 242
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    :cond_0
    monitor-exit p0

    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
