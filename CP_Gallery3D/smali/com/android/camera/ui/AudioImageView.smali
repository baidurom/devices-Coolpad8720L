.class public Lcom/android/camera/ui/AudioImageView;
.super Landroid/widget/FrameLayout;
.source "AudioImageView.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AudioImageView$1;,
        Lcom/android/camera/ui/AudioImageView$RecordAudioData;,
        Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;,
        Lcom/android/camera/ui/AudioImageView$AudioImageHandler;,
        Lcom/android/camera/ui/AudioImageView$AudioImage;,
        Lcom/android/camera/ui/AudioImageView$AudioProgressView;,
        Lcom/android/camera/ui/AudioImageView$AudioProgressBar;,
        Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;
    }
.end annotation


# instance fields
.field private mAudioAction:B

.field mAudioImage:Lcom/android/camera/ui/AudioImageView$AudioImage;

.field mAudioImageContainer:Landroid/widget/FrameLayout;

.field mAudioPath:Ljava/lang/String;

.field mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

.field mContext:Landroid/content/Context;

.field public mDataChangedListener:Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;

.field mHandler:Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

.field mHandlerThread:Landroid/os/HandlerThread;

.field mImagePath:Ljava/lang/String;

.field mPreviewRect:Landroid/graphics/Rect;

.field mRecordButton:Lcom/android/camera/ShutterButton;

.field mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

.field mRotateAngle:I

.field mRotateControl:Lcom/android/camera/ui/RotateControl;

.field mStopButton:Lcom/android/camera/ShutterButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/AudioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioAction:B

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/AudioImageView;->mRotateAngle:I

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/AudioImageView;->initView(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/AudioImageView;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-byte v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioAction:B

    return v0
.end method


# virtual methods
.method public cancelAudioRecord()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mDataChangedListener:Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mDataChangedListener:Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;->onStopRecord()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    if-eqz v0, :cond_1

    .line 226
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioAction:B

    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mHandler:Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mHandler:Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    :cond_2
    return-void
.end method

.method public getAudioPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method initAudioImage()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 96
    new-instance v1, Lcom/android/camera/ui/AudioImageView$AudioImage;

    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/AudioImageView$AudioImage;-><init>(Lcom/android/camera/ui/AudioImageView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImage:Lcom/android/camera/ui/AudioImageView$AudioImage;

    .line 97
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImage:Lcom/android/camera/ui/AudioImageView$AudioImage;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImage:Lcom/android/camera/ui/AudioImageView$AudioImage;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method initAudioProgressBar()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 104
    new-instance v1, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;-><init>(Lcom/android/camera/ui/AudioImageView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    .line 105
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method initView(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/ui/AudioImageView;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioImageView"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 91
    new-instance v0, Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/AudioImageView$AudioImageHandler;-><init>(Lcom/android/camera/ui/AudioImageView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mHandler:Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

    .line 92
    new-instance v0, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    const-wide/16 v2, 0x2328

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;-><init>(Lcom/android/camera/ui/AudioImageView;JJ)V

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/RotateControl;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    .line 94
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 115
    const v0, 0x7f100011

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mStopButton:Lcom/android/camera/ShutterButton;

    .line 116
    const v0, 0x7f100012

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordButton:Lcom/android/camera/ShutterButton;

    .line 117
    const v0, 0x7f10000f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImageContainer:Landroid/widget/FrameLayout;

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mStopButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/AudioImageView;->initAudioImage()V

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/ui/AudioImageView;->initAudioProgressBar()V

    .line 125
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mDataChangedListener:Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "AudioImageView"

    const-string v2, "on stop button click!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Lcom/android/camera/ui/AudioImageView$RecordAudioData;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/ui/AudioImageView$RecordAudioData;-><init>(Lcom/android/camera/ui/AudioImageView;Lcom/android/camera/ui/AudioImageView$1;)V

    .line 184
    .local v0, audioData:Lcom/android/camera/ui/AudioImageView$RecordAudioData;
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mImagePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/ui/AudioImageView$RecordAudioData;->imagePath:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mAudioPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/ui/AudioImageView$RecordAudioData;->audioPath:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mHandler:Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 187
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    if-eqz v1, :cond_0

    .line 188
    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/android/camera/ui/AudioImageView;->mAudioAction:B

    .line 189
    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 190
    iput-object v3, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    .line 193
    .end local v0           #audioData:Lcom/android/camera/ui/AudioImageView$RecordAudioData;
    :cond_0
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 177
    return-void
.end method

.method public recycleData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    const-string v0, "AudioImageView"

    const-string v1, "recycle all data!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImageContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->recycleData()V

    .line 199
    iput-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImage:Lcom/android/camera/ui/AudioImageView$AudioImage;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImageContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImage:Lcom/android/camera/ui/AudioImageView$AudioImage;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImage:Lcom/android/camera/ui/AudioImageView$AudioImage;

    invoke-virtual {v0}, Lcom/android/camera/ui/AudioImageView$AudioImage;->recycleData()V

    .line 204
    iput-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImage:Lcom/android/camera/ui/AudioImageView$AudioImage;

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mImagePath:Ljava/lang/String;

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mAudioPath:Ljava/lang/String;

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 210
    iput-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mHandler:Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

    if-eqz v0, :cond_5

    .line 213
    iput-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mHandler:Lcom/android/camera/ui/AudioImageView$AudioImageHandler;

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImageContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    iput-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImageContainer:Landroid/widget/FrameLayout;

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    if-eqz v0, :cond_7

    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 218
    iput-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    .line 220
    :cond_7
    return-void
.end method

.method public setAudioImage([BLjava/lang/String;II)V
    .locals 3
    .parameter "data"
    .parameter "title"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-static {p2}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mImagePath:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/camera/Storage;->generateAudioPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioPath:Ljava/lang/String;

    .line 142
    const-string v0, "AudioImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "AudioImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImage:Lcom/android/camera/ui/AudioImageView$AudioImage;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioImage:Lcom/android/camera/ui/AudioImageView$AudioImage;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/camera/ui/AudioImageView$AudioImage;->setImage([BII)V

    .line 149
    :cond_1
    return-void
.end method

.method public setDataChangedListener(Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/ui/AudioImageView;->mDataChangedListener:Lcom/android/camera/ui/AudioImageView$OnDataChangedListener;

    .line 73
    return-void
.end method

.method public setOrientation(III)V
    .locals 2
    .parameter "enterOrientation"
    .parameter "rotateOrientation"
    .parameter "passOrientation"

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mStopButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateControl;->getImageRotateAngle(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AudioImageView;->mRotateAngle:I

    .line 133
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/camera/ui/AudioImageView;->mPreviewRect:Landroid/graphics/Rect;

    .line 136
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->setValue(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public startRecordAudio(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 156
    const-string v0, "AudioImageView"

    const-string v1, "start record audio!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    invoke-static {p1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mImagePath:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/camera/Storage;->generateAudioPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioPath:Ljava/lang/String;

    .line 162
    const-string v0, "AudioImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "AudioImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/AudioImageView;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mAudioProgressBar:Lcom/android/camera/ui/AudioImageView$AudioProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/AudioImageView$AudioProgressBar;->startAnimDrawable()V

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/AudioImageView;->mRecordTimer:Lcom/android/camera/ui/AudioImageView$RecordCountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 172
    :cond_3
    return-void
.end method
