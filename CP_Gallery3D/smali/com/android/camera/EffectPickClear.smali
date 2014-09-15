.class public Lcom/android/camera/EffectPickClear;
.super Lcom/android/camera/CameraEffectBase;
.source "EffectPickClear.java"

# interfaces
.implements Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;


# static fields
.field private static PICCLEAR_MODE_AUTO:I

.field private static PICCLEAR_MODE_MANUAL:I

.field private static PICCLEAR_PARA_SET_CLICK_X:Ljava/lang/String;

.field private static PICCLEAR_PARA_SET_CLICK_Y:Ljava/lang/String;

.field private static PICCLEAR_PARA_SET_PREVIEW_HEIGHT:Ljava/lang/String;

.field private static PICCLEAR_PARA_SET_PREVIEW_WIDTH:Ljava/lang/String;

.field private static PICCLEAR_PROGRESSBAR_CAPTURE:Ljava/lang/String;

.field private static PICCLEAR_PROGRESSBAR_IMAGE_PROCESS:Ljava/lang/String;

.field private static PICKCLEAR_CMD_CANCEL:I

.field private static PICKCLEAR_CMD_CLICK:I

.field private static PICKCLEAR_CMD_NONE:I

.field private static PICKCLEAR_CMD_SAVE:I

.field private static PICKCLEAR_PARA_SET_CMD:Ljava/lang/String;

.field private static PICKCLEAR_PARA_SET_MODE:Ljava/lang/String;


# instance fields
.field PluginParam:Landroid/media/MMPlugInParam;

.field private mEnterOrientation:I

.field mHandler:Landroid/os/Handler;

.field private mPassOrientation:I

.field mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

.field mProcess:I

.field mProcessMode:B

.field private mProgressBar:Landroid/widget/ProgressBar;

.field mProgressLayout:Landroid/widget/LinearLayout;

.field private mProgressText:Landroid/widget/TextView;

.field private mRotateOrientation:I

.field mViewContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    const-string v0, "set_cmd"

    sput-object v0, Lcom/android/camera/EffectPickClear;->PICKCLEAR_PARA_SET_CMD:Ljava/lang/String;

    .line 36
    const-string v0, "set_mode"

    sput-object v0, Lcom/android/camera/EffectPickClear;->PICKCLEAR_PARA_SET_MODE:Ljava/lang/String;

    .line 37
    const-string v0, "set_pre_width"

    sput-object v0, Lcom/android/camera/EffectPickClear;->PICCLEAR_PARA_SET_PREVIEW_WIDTH:Ljava/lang/String;

    .line 38
    const-string v0, "set_pre_height"

    sput-object v0, Lcom/android/camera/EffectPickClear;->PICCLEAR_PARA_SET_PREVIEW_HEIGHT:Ljava/lang/String;

    .line 40
    const-string v0, "capture_progressbar"

    sput-object v0, Lcom/android/camera/EffectPickClear;->PICCLEAR_PROGRESSBAR_CAPTURE:Ljava/lang/String;

    .line 41
    const-string v0, "image_progressbar"

    sput-object v0, Lcom/android/camera/EffectPickClear;->PICCLEAR_PROGRESSBAR_IMAGE_PROCESS:Ljava/lang/String;

    .line 43
    sput v1, Lcom/android/camera/EffectPickClear;->PICKCLEAR_CMD_NONE:I

    .line 44
    sput v2, Lcom/android/camera/EffectPickClear;->PICKCLEAR_CMD_SAVE:I

    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/android/camera/EffectPickClear;->PICKCLEAR_CMD_CANCEL:I

    .line 46
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/EffectPickClear;->PICKCLEAR_CMD_CLICK:I

    .line 48
    const-string v0, "x"

    sput-object v0, Lcom/android/camera/EffectPickClear;->PICCLEAR_PARA_SET_CLICK_X:Ljava/lang/String;

    .line 49
    const-string v0, "y"

    sput-object v0, Lcom/android/camera/EffectPickClear;->PICCLEAR_PARA_SET_CLICK_Y:Ljava/lang/String;

    .line 51
    sput v1, Lcom/android/camera/EffectPickClear;->PICCLEAR_MODE_MANUAL:I

    .line 52
    sput v2, Lcom/android/camera/EffectPickClear;->PICCLEAR_MODE_AUTO:I

    return-void
