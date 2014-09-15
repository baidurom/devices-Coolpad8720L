.class public Lcom/android/camera/EffectPickAction;
.super Lcom/android/camera/CameraEffectBase;
.source "EffectPickAction.java"

# interfaces
.implements Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;


# static fields
.field private static PICACTION_ERROR_NOTIFY_CAPTURING_BAR:Ljava/lang/String;

.field private static PICACTION_ERROR_NOTIFY_PROCESSING_BAR:Ljava/lang/String;

.field private static PICACTION_STATE_CAPTURING:I

.field private static PICACTION_STATE_IDLE:I

.field private static PICACTION_STATE_PROCESSING:I

.field private static PICKACTION_CMD_BEGINE:I

.field private static PICKACTION_CMD_CANCEL:I

.field private static PICKACTION_CMD_END:I

.field private static PICKACTION_CMD_NONE:I

.field private static PICKACTION_ERROR_MUTIL_OBJECT:Ljava/lang/String;

.field private static PICKACTION_ERROR_OBJECT_TOLARGE:Ljava/lang/String;

.field private static PICKACTION_PARA_GET_STATE:Ljava/lang/String;

.field private static PICKACTION_PARA_SET_CMD:Ljava/lang/String;

.field private static PICKACTION_PARA_SET_MAX_IMAGENUM:Ljava/lang/String;

.field private static PICKACTION_PARA_SET_SKIP_NUM:Ljava/lang/String;


# instance fields
.field PluginParam:Landroid/media/MMPlugInParam;

.field action:B

.field isUpdateStart:Z

.field private mEnterOrientation:I

.field mHandler:Landroid/os/Handler;

.field private mPassOrientation:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field mProgressLayout:Landroid/widget/LinearLayout;

.field private mProgressText:Landroid/widget/TextView;

.field private mRotateOrientation:I

.field mTextId:I

.field mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

.field private mUpdateCount:I

.field mViewContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    const-string v0, "set_cmd"

    sput-object v0, Lcom/android/camera/EffectPickAction;->PICKACTION_PARA_SET_CMD:Ljava/lang/String;

    .line 39
    const-string v0, "set_max_images"

    sput-object v0, Lcom/android/camera/EffectPickAction;->PICKACTION_PARA_SET_MAX_IMAGENUM:Ljava/lang/String;

    .line 40
    const-string v0, "set_skip_num"

    sput-object v0, Lcom/android/camera/EffectPickAction;->PICKACTION_PARA_SET_SKIP_NUM:Ljava/lang/String;

    .line 41
    const-string v0, "get_state"

    sput-object v0, Lcom/android/camera/EffectPickAction;->PICKACTION_PARA_GET_STATE:Ljava/lang/String;

    .line 42
    const-string v0, "tolarge"

    sput-object v0, Lcom/android/camera/EffectPickAction;->PICKACTION_ERROR_OBJECT_TOLARGE:Ljava/lang/String;

    .line 43
    const-string v0, "mutilobject"

    sput-object v0, Lcom/android/camera/EffectPickAction;->PICKACTION_ERROR_MUTIL_OBJECT:Ljava/lang/String;

    .line 45
    const-string v0, "capturingbar"

    sput-object v0, Lcom/android/camera/EffectPickAction;->PICACTION_ERROR_NOTIFY_CAPTURING_BAR:Ljava/lang/String;

    .line 46
    const-string v0, "processingingbar"

    sput-object v0, Lcom/android/camera/EffectPickAction;->PICACTION_ERROR_NOTIFY_PROCESSING_BAR:Ljava/lang/String;

    .line 48
    sput v1, Lcom/android/camera/EffectPickAction;->PICKACTION_CMD_NONE:I

    .line 49
    sput v2, Lcom/android/camera/EffectPickAction;->PICKACTION_CMD_BEGINE:I

    .line 50
    sput v3, Lcom/android/camera/EffectPickAction;->PICKACTION_CMD_END:I

    .line 51
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/EffectPickAction;->PICKACTION_CMD_CANCEL:I

    .line 53
    sput v1, Lcom/android/camera/EffectPickAction;->PICACTION_STATE_IDLE:I

    .line 54
    sput v2, Lcom/android/camera/EffectPickAction;->PICACTION_STATE_CAPTURING:I

    .line 55
    sput v3, Lcom/android/camera/EffectPickAction;->PICACTION_STATE_PROCESSING:I

    return-void
.end method

