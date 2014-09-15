.class Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "AudioImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AudioImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordCountDownTimer"
.end annotation


# instance fields
.field counter:I

.field hasStartUpRecord:Z

.field final synthetic this$0:Lcom/android/camera/ui/AudioImageView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/AudioImageView;JJ)V
    .locals 2
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    const/4 v1, 0x0

    .line 516
    iput-object p1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->this$0:Lcom/android/camera/ui/AudioImageView;

    .line 517
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 515
    iput-boolean v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->hasStartUpRecord:Z

    .line 518
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->counter:I

    .line 519
    iput-boolean v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->hasStartUpRecord:Z

    .line 520
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 539
    const-string v1, "AudioImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish!!!:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->counter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-boolean v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->hasStartUpRecord:Z

    if-eqz v1, :cond_0

    .line 542
    new-instance v0, Lcom/android/camera/ui/AudioImageView$RecordAudioData;

    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->this$0:Lcom/android/camera/ui/AudioImageView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/AudioImageView$RecordAudioData;-><init>(Lcom/android/camera/ui/AudioImageView;Lcom/android/camera/ui/AudioImageView$1;)V

    .line 543
    .local v0, audioData:Lcom/android/camera/ui/AudioImageView$RecordAudioData;
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v1, v1, Lcom/android/camera/ui/AudioImageView;->mImagePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/ui/AudioImageView$RecordAudioData;->imagePath:Ljava/lang/String;

    .line 544
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v1, v1, Lcom/android/camera/ui/AudioImageView;->mAudioPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/ui/AudioImageView$RecordAudioData;->audioPath:Ljava/lang/String;

    .line 545
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v1, v1, Lcom/android/camera/ui/AudioImageView;->mHandler:Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 546
    const-string v1, "AudioImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send to target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v3, v3, Lcom/android/camera/ui/AudioImageView;->mHandler:Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .end local v0           #audioData:Lcom/android/camera/ui/AudioImageView$RecordAudioData;
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .parameter "millisUntilFinished"

    .prologue
    .line 524
    const-string v1, "AudioImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send counter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->counter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->this$0:Lcom/android/camera/ui/AudioImageView;

    #getter for: Lcom/android/camera/ui/AudioImageView;->mAudioAction:B
    invoke-static {v1}, Lcom/android/camera/ui/AudioImageView;->access$100(Lcom/android/camera/ui/AudioImageView;)B

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 535
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->hasStartUpRecord:Z

    if-nez v1, :cond_1

    .line 528
    new-instance v0, Lcom/android/camera/ui/AudioImageView$RecordAudioData;

    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->this$0:Lcom/android/camera/ui/AudioImageView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/AudioImageView$RecordAudioData;-><init>(Lcom/android/camera/ui/AudioImageView;Lcom/android/camera/ui/AudioImageView$1;)V

    .line 529
    .local v0, audioData:Lcom/android/camera/ui/AudioImageView$RecordAudioData;
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v1, v1, Lcom/android/camera/ui/AudioImageView;->mAudioPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/ui/AudioImageView$RecordAudioData;->audioPath:Ljava/lang/String;

    .line 530
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v1, v1, Lcom/android/camera/ui/AudioImageView;->mHandler:Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 531
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->hasStartUpRecord:Z

    .line 533
    .end local v0           #audioData:Lcom/android/camera/ui/AudioImageView$RecordAudioData;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v1, v1, Lcom/android/camera/ui/AudioImageView;->mHandler:Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

    const/16 v2, 0x64

    iget v3, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->counter:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 534
    iget v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;->counter:I

    goto :goto_0
.end method