.end method

.method public constructor <init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/view/ViewGroup;Landroid/os/Handler;)V
    .locals 1
    .parameter "EffectService"
    .parameter "context"
    .parameter "para"
    .parameter "vg"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraEffectBase;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 56
    iput-byte v0, p0, Lcom/android/camera/EffectPickClear;->mProcessMode:B

    .line 57
    iput v0, p0, Lcom/android/camera/EffectPickClear;->mProcess:I

    .line 58
    iput v0, p0, Lcom/android/camera/EffectPickClear;->mRotateOrientation:I

    .line 59
    iput v0, p0, Lcom/android/camera/EffectPickClear;->mEnterOrientation:I

    .line 60
    iput v0, p0, Lcom/android/camera/EffectPickClear;->mPassOrientation:I

    .line 66
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    .line 71
    const-string v0, "pickclear"

    invoke-virtual {p0, v0}, Lcom/android/camera/EffectPickClear;->SetEffectName(Ljava/lang/String;)V

    .line 72
    iput-object p4, p0, Lcom/android/camera/EffectPickClear;->mViewContainer:Landroid/view/ViewGroup;

    .line 73
    iput-object p5, p0, Lcom/android/camera/EffectPickClear;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private createProgressBar()V
    .locals 13

    .prologue
    .line 256
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    const/16 v11, 0x23

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v7

    .line 257
    .local v7, textWidth:I
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    const/16 v11, 0x23

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v6

    .line 258
    .local v6, textHeight:I
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    .line 259
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 260
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 261
    new-instance v4, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 262
    .local v4, minTv:Landroid/widget/TextView;
    const/16 v10, 0x11

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 263
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 265
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const-string v10, ""

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const/high16 v10, 0x4170

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 267
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    const v11, 0x7f04005c

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 271
    .local v8, view:Landroid/view/View;
    const v10, 0x7f10011a

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressBar:Landroid/widget/ProgressBar;

    .line 272
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 273
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 274
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    const/16 v11, 0x118

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    .line 275
    .local v1, barWidth:I
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    const/4 v11, 0x6

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v0

    .line 276
    .local v0, barHeight:I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v5, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 277
    .restart local v5       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x11

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 278
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v5}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/camera/EffectPickClear;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    new-instance v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressText:Landroid/widget/TextView;

    .line 282
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressText:Landroid/widget/TextView;

    const/high16 v11, 0x4170

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 283
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressText:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 284
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    .restart local v5       #params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/camera/EffectPickClear;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    const/16 v11, 0x15e

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v9

    .line 289
    .local v9, width:I
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    const/16 v11, 0x28

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 290
    .local v3, height:I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 293
    .local v2, fp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v10, 0x11

    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 294
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v10, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    return-void
.end method

.method private removeAllView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 237
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/StrangerPickClearContainer;->clear()V

    .line 239
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/StrangerPickClearContainer;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/EffectPickClear;->hideProcess()V

    .line 244
    invoke-virtual {p0}, Lcom/android/camera/EffectPickClear;->hideProgressDialog()V

    .line 245
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 246
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    return-void
.end method


# virtual methods
.method public CloseEffect()V
    .locals 0

    .prologue
    .line 345
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->CloseEffect()V

    .line 346
    return-void
.end method

.method public EndCapture()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->EndCapture()V

    .line 192
    return-void
.end method

