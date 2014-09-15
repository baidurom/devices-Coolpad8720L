.class public Lcom/android/camera/EffectAudioImage;
.super Lcom/android/camera/CameraEffectBase;
.source "EffectAudioImage.java"

# interfaces
.implements Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;
.implements Lcom/yulong/android/jpgmp3mix/JpgMp3Mix$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/EffectAudioImage$AudioImageHandler;
    }
.end annotation


# instance fields
.field volatile isStartAudioRecord:Z

.field mAudioImageHandler:Lcom/android/camera/EffectAudioImage$AudioImageHandler;

.field mAudioImageView:Lcom/android/camera/ui/AudioImageView;

.field mEnterOrientation:I

.field mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

.field mPassOrientation:I

.field mRotateOrientation:I

.field mTitle:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field mViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/view/ViewGroup;Landroid/os/Handler;)V
    .locals 2
    .parameter "EffectService"
    .parameter "context"
    .parameter "para"
    .parameter "vg"
    .parameter "handler"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraEffectBase;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/EffectAudioImage;->isStartAudioRecord:Z

    .line 210
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "audio image"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/EffectAudioImage;->mHandlerThread:Landroid/os/HandlerThread;

    .line 48
    const-string v0, "jpgmp3mix"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraEffectBase;->SetEffectName(Ljava/lang/String;)V

    .line 49
    iput-object p4, p0, Lcom/android/camera/EffectAudioImage;->mViewContainer:Landroid/view/ViewGroup;

    .line 50
    iput-object p5, p0, Lcom/android/camera/EffectAudioImage;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/EffectAudioImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/EffectAudioImage;->removeAllView()V

    return-void
.end method

.method private removeAllView()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageView:Lcom/android/camera/ui/AudioImageView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageView:Lcom/android/camera/ui/AudioImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/AudioImageView;->recycleData()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 121
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mViewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraEffectBase;->isProcessOver:Z

    .line 124
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method


# virtual methods
.method public CloseEffect()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "EffectAudioImage"

    const-string v1, "close and release!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/EffectAudioImage;->onStopRecord()V

    .line 85
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    invoke-virtual {v0}, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;->release()V

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraEffectBase;->isProcessOver:Z

    .line 88
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->CloseEffect()V

    .line 89
    return-void
.end method

.method public EndCapture()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->EndCapture()V

    .line 93
    return-void
.end method