.method public constructor <init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/view/ViewGroup;Landroid/os/Handler;)V
    .locals 2
    .parameter "EffectService"
    .parameter "context"
    .parameter "para"
    .parameter "container"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraEffectBase;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/EffectPickAction;->mUpdateCount:I

    .line 66
    iput v1, p0, Lcom/android/camera/EffectPickAction;->mRotateOrientation:I

    .line 67
    iput v1, p0, Lcom/android/camera/EffectPickAction;->mEnterOrientation:I

    .line 68
    iput v1, p0, Lcom/android/camera/EffectPickAction;->mPassOrientation:I

    .line 69
    iput-boolean v1, p0, Lcom/android/camera/EffectPickAction;->isUpdateStart:Z

    .line 76
    const/16 v0, 0x1f

    iput-byte v0, p0, Lcom/android/camera/EffectPickAction;->action:B

    .line 77
    iput v1, p0, Lcom/android/camera/EffectPickAction;->mTextId:I

    .line 84
    const-string v0, "pickaction"

    invoke-virtual {p0, v0}, Lcom/android/camera/EffectPickAction;->SetEffectName(Ljava/lang/String;)V

    .line 86
    iput-object p5, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p4, p0, Lcom/android/camera/EffectPickAction;->mViewContainer:Landroid/view/ViewGroup;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/EffectPickAction;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/EffectPickAction;->mRotateOrientation:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/EffectPickAction;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/EffectPickAction;->mPassOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/EffectPickAction;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/EffectPickAction;->mUpdateCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/EffectPickAction;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/camera/EffectPickAction;->mUpdateCount:I

    return p1
.end method

.method private createProgressBar()V
    .locals 13

    .prologue
    .line 335
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    const/16 v11, 0x23

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v7

    .line 336
    .local v7, textWidth:I
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    const/16 v11, 0x23

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v6

    .line 337
    .local v6, textHeight:I
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    .line 338
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 339
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 340
    new-instance v4, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 341
    .local v4, minTv:Landroid/widget/TextView;
    const/16 v10, 0x11

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 342
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 344
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const-string v10, ""

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const/high16 v10, 0x4170

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 346
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 349
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    const v11, 0x7f04005c

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 350
    .local v8, view:Landroid/view/View;
    const v10, 0x7f10011a

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressBar:Landroid/widget/ProgressBar;

    .line 351
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 352
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 353
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    const/16 v11, 0x118

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    .line 354
    .local v1, barWidth:I
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    const/4 v11, 0x6

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v0

    .line 355
    .local v0, barHeight:I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v5, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 356
    .restart local v5       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x11

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 357
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v5}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/camera/EffectPickAction;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    new-instance v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressText:Landroid/widget/TextView;

    .line 361
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressText:Landroid/widget/TextView;

    const/high16 v11, 0x4170

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 362
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressText:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 363
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 364
    .restart local v5       #params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/camera/EffectPickAction;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    const/16 v11, 0x15e

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v9

    .line 368
    .local v9, width:I
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    const/16 v11, 0x28

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 369
    .local v3, height:I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 372
    .local v2, fp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v10, 0x11

    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 373
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v10, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    return-void
.end method

.method private showMessage(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/EffectPickAction$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/EffectPickAction$1;-><init>(Lcom/android/camera/EffectPickAction;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method


# virtual methods
.method public CloseEffect()V
    .locals 0

    .prologue
    .line 402
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->CloseEffect()V

    .line 403
    return-void
.end method

.method public EndCapture()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->EndCapture()V

    .line 257
    return-void
.end method

.method public OpenEffect()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->OpenEffect()V

    .line 96
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0, p0}, Landroid/media/ImageEffectProxy;->setPostViewCb(Landroid/media/ImageEffectProxy$PostViewCallback;)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0, p0}, Landroid/media/ImageEffectProxy;->setFaceInfoCb(Landroid/media/ImageEffectProxy$FaceInfoCallback;)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0, p0}, Landroid/media/ImageEffectProxy;->setFaceDataCb(Landroid/media/ImageEffectProxy$FaceDataCallback;)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0, p0}, Landroid/media/ImageEffectProxy;->setGeneralCb(Landroid/media/ImageEffectProxy$GeneticCallback;)V

    .line 100
    invoke-direct {p0}, Lcom/android/camera/EffectPickAction;->createProgressBar()V

    .line 101
    return-void
.end method