.method public OpenEffect()V
    .locals 5

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->OpenEffect()V

    .line 82
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 83
    .local v1, screenWidth:I
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 84
    .local v0, screenHeight:I
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v2, p0}, Landroid/media/ImageEffectProxy;->setPostViewCb(Landroid/media/ImageEffectProxy$PostViewCallback;)V

    .line 85
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v2, p0}, Landroid/media/ImageEffectProxy;->setFaceInfoCb(Landroid/media/ImageEffectProxy$FaceInfoCallback;)V

    .line 86
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v2, p0}, Landroid/media/ImageEffectProxy;->setFaceDataCb(Landroid/media/ImageEffectProxy$FaceDataCallback;)V

    .line 87
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v2, p0}, Landroid/media/ImageEffectProxy;->setGeneralCb(Landroid/media/ImageEffectProxy$GeneticCallback;)V

    .line 89
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    iget-object v3, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v3}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    invoke-virtual {v2}, Landroid/media/MMPlugInParam;->dump()V

    .line 92
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v3, Lcom/android/camera/EffectPickClear;->PICKCLEAR_PARA_SET_MODE:Ljava/lang/String;

    sget v4, Lcom/android/camera/EffectPickClear;->PICCLEAR_MODE_MANUAL:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 94
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v3, Lcom/android/camera/EffectPickClear;->PICCLEAR_PARA_SET_PREVIEW_WIDTH:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 95
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v3, Lcom/android/camera/EffectPickClear;->PICCLEAR_PARA_SET_PREVIEW_HEIGHT:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 97
    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    iget-object v3, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    invoke-virtual {v3}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/android/camera/EffectPickClear;->createProgressBar()V

    .line 99
    return-void
.end method

.method public StartCapture()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 162
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->StartCapture()V

    .line 163
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectPickClear;->mRotateOrientation:I

    .line 167
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getEnterOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectPickClear;->mEnterOrientation:I

    .line 168
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectPickClear;->mPassOrientation:I

    .line 170
    iget v0, p0, Lcom/android/camera/EffectPickClear;->mEnterOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    .line 171
    iget v0, p0, Lcom/android/camera/EffectPickClear;->mRotateOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    .line 172
    iget v0, p0, Lcom/android/camera/EffectPickClear;->mPassOrientation:I

    sput v0, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    .line 174
    const v0, 0x7f1000f3

    const v1, 0x7f040053

    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/EffectPickClear;->inflateLayout(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StrangerPickClearContainer;

    iput-object v0, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    .line 176
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    invoke-virtual {p0}, Lcom/android/camera/EffectPickClear;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/StrangerPickClearContainer;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    iget v1, p0, Lcom/android/camera/EffectPickClear;->mPassOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/StrangerPickClearContainer;->setOrientation(I)V

    .line 178
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/StrangerPickClearContainer;->setPickClearListener(Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;)V

    .line 179
    const v1, 0x7f10009b

    const v2, 0x7f04002b

    iget-object v3, p0, Lcom/android/camera/EffectPickClear;->mViewContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/16 v6, 0x50

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/EffectPickClear;->initProcessBar(IILandroid/view/ViewGroup;III)V

    .line 183
    iput v7, p0, Lcom/android/camera/EffectPickClear;->mProcess:I

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/EffectPickClear;->rotateProgressBar()V

    .line 185
    iput-boolean v7, p0, Lcom/android/camera/EffectPickClear;->isProcessOver:Z

    .line 186
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/camera/EffectPickClear;->onCancelClick()V

    .line 322
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->finish()V

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectPickClear;->isProcessOver:Z

    .line 325
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 309
    return-void
.end method

.method public isProcessOver()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/camera/EffectPickClear;->isProcessOver:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0}, Lcom/android/camera/EffectPickClear;->onCancelClick()V

    .line 329
    iput-boolean v0, p0, Lcom/android/camera/EffectPickClear;->isProcessOver:Z

    .line 330
    return v0
.end method

.method public onCancelClick()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v1, Lcom/android/camera/EffectPickClear;->PICKCLEAR_PARA_SET_CMD:Ljava/lang/String;

    sget v2, Lcom/android/camera/EffectPickClear;->PICKCLEAR_CMD_CANCEL:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    invoke-virtual {v1}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/EffectPickClear;->removeAllView()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectPickClear;->isProcessOver:Z

    .line 216
    return-void
.end method