.method public OpenEffect()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "EffectAudioImage"

    const-string v1, "OpenEffect!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    invoke-direct {v0}, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    .line 57
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    invoke-virtual {v0, p0}, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;->setOnInfoListener(Lcom/yulong/android/jpgmp3mix/JpgMp3Mix$OnInfoListener;)V

    .line 58
    new-instance v0, Lcom/android/camera/EffectAudioImage$AudioImageHandler;

    iget-object v1, p0, Lcom/android/camera/EffectAudioImage;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/EffectAudioImage$AudioImageHandler;-><init>(Lcom/android/camera/EffectAudioImage;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageHandler:Lcom/android/camera/EffectAudioImage$AudioImageHandler;

    .line 59
    return-void
.end method

.method public SetThumbnail([BLjava/lang/String;II)V
    .locals 3
    .parameter "data"
    .parameter "title"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/CameraEffectBase;->SetThumbnail([BLjava/lang/String;II)V

    .line 141
    const-string v0, "EffectAudioImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set image data!!!:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-object p2, p0, Lcom/android/camera/EffectAudioImage;->mTitle:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageHandler:Lcom/android/camera/EffectAudioImage$AudioImageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    return-void
.end method

.method public StartCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->StartCapture()V

    .line 64
    const v0, 0x7f10000e

    const v1, 0x7f040007

    iget-object v2, p0, Lcom/android/camera/EffectAudioImage;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/CameraEffectBase;->inflateLayout(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AudioImageView;

    iput-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageView:Lcom/android/camera/ui/AudioImageView;

    .line 66
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageView:Lcom/android/camera/ui/AudioImageView;

    invoke-virtual {p0}, Lcom/android/camera/CameraEffectBase;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AudioImageView;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageView:Lcom/android/camera/ui/AudioImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/AudioImageView;->setDataChangedListener(Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getEnterOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectAudioImage;->mEnterOrientation:I

    .line 70
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectAudioImage;->mRotateOrientation:I

    .line 71
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectAudioImage;->mPassOrientation:I

    .line 73
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageView:Lcom/android/camera/ui/AudioImageView;

    iget v1, p0, Lcom/android/camera/EffectAudioImage;->mEnterOrientation:I

    iget v2, p0, Lcom/android/camera/EffectAudioImage;->mRotateOrientation:I

    iget v3, p0, Lcom/android/camera/EffectAudioImage;->mPassOrientation:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/AudioImageView;->setOrientation(III)V

    .line 74
    iput-boolean v4, p0, Lcom/android/camera/CameraEffectBase;->isProcessOver:Z

    .line 75
    iput-boolean v4, p0, Lcom/android/camera/EffectAudioImage;->isStartAudioRecord:Z

    .line 76
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->finish()V

    .line 103
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageView:Lcom/android/camera/ui/AudioImageView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageView:Lcom/android/camera/ui/AudioImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/AudioImageView;->cancelAudioRecord()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/EffectAudioImage;->onStopRecord()V

    .line 108
    const-string v0, "EffectAudioImage"

    const-string v1, "finish and release!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    invoke-virtual {v0}, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;->release()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/EffectAudioImage;->removeAllView()V

    .line 113
    return-void
.end method

.method public insertDB()V
    .locals 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/CameraEffectBase;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    .line 195
    .local v0, activity:Lcom/android/camera/CameraActivity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/EffectAudioImage;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/EffectAudioImage;->mUri:Landroid/net/Uri;

    const-string v3, "isaudioJpeg"

    const-string v4, "1"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/Storage;->insertAudioImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void
.end method

.method public isProcessOver()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/camera/CameraEffectBase;->isProcessOver:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/camera/EffectAudioImage;->onStopRecord()V

    .line 186
    invoke-direct {p0}, Lcom/android/camera/EffectAudioImage;->removeAllView()V

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 130
    const-string v0, "EffectAudioImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oninfo what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v0, 0x320

    if-ne p3, v0, :cond_1

    .line 132
    const-string v0, "EffectAudioImage"

    const-string v1, "----reached max duration!!!-----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/16 v0, 0x321

    if-ne p3, v0, :cond_0

    .line 135
    const-string v0, "EffectAudioImage"

    const-string v1, "----reached max file size!!!-----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMixData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "jpegPath"
    .parameter "mp3Path"

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    if-eqz v2, :cond_0

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, start:J
    const-string v2, "EffectAudioImage"

    const-string v3, "mix data!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    invoke-virtual {v2, p1, p2}, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;->jpgMp3Mix(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "EffectAudioImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mix last time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v2, "EffectAudioImage"

    const-string v3, "inert record!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/EffectAudioImage;->insertDB()V

    .line 162
    iget-object v2, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageHandler:Lcom/android/camera/EffectAudioImage$AudioImageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    .end local v0           #start:J
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onPause()V

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/EffectAudioImage;->onStopRecord()V

    .line 98
    invoke-direct {p0}, Lcom/android/camera/EffectAudioImage;->removeAllView()V

    .line 99
    return-void
.end method

.method public onStartRecord(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/EffectAudioImage;->isStartAudioRecord:Z

    if-nez v0, :cond_0

    .line 168
    const-string v0, "EffectAudioImage"

    const-string v1, "start record!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    invoke-virtual {v0, p1}, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;->mp3RecordStart(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectAudioImage;->isStartAudioRecord:Z

    .line 172
    :cond_0
    return-void
.end method

.method public onStopRecord()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/EffectAudioImage;->isStartAudioRecord:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "EffectAudioImage"

    const-string v1, "call on stop record!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mJpgMp3Mix:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    invoke-virtual {v0}, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;->mp3RecordStop()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/EffectAudioImage;->isStartAudioRecord:Z

    .line 152
    :cond_0
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 3
    .parameter "uri"
    .parameter "title"
    .parameter "isClear"

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/CameraEffectBase;->setImageUri(Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 202
    const-string v0, "EffectAudioImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " set title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isClear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz p3, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageHandler:Lcom/android/camera/EffectAudioImage$AudioImageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/android/camera/EffectAudioImage;->mUri:Landroid/net/Uri;

    .line 208
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage;->mAudioImageHandler:Lcom/android/camera/EffectAudioImage$AudioImageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