.method public StartCapture()V
    .locals 7

    .prologue
    const/16 v6, 0x50

    const/4 v5, 0x0

    .line 214
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->StartCapture()V

    .line 215
    const/16 v0, 0x38

    iput-byte v0, p0, Lcom/android/camera/EffectPickAction;->action:B

    .line 216
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    .line 217
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->dump()V

    .line 220
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v1, Lcom/android/camera/EffectPickAction;->PICKACTION_PARA_SET_CMD:Ljava/lang/String;

    sget v2, Lcom/android/camera/EffectPickAction;->PICKACTION_CMD_BEGINE:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 221
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v1, Lcom/android/camera/EffectPickAction;->PICKACTION_PARA_SET_MAX_IMAGENUM:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 222
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v1, Lcom/android/camera/EffectPickAction;->PICKACTION_PARA_SET_SKIP_NUM:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mEffectProxy:Landroid/media/ImageEffectProxy;

    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    invoke-virtual {v1}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    const v0, 0x7f100145

    const v1, 0x7f04006f

    iget-object v2, p0, Lcom/android/camera/EffectPickAction;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/EffectPickAction;->inflateLayout(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TrackPickerContainer;

    iput-object v0, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    .line 229
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/TrackPickerContainer;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/TrackPickerContainer;->setTrackPickerListener(Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectPickAction;->mRotateOrientation:I

    .line 234
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getEnterOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectPickAction;->mEnterOrientation:I

    .line 235
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectPickAction;->mPassOrientation:I

    .line 237
    iget v0, p0, Lcom/android/camera/EffectPickAction;->mEnterOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    .line 238
    iget v0, p0, Lcom/android/camera/EffectPickAction;->mRotateOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    .line 239
    iget v0, p0, Lcom/android/camera/EffectPickAction;->mPassOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    .line 241
    const v1, 0x7f10009b

    const v2, 0x7f04002b

    iget-object v3, p0, Lcom/android/camera/EffectPickAction;->mViewContainer:Landroid/view/ViewGroup;

    const/16 v4, 0x14

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/EffectPickAction;->initProcessBar(IILandroid/view/ViewGroup;III)V

    .line 245
    iput v5, p0, Lcom/android/camera/EffectPickAction;->mUpdateCount:I

    .line 246
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    iget v1, p0, Lcom/android/camera/EffectPickAction;->mPassOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackPickerContainer;->setOrientation(I)V

    .line 247
    iput-boolean v5, p0, Lcom/android/camera/EffectPickAction;->isUpdateStart:Z

    .line 248
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackPickerContainer;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 249
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    iput-boolean v5, p0, Lcom/android/camera/EffectPickAction;->isProcessOver:Z

    .line 251
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->rotateProgressBar()V

    .line 252
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->onCancelClick()V

    .line 261
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->finish()V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectPickAction;->isProcessOver:Z

    .line 264
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 388
    return-void
.end method

.method public isProcessOver()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/camera/EffectPickAction;->isProcessOver:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 314
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->onCancelClick()V

    .line 315
    iput-boolean v0, p0, Lcom/android/camera/EffectPickAction;->isProcessOver:Z

    .line 316
    return v0
.end method

.method public onCancelClick()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v1, Lcom/android/camera/EffectPickAction;->PICKACTION_PARA_SET_CMD:Ljava/lang/String;

    sget v2, Lcom/android/camera/EffectPickAction;->PICKACTION_CMD_CANCEL:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 294
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mEffectProxy:Landroid/media/ImageEffectProxy;

    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    invoke-virtual {v1}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->removeAllView()V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectPickAction;->isProcessOver:Z

    .line 298
    return-void
.end method

.method public onDataPostView([IIILandroid/media/ImageEffectProxy;)V
    .locals 3
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "proxy"

    .prologue
    .line 140
    const-string v1, "EffectPickAction"

    const-string v2, "onDataPostView!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->hideProcess()V

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->hideProgressDialog()V

    .line 144
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/ui/TrackPickerContainer;->setImageData([III)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    .line 146
    .local v0, ca:Lcom/android/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TrackPickerContainer;->setVisibility(I)V

    .line 155
    .end local v0           #ca:Lcom/android/camera/CameraActivity;
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local v0       #ca:Lcom/android/camera/CameraActivity;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    invoke-virtual {v1}, Lcom/android/camera/ui/TrackPickerContainer;->previewImage()V

    .line 151
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onFaceData([IIILandroid/media/ImageEffectProxy;)V
    .locals 2
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "proxy"

    .prologue
    .line 161
    const-string v0, "EffectPickAction"

    const-string v1, "the image faceinfo "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public onFaceInfo(Ljava/lang/String;Landroid/media/ImageEffectProxy;)V
    .locals 3
    .parameter "faceinfo"
    .parameter "proxy"

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lcom/android/camera/CameraEffectBase;->onFaceInfo(Ljava/lang/String;Landroid/media/ImageEffectProxy;)V

    .line 167
    const-string v0, "EffectPickAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the image faceinfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public onGeneralCallback(ILjava/lang/String;II)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/16 v3, 0x29

    .line 104
    const-string v0, "EffectPickAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lcom/android/camera/EffectPickAction;->PICKACTION_ERROR_OBJECT_TOLARGE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    const-string v0, "EffectPickAction"

    const-string v1, "----object too large-----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const v0, 0x7f0e02f5

    iput v0, p0, Lcom/android/camera/EffectPickAction;->mTextId:I

    .line 109
    iput-byte v3, p0, Lcom/android/camera/EffectPickAction;->action:B

    .line 123
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-byte v0, p0, Lcom/android/camera/EffectPickAction;->action:B

    if-ne v0, v3, :cond_1

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectPickAction;->isProcessOver:Z

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->removeAllView()V

    .line 126
    iget v0, p0, Lcom/android/camera/EffectPickAction;->mTextId:I

    invoke-direct {p0, v0}, Lcom/android/camera/EffectPickAction;->showMessage(I)V

    .line 128
    :cond_1
    return-void

    .line 110
    :cond_2
    sget-object v0, Lcom/android/camera/EffectPickAction;->PICKACTION_ERROR_MUTIL_OBJECT:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    const-string v0, "EffectPickAction"

    const-string v1, "----muti object-----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const v0, 0x7f0e02f6

    iput v0, p0, Lcom/android/camera/EffectPickAction;->mTextId:I

    .line 114
    iput-byte v3, p0, Lcom/android/camera/EffectPickAction;->action:B

    goto :goto_0

    .line 115
    :cond_3
    sget-object v0, Lcom/android/camera/EffectPickAction;->PICACTION_ERROR_NOTIFY_CAPTURING_BAR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    const-string v0, "EffectPickAction"

    const-string v1, "capture bar mode!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v0, 0x38

    iput-byte v0, p0, Lcom/android/camera/EffectPickAction;->action:B

    goto :goto_0

    .line 118
    :cond_4
    sget-object v0, Lcom/android/camera/EffectPickAction;->PICACTION_ERROR_NOTIFY_PROCESSING_BAR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "EffectPickAction"

    const-string v1, "process bar mode!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/16 v0, 0x36

    iput-byte v0, p0, Lcom/android/camera/EffectPickAction;->action:B

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 320
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onPause()V

    .line 321
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->onCancelClick()V

    .line 324
    return-void
.end method

.method public onPreviewImage([BII)V
    .locals 2
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->removeAllView()V

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectPickAction;->isProcessOver:Z

    .line 289
    return-void
.end method

.method public onProcess(ILandroid/media/ImageEffectProxy;)V
    .locals 4
    .parameter "process"
    .parameter "proxy"

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Lcom/android/camera/CameraEffectBase;->onProcess(ILandroid/media/ImageEffectProxy;)V

    .line 173
    const-string v1, "EffectPickAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----process----->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-byte v1, p0, Lcom/android/camera/EffectPickAction;->action:B

    const/16 v2, 0x36

    if-ne v1, v2, :cond_0

    .line 175
    const-string v1, "EffectPickAction"

    const-string v2, "-----1111------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/EffectPickAction$2;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/EffectPickAction$2;-><init>(Lcom/android/camera/EffectPickAction;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v1, "EffectPickAction"

    const-string v2, "-----2222------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    add-int/lit8 v0, p1, 0x1

    .line 189
    .local v0, value:I
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 190
    iget v1, p0, Lcom/android/camera/EffectPickAction;->mUpdateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/EffectPickAction;->mUpdateCount:I

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/EffectPickAction$3;

    invoke-direct {v2, p0}, Lcom/android/camera/EffectPickAction$3;-><init>(Lcom/android/camera/EffectPickAction;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSaveImage([BII)V
    .locals 2
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->removeAllView()V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectPickAction;->isProcessOver:Z

    .line 281
    return-void
.end method

.method public onStopClick()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v1, Lcom/android/camera/EffectPickAction;->PICKACTION_PARA_SET_CMD:Ljava/lang/String;

    sget v2, Lcom/android/camera/EffectPickAction;->PICKACTION_CMD_END:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 270
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mEffectProxy:Landroid/media/ImageEffectProxy;

    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->PluginParam:Landroid/media/MMPlugInParam;

    invoke-virtual {v1}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method public removeAllView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 300
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->hideProgressDialog()V

    .line 301
    invoke-virtual {p0}, Lcom/android/camera/EffectPickAction;->hideProcess()V

    .line 302
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackPickerContainer;->setVisibility(I)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 306
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectPickAction;->mTrackPickerLayout:Lcom/android/camera/ui/TrackPickerContainer;

    .line 308
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    iget-object v0, p0, Lcom/android/camera/EffectPickAction;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 311
    return-void
.end method

.method public rotateProgressBar()V
    .locals 3

    .prologue
    .line 390
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 393
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 394
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 395
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 396
    sget v0, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    .line 397
    .local v0, passOrientation:I
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setRotation(F)V

    goto :goto_0
.end method

.method public showProgressDialog(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/EffectPickAction;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    return-void
.end method