.method public onDataPostView([IIILandroid/media/ImageEffectProxy;)V
    .locals 3
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "proxy"

    .prologue
    .line 113
    const-string v1, "EffectPickClear"

    const-string v2, "---------onDataPostView------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/ui/StrangerPickClearContainer;->setImageData([III)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mContent:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/CameraActivity;

    .line 118
    .local v0, ca:Lcom/android/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/StrangerPickClearContainer;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mPickClearContainer:Lcom/android/camera/ui/StrangerPickClearContainer;

    invoke-virtual {v1}, Lcom/android/camera/ui/StrangerPickClearContainer;->previewImage()V

    goto :goto_0
.end method

.method public onFaceData([IIILandroid/media/ImageEffectProxy;)V
    .locals 2
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "proxy"

    .prologue
    .line 151
    const-string v0, "EffectPickClear"

    const-string v1, "the image faceinfo "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public onFaceInfo(Ljava/lang/String;Landroid/media/ImageEffectProxy;)V
    .locals 3
    .parameter "faceinfo"
    .parameter "proxy"

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lcom/android/camera/CameraEffectBase;->onFaceInfo(Ljava/lang/String;Landroid/media/ImageEffectProxy;)V

    .line 157
    const-string v0, "EffectPickClear"

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

    .line 159
    return-void
.end method

.method public onGeneralCallback(ILjava/lang/String;II)V
    .locals 3
    .parameter "type"
    .parameter "msg"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 102
    const-string v0, "EffectPickClear"

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

    .line 103
    sget-object v0, Lcom/android/camera/EffectPickClear;->PICCLEAR_PROGRESSBAR_CAPTURE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/16 v0, 0x38

    iput-byte v0, p0, Lcom/android/camera/EffectPickClear;->mProcessMode:B

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/android/camera/EffectPickClear;->PICCLEAR_PROGRESSBAR_IMAGE_PROCESS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/16 v0, 0x36

    iput-byte v0, p0, Lcom/android/camera/EffectPickClear;->mProcessMode:B

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 334
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onPause()V

    .line 335
    invoke-virtual {p0}, Lcom/android/camera/EffectPickClear;->onCancelClick()V

    .line 338
    return-void
.end method

.method public onPositionTouch(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 226
    const-string v0, "EffectPickClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v1, Lcom/android/camera/EffectPickClear;->PICKCLEAR_PARA_SET_CMD:Ljava/lang/String;

    sget v2, Lcom/android/camera/EffectPickClear;->PICKCLEAR_CMD_CLICK:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v1, Lcom/android/camera/EffectPickClear;->PICCLEAR_PARA_SET_CLICK_X:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v1, Lcom/android/camera/EffectPickClear;->PICCLEAR_PARA_SET_CLICK_Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    invoke-virtual {v1}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 234
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreviewImage([BII)V
    .locals 2
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    invoke-direct {p0}, Lcom/android/camera/EffectPickClear;->removeAllView()V

    .line 222
    return-void
.end method

.method public onProcess(ILandroid/media/ImageEffectProxy;)V
    .locals 3
    .parameter "process"
    .parameter "proxy"

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/android/camera/CameraEffectBase;->onProcess(ILandroid/media/ImageEffectProxy;)V

    .line 128
    const-string v0, "EffectPickClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----process----->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectPickClear$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/EffectPickClear$1;-><init>(Lcom/android/camera/EffectPickClear;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method public onSaveClick()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    sget-object v1, Lcom/android/camera/EffectPickClear;->PICKCLEAR_PARA_SET_CMD:Ljava/lang/String;

    sget v2, Lcom/android/camera/EffectPickClear;->PICKCLEAR_CMD_SAVE:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 199
    iget-object v0, p0, Lcom/android/camera/EffectPickClear;->mEffectProxy:Landroid/media/ImageEffectProxy;

    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->PluginParam:Landroid/media/MMPlugInParam;

    invoke-virtual {v1}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/EffectPickClear;->removeAllView()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EffectPickClear;->isProcessOver:Z

    .line 205
    return-void
.end method

.method public rotateProgressBar()V
    .locals 3

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 313
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 314
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 315
    sget v0, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    .line 316
    .local v0, passOrientation:I
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setRotation(F)V

    goto :goto_0
.end method

.method public showProgressDialog(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/EffectPickClear;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    return-void
.end method
