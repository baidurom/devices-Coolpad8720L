.class abstract Landroid/hardware/SystemSensorManager$BaseEventQueue;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseEventQueue"
.end annotation


# instance fields
.field private final mActiveSensors:Landroid/util/SparseBooleanArray;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field protected final mFirstEvent:Landroid/util/SparseBooleanArray;

.field protected final mManager:Landroid/hardware/SystemSensorManager;

.field private final mScratch:[F

.field protected final mSensorAccuracies:Landroid/util/SparseIntArray;

.field private nSensorEventQueue:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V
    .locals 2
    .parameter "looper"
    .parameter "manager"

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    .line 234
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    .line 235
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mFirstEvent:Landroid/util/SparseBooleanArray;

    .line 236
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 237
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mScratch:[F

    .line 241
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mScratch:[F

    invoke-direct {p0, p0, v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInitBaseEventQueue(Landroid/hardware/SystemSensorManager$BaseEventQueue;Landroid/os/MessageQueue;[F)I

    move-result v0

    iput v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    .line 242
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 243
    iput-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    .line 244
    return-void
.end method

.method private static native cp_sensors_calibrate_sensor(II[I)I
.end method

.method private static native cp_sensors_enable_sensor(ILjava/lang/String;IZ)Z
.end method

.method private disableSensor(Landroid/hardware/Sensor;)I
    .locals 2
    .parameter "sensor"

    .prologue
    .line 326
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 327
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 328
    :cond_1
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDisableSensor(II)I

    move-result v0

    return v0
.end method

.method private dispose(Z)V
    .locals 1
    .parameter "finalized"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 309
    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 312
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 314
    :cond_1
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-eqz v0, :cond_2

    .line 315
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-static {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDestroySensorEventQueue(I)V

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    .line 318
    :cond_2
    return-void
.end method

.method private enableSensor(Landroid/hardware/Sensor;I)I
    .locals 2
    .parameter "sensor"
    .parameter "us"

    .prologue
    .line 321
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 322
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 323
    :cond_1
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(III)I

    move-result v0

    return v0
.end method

.method private static native nativeDestroySensorEventQueue(I)V
.end method

.method private static native nativeDisableSensor(II)I
.end method

.method private static native nativeEnableSensor(III)I
.end method

.method private native nativeInitBaseEventQueue(Landroid/hardware/SystemSensorManager$BaseEventQueue;Landroid/os/MessageQueue;[F)I
.end method


# virtual methods
.method public addSensor(Landroid/hardware/Sensor;I)Z
    .locals 4
    .parameter "sensor"
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 253
    .local v0, handle:I
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    :goto_0
    return v1

    .line 256
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 257
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensorEvent(Landroid/hardware/Sensor;)V

    .line 258
    invoke-direct {p0, p1, p2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    invoke-virtual {p0, p1, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 262
    goto :goto_0
.end method

.method protected abstract addSensorEvent(Landroid/hardware/Sensor;)V
.end method

.method protected cpSensorsCalibrateImpl(Landroid/hardware/Sensor;[I)Z
    .locals 3
    .parameter "sensor"
    .parameter "values"

    .prologue
    .line 347
    const/4 v1, -0x1

    .line 348
    .local v1, result:I
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 350
    .local v0, handle:I
    iget v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 351
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 352
    :cond_1
    iget v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-static {v2, v0, p2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->cp_sensors_calibrate_sensor(II[I)I

    move-result v1

    .line 353
    if-gez v1, :cond_2

    .line 354
    const/4 v2, 0x0

    .line 356
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected cpSensorsEnableImpl(Landroid/hardware/Sensor;Z)Z
    .locals 4
    .parameter "sensor"
    .parameter "enable"

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    .line 375
    .local v1, handle:I
    iget v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 376
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 377
    :cond_1
    iget v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-static {v3, v2, v1, p2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->cp_sensors_enable_sensor(ILjava/lang/String;IZ)Z

    move-result v0

    .line 378
    .local v0, bRet:Z
    return v0
.end method

.method protected abstract dispatchSensorEvent(I[FIJ)V
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V

    .line 248
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 305
    return-void

    .line 303
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hasSensors()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 295
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v1

    if-ltz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllSensors()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 266
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 267
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 268
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 269
    .local v0, handle:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$000()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 270
    .local v2, sensor:Landroid/hardware/Sensor;
    if-eqz v2, :cond_0

    .line 271
    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 272
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 273
    invoke-virtual {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 266
    .end local v0           #handle:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_1
    return v5
.end method

.method public removeSensor(Landroid/hardware/Sensor;Z)Z
    .locals 4
    .parameter "sensor"
    .parameter "disable"

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 284
    .local v0, handle:I
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 286
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 287
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 288
    const/4 v1, 0x1

    .line 290
    :cond_1
    return v1
.end method

.method protected abstract removeSensorEvent(Landroid/hardware/Sensor;)V
.end method
