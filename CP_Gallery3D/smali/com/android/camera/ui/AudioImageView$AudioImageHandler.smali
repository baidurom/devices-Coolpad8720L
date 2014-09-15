.class Lcom/android/camera/ui/AudioImageView$AudioImageHandler;
.super Landroid/os/Handler;
.source "AudioImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AudioImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioImageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/AudioImageView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/AudioImageView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/camera/ui/AudioImageView$AudioImageHandler;->this$0:Lcom/android/camera/ui/AudioImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 485
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 488
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 489
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 491
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView$AudioImageHandler;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v2, v2, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    if-eqz v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView$AudioImageHandler;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v2, v2, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->setValue(I)V

    goto :goto_0

    .line 496
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/ui/AudioImageView$RecordAudioData;

    .line 497
    .local v0, audioData:Lcom/android/camera/ui/AudioImageView$RecordAudioData;
    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView$AudioImageHandler;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v2, v2, Lcom/android/camera/ui/AudioImageView;->mDataChangedListener:Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;

    if-eqz v2, :cond_0

    .line 498
    const-string v2, "AudioImageView"

    const-string v3, "call onStartRecord!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView$AudioImageHandler;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v2, v2, Lcom/android/camera/ui/AudioImageView;->mDataChangedListener:Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;

    iget-object v3, v0, Lcom/android/camera/ui/AudioImageView$RecordAudioData;->audioPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;->onStartRecord(Ljava/lang/String;)V

    goto :goto_0

    .line 503
    .end local v0           #audioData:Lcom/android/camera/ui/AudioImageView$RecordAudioData;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/ui/AudioImageView$RecordAudioData;

    .line 504
    .local v1, data:Lcom/android/camera/ui/AudioImageView$RecordAudioData;
    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView$AudioImageHandler;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v2, v2, Lcom/android/camera/ui/AudioImageView;->mDataChangedListener:Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;

    if-eqz v2, :cond_0

    .line 505
    const-string v2, "AudioImageView"

    const-string v3, "call onMixData!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView$AudioImageHandler;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v2, v2, Lcom/android/camera/ui/AudioImageView;->mDataChangedListener:Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;

    invoke-interface {v2}, Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;->onStopRecord()V

    .line 507
    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView$AudioImageHandler;->this$0:Lcom/android/camera/ui/AudioImageView;

    iget-object v2, v2, Lcom/android/camera/ui/AudioImageView;->mDataChangedListener:Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;

    iget-object v3, v1, Lcom/android/camera/ui/AudioImageView$RecordAudioData;->imagePath:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/camera/ui/AudioImageView$RecordAudioData;->audioPath:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;->onMixData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method
