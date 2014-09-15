.class Lcom/android/camera/PhotoModule$MyCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCountDownTimer"
.end annotation


# instance fields
.field private hasFinished:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;JJ)V
    .locals 1
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 7432
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MyCountDownTimer;->this$0:Lcom/android/camera/PhotoModule;

    .line 7433
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 7436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule$MyCountDownTimer;->hasFinished:Z

    .line 7434
    return-void
.end method

.method static synthetic access$11300(Lcom/android/camera/PhotoModule$MyCountDownTimer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 7431
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->getFinishedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/android/camera/PhotoModule$MyCountDownTimer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7431
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->setFinishedState(Z)V

    return-void
.end method

.method private getFinishedState()Z
    .locals 1

    .prologue
    .line 7439
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$MyCountDownTimer;->hasFinished:Z

    return v0
.end method

.method private setFinishedState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 7443
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule$MyCountDownTimer;->hasFinished:Z

    .line 7444
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MyCountDownTimer;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/CameraActivity;->needUpdateView:Z

    .line 7445
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7455
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MyCountDownTimer;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule$MyCountDownTimer;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7457
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->setFinishedState(Z)V

    .line 7458
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MyCountDownTimer;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 7459
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MyCountDownTimer;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->enterContinuousShotMode()V

    .line 7460
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MyCountDownTimer;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->doShotToShotCapture()V
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10100(Lcom/android/camera/PhotoModule;)V

    .line 7461
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MyCountDownTimer;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->mpreShot2ShotMode:Z
    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule;->access$11602(Lcom/android/camera/PhotoModule;Z)Z

    .line 7463
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .parameter "millisUntilFinished"

    .prologue
    .line 7449
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time remaining until entering Continuous Shot Mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " .\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7451
    return-void
.end method
