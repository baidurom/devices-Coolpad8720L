.class final Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT:I = -0x1

.field private static final INITIAL_SCREEN_ON:Z


# instance fields
.field private mActualBacklight:I

.field private mActualOn:Z

.field private mChangeInProgress:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingOn:Z

.field private final mTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/power/DisplayPowerState;


# direct methods
.method private constructor <init>(Lcom/android/server/power/DisplayPowerState;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 352
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 358
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    .line 359
    iput v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 360
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    .line 361
    iput v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    .line 400
    new-instance v0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;-><init>(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mTask:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/DisplayPowerState;Lcom/android/server/power/DisplayPowerState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/power/DisplayPowerState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    iput p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    return p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 391
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 392
    const-string v0, "Photonic Modulator State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActualOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActualBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mChangeInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public setState(ZI)Z
    .locals 4
    .parameter "on"
    .parameter "backlight"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    if-eq p2, v0, :cond_2

    .line 367
    :cond_0
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    const-string v0, "DisplayPowerState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting new screen state: on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", backlight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1
    const-string v0, "DisplayPowerState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting new screen state: on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", backlight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mChangeInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    .line 378
    iput p2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 380
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    if-nez v0, :cond_2

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    .line 382
    const-string v0, "DisplayPowerState"

    const-string v2, "setState : AsyncTask.THREAD_POOL_EXECUTOR.execute(mTask)"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 386
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    monitor-exit v1

    return v0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
