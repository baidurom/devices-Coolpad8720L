.class Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSavingCountDownTimer"
.end annotation


# instance fields
.field private hasFinished:Z

.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;JJ)V
    .locals 1
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 1825
    iput-object p1, p0, Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;->this$0:Lcom/android/camera/CameraActivity;

    .line 1826
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;->hasFinished:Z

    .line 1827
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;->this$0:Lcom/android/camera/CameraActivity;

    #getter for: Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;
    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$600(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ShutterButton$ShutterMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/ShutterButton$ShutterMode;->VIDEO:Lcom/android/camera/ShutterButton$ShutterMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;->this$0:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->panoramaRunning:Z

    if-nez v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;->this$0:Lcom/android/camera/CameraActivity;

    #calls: Lcom/android/camera/CameraActivity;->launchPowersaving()V
    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$700(Lcom/android/camera/CameraActivity;)V

    .line 1850
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .parameter "millisUntilFinished"

    .prologue
    .line 1841
    const-string v0, "CAM_activity"

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

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    return-void
.end method
