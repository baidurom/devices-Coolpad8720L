.class public Lcom/android/camera/EffectSmileShot;
.super Lcom/android/camera/CameraEffectBase;
.source "EffectSmileShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/EffectSmileShot$YLFace;
    }
.end annotation


# static fields
.field private static FACE_FILTER_ALL:I

.field private static FACE_MONITOR_PARA_GET_FILTER:Ljava/lang/String;

.field private static FACE_MONITOR_PARA_SET_FILTER:Ljava/lang/String;

.field private static FACE_MONITOR_PARA_SET_MAX_FACE:Ljava/lang/String;

.field private static FACE_MONITOR_PARA_SET_SIZE_DIVISOR:Ljava/lang/String;

.field private static FACE_MONITOR_PARA_SET_SKIP_FRANME:Ljava/lang/String;

.field private static final mData:[I


# instance fields
.field protected mEffectName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x65

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/EffectSmileShot;->mData:[I

    .line 40
    const/16 v0, 0x3ff

    sput v0, Lcom/android/camera/EffectSmileShot;->FACE_FILTER_ALL:I

    .line 46
    const-string v0, "set_max_face"

    sput-object v0, Lcom/android/camera/EffectSmileShot;->FACE_MONITOR_PARA_SET_MAX_FACE:Ljava/lang/String;

    .line 47
    const-string v0, "set_filter"

    sput-object v0, Lcom/android/camera/EffectSmileShot;->FACE_MONITOR_PARA_SET_FILTER:Ljava/lang/String;

    .line 48
    const-string v0, "get_filter"

    sput-object v0, Lcom/android/camera/EffectSmileShot;->FACE_MONITOR_PARA_GET_FILTER:Ljava/lang/String;

    .line 49
    const-string v0, "set_skip_frame"

    sput-object v0, Lcom/android/camera/EffectSmileShot;->FACE_MONITOR_PARA_SET_SKIP_FRANME:Ljava/lang/String;

    .line 50
    const-string v0, "set_size_divisor"

    sput-object v0, Lcom/android/camera/EffectSmileShot;->FACE_MONITOR_PARA_SET_SIZE_DIVISOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "handler"
    .parameter "EffectService"
    .parameter "context"
    .parameter "para"

    .prologue
    .line 59
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/CameraEffectBase;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 30
    const-string v0, "gazedetection"

    iput-object v0, p0, Lcom/android/camera/EffectSmileShot;->mEffectName:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/EffectSmileShot;->mPaused:Z

    .line 60
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot;->mEffectName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/EffectSmileShot;->SetEffectName(Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/android/camera/EffectSmileShot;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method


# virtual methods
.method public CloseEffect()V
    .locals 0

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->CloseEffect()V

    .line 362
    return-void
.end method

.method public EndCapture()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public OpenEffect()V
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectService:Landroid/media/ImageEffectService;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Landroid/media/ImageEffectService;

    invoke-direct {v1}, Landroid/media/ImageEffectService;-><init>()V

    iput-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectService:Landroid/media/ImageEffectService;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v2, p0, Lcom/android/camera/EffectSmileShot;->mEffectName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageEffectService;->loadEffectPlugIn(Ljava/lang/String;Z)Landroid/media/ImageEffectProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    .line 97
    iget-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-nez v1, :cond_1

    .line 98
    const-string v1, "EffectSmileShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>loading plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/EffectSmileShot;->mEffectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 102
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/android/camera/EffectSmileShot;->FACE_MONITOR_PARA_SET_FILTER:Ljava/lang/String;

    sget v2, Lcom/android/camera/EffectSmileShot;->FACE_FILTER_ALL:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 104
    sget-object v1, Lcom/android/camera/EffectSmileShot;->FACE_MONITOR_PARA_SET_MAX_FACE:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 105
    sget-object v1, Lcom/android/camera/EffectSmileShot;->FACE_MONITOR_PARA_SET_SKIP_FRANME:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 106
    sget-object v1, Lcom/android/camera/EffectSmileShot;->FACE_MONITOR_PARA_SET_SIZE_DIVISOR:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;I)V

    .line 108
    iget-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v2, p0, Lcom/android/camera/EffectSmileShot;->mEffectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectService;->setEffectMode(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1, p0}, Landroid/media/ImageEffectProxy;->setGeneralCb(Landroid/media/ImageEffectProxy$GeneticCallback;)V

    goto :goto_0
.end method

.method public StartCapture()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public onGeneralCallback(ILjava/lang/String;II)V
    .locals 12
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/camera/EffectSmileShot;->mPaused:Z

    if-eqz v5, :cond_1

    .line 120
    const-string v5, "EffectSmileShot"

    const-string v6, ">>>>>>>skip the on onGeneralCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, info:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 130
    sget-object v5, Lcom/android/camera/EffectSmileShot;->mData:[I

    aget-object v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    :cond_2
    sget-object v5, Lcom/android/camera/EffectSmileShot;->mData:[I

    const/4 v6, 0x0

    aget v0, v5, v6

    .line 135
    .local v0, face_num:I
    new-array v4, v0, [Lcom/android/camera/EffectSmileShot$YLFace;

    .line 136
    .local v4, myfaces:[Lcom/android/camera/EffectSmileShot$YLFace;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 137
    new-instance v5, Lcom/android/camera/EffectSmileShot$YLFace;

    invoke-direct {v5, p0}, Lcom/android/camera/EffectSmileShot$YLFace;-><init>(Lcom/android/camera/EffectSmileShot;)V

    aput-object v5, v4, v1

    .line 138
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    sget-object v7, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v8, v1, 0x14

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    sget-object v8, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v9, v1, 0x14

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    sget-object v9, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x3

    aget v9, v9, v10

    add-int/2addr v8, v9

    sget-object v9, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v11, v1, 0x14

    add-int/lit8 v11, v11, 0x4

    aget v10, v10, v11

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/camera/EffectSmileShot$YLFace;->setRect(IIII)V

    .line 142
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/camera/EffectSmileShot$YLFace;->setSmileDegree(I)V

    .line 144
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x6

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/camera/EffectSmileShot$YLFace;->setBlinkDetected(I)V

    .line 145
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x7

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/camera/EffectSmileShot$YLFace;->setLeftEyeBlinkDegree(I)V

    .line 146
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x8

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/camera/EffectSmileShot$YLFace;->setRightEyeBlinkDegree(I)V

    .line 148
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x9

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/camera/EffectSmileShot$YLFace;->setGazeAngle(I)V

    .line 149
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xa

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/camera/EffectSmileShot$YLFace;->setLeftRightGazeDegree(I)V

    .line 150
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xb

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/camera/EffectSmileShot$YLFace;->setTopBottomGazeDegree(I)V

    .line 152
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xc

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/camera/EffectSmileShot$YLFace;->setLeftRightDirection(I)V

    .line 153
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xd

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/camera/EffectSmileShot$YLFace;->setUpDownDirection(I)V

    .line 154
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xe

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/camera/EffectSmileShot$YLFace;->setRollDirection(I)V

    .line 156
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xf

    aget v6, v6, v7

    sget-object v7, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v8, v1, 0x14

    add-int/lit8 v8, v8, 0x10

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/EffectSmileShot$YLFace;->setLeftEye(II)V

    .line 157
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x11

    aget v6, v6, v7

    sget-object v7, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v8, v1, 0x14

    add-int/lit8 v8, v8, 0x12

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/EffectSmileShot$YLFace;->setRightEye(II)V

    .line 158
    aget-object v5, v4, v1

    sget-object v6, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x13

    aget v6, v6, v7

    sget-object v7, Lcom/android/camera/EffectSmileShot;->mData:[I

    mul-int/lit8 v8, v1, 0x14

    add-int/lit8 v8, v8, 0x14

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/EffectSmileShot$YLFace;->setMouth(II)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 161
    :cond_3
    iget-object v5, p0, Lcom/android/camera/EffectSmileShot;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    if-ltz v0, :cond_0

    .line 162
    iget-object v5, p0, Lcom/android/camera/EffectSmileShot;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4d

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 163
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/camera/EffectSmileShot;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onPause()V

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/EffectSmileShot;->mPaused:Z

    .line 71
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 72
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 73
    const-string v1, "plugin_paused"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onResume()V

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/EffectSmileShot;->mPaused:Z

    .line 80
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 81
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 82
    const-string v1, "plugin_paused"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/android/camera/EffectSmileShot;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 84
    return-void
.end method
