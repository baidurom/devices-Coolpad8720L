.class public Lcom/android/camera/SelfCamera;
.super Ljava/lang/Object;
.source "SelfCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SelfCamera$VoiceGuide;,
        Lcom/android/camera/SelfCamera$FaceSolidHandler;,
        Lcom/android/camera/SelfCamera$Listener;
    }
.end annotation


# instance fields
.field private inputImageBuffer:[B

.field private mBlinkLevel:[I

.field private mCameraPreviewH:I

.field private mCameraPreviewV:I

.field private mCancleFaceDetected:Z

.field mContext:Landroid/content/Context;

.field private mFaceRectInPreview:[I

.field private mFaceSolid:Lcom/morpho/core/FaceSolid;

.field private mFaceSolidHandler:Landroid/os/Handler;

.field private mFaceSolidThread:Landroid/os/HandlerThread;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mIsPrevPerfect:Z

.field private mIsSmileEnable:Z

.field private mIsSmiling:Z

.field mListener:Lcom/android/camera/SelfCamera$Listener;

.field mMainHandler:Landroid/os/Handler;

.field private mMode:I

.field private mPaused:Z

.field mPreviewHeight:I

.field mPreviewWidth:I

.field private mShutterReady:Z

.field private mSmileLevel:[I

.field private mTrackNum:I

.field private mType:I

.field private mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

.field private mVoiceOn:Z

.field private m_arFaceNum:[I

.field private m_arFaceRect:[I

.field private m_arFaceRectTemp:[I

.field mbRunning:Z

.field private progress:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/SelfCamera$Listener;IILandroid/os/Handler;)V
    .locals 5
    .parameter "context"
    .parameter "listener"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "mainhandler"

    .prologue
    const/16 v4, 0x780

    const/16 v3, 0x438

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    .line 54
    iput-object v2, p0, Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;

    .line 55
    iput-object v2, p0, Lcom/android/camera/SelfCamera;->mFaceSolidThread:Landroid/os/HandlerThread;

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/SelfCamera;->mCancleFaceDetected:Z

    .line 64
    iput-object v2, p0, Lcom/android/camera/SelfCamera;->inputImageBuffer:[B

    .line 72
    iput-boolean v1, p0, Lcom/android/camera/SelfCamera;->mPaused:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/camera/SelfCamera;->mShutterReady:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/camera/SelfCamera;->mIsSmiling:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/camera/SelfCamera;->mIsPrevPerfect:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/camera/SelfCamera;->mIsSmileEnable:Z

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/SelfCamera;->mMode:I

    .line 89
    iput v3, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    .line 90
    iput v4, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    .line 91
    iput v4, p0, Lcom/android/camera/SelfCamera;->mImageWidth:I

    .line 92
    iput v3, p0, Lcom/android/camera/SelfCamera;->mImageHeight:I

    .line 109
    iput v1, p0, Lcom/android/camera/SelfCamera;->mPreviewWidth:I

    .line 110
    iput v1, p0, Lcom/android/camera/SelfCamera;->mPreviewHeight:I

    .line 111
    iput-object v2, p0, Lcom/android/camera/SelfCamera;->mMainHandler:Landroid/os/Handler;

    .line 112
    iput-object v2, p0, Lcom/android/camera/SelfCamera;->mContext:Landroid/content/Context;

    .line 113
    iput-object v2, p0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    .line 114
    iput-boolean v1, p0, Lcom/android/camera/SelfCamera;->mbRunning:Z

    .line 130
    invoke-virtual {p0, p3, p4}, Lcom/android/camera/SelfCamera;->resetPreviewSize(II)V

    .line 131
    iput-object p1, p0, Lcom/android/camera/SelfCamera;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    .line 133
    iput-object p5, p0, Lcom/android/camera/SelfCamera;->mMainHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method private abs(I)I
    .locals 0
    .parameter "x"

    .prologue
    .line 710
    if-ltz p1, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    neg-int p1, p1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/SelfCamera;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->progress:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/SelfCamera;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->inputImageBuffer:[B

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/SelfCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/SelfCamera;->updateFaceRect(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/SelfCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/SelfCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/SelfCamera;->mType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/SelfCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/SelfCamera;->mMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/SelfCamera;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SelfCamera;->checkFacePosition(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/SelfCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/camera/SelfCamera;->mShutterReady:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/SelfCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/camera/SelfCamera;->mShutterReady:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/SelfCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/SelfCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/SelfCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/camera/SelfCamera;->mIsSmileEnable:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/SelfCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/camera/SelfCamera;->mIsPrevPerfect:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/SelfCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/camera/SelfCamera;->mIsPrevPerfect:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/SelfCamera;)Lcom/android/camera/SelfCamera$VoiceGuide;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/SelfCamera;)Lcom/morpho/core/FaceSolid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/SelfCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/camera/SelfCamera;->releaseShutter()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/SelfCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/camera/SelfCamera;->mPaused:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/SelfCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/camera/SelfCamera;->mCancleFaceDetected:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/SelfCamera;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->m_arFaceNum:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/SelfCamera;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->m_arFaceRect:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/SelfCamera;[BI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SelfCamera;->detectBlinkSmile([BI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/SelfCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/camera/SelfCamera;->mIsSmiling:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/SelfCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/camera/SelfCamera;->mIsSmiling:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/SelfCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/camera/SelfCamera;->checkSmileLevel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/SelfCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/SelfCamera;->mTrackNum:I

    return v0
.end method

.method private avg(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 714
    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private checkDistanceFaces()Z
    .locals 22

    .prologue
    .line 528
    const/4 v13, 0x0

    .line 530
    .local v13, flag:Z
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v11, v0, [I

    .line 531
    .local v11, faceLeft:[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [I

    .line 533
    .local v12, faceRight:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 534
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ge v14, v0, :cond_1

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    move-object/from16 v19, v0

    aget v19, v19, v14

    aput v19, v11, v14

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v14, 0x4

    aget v19, v19, v20

    aput v19, v12, v14

    .line 534
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 539
    .end local v14           #i:I
    :cond_0
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_1
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ge v14, v0, :cond_1

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v14, 0x4

    aget v19, v19, v20

    aput v19, v11, v14

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    move-object/from16 v19, v0

    aget v19, v19, v14

    aput v19, v12, v14

    .line 539
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 545
    :cond_1
    const/16 v19, 0x0

    aget v19, v12, v19

    const/16 v20, 0x0

    aget v20, v11, v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/camera/SelfCamera;->abs(I)I

    move-result v6

    .line 546
    .local v6, distLeftLine:I
    const/16 v19, 0x2

    aget v19, v12, v19

    const/16 v20, 0x2

    aget v20, v11, v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/camera/SelfCamera;->abs(I)I

    move-result v7

    .line 547
    .local v7, distRightLine:I
    const/16 v19, 0x1

    aget v19, v12, v19

    const/16 v20, 0x1

    aget v20, v11, v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/camera/SelfCamera;->abs(I)I

    move-result v9

    .line 548
    .local v9, distTopLine:I
    const/16 v19, 0x3

    aget v19, v12, v19

    const/16 v20, 0x3

    aget v20, v11, v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/camera/SelfCamera;->abs(I)I

    move-result v5

    .line 550
    .local v5, distBottomLine:I
    const/16 v19, 0x0

    aget v19, v12, v19

    const/16 v20, 0x2

    aget v20, v11, v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/camera/SelfCamera;->abs(I)I

    move-result v19

    const/16 v20, 0x2

    aget v20, v12, v20

    const/16 v21, 0x0

    aget v21, v11, v21

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/camera/SelfCamera;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SelfCamera;->min(II)I

    move-result v8

    .line 552
    .local v8, distSideLine:I
    const/16 v19, 0x1

    aget v19, v12, v19

    const/16 v20, 0x3

    aget v20, v11, v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/camera/SelfCamera;->abs(I)I

    move-result v19

    const/16 v20, 0x3

    aget v20, v12, v20

    const/16 v21, 0x1

    aget v21, v11, v21

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/camera/SelfCamera;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SelfCamera;->min(II)I

    move-result v10

    .line 555
    .local v10, distUpDownLine:I
    const/16 v19, 0x2

    aget v19, v11, v19

    const/16 v20, 0x0

    aget v20, v11, v20

    sub-int v16, v19, v20

    .line 556
    .local v16, leftFaceWidth:I
    const/16 v19, 0x2

    aget v19, v12, v19

    const/16 v20, 0x0

    aget v20, v12, v20

    sub-int v18, v19, v20

    .line 557
    .local v18, rightFaceWidth:I
    add-int v19, v16, v18

    div-int/lit8 v4, v19, 0x2

    .line 559
    .local v4, avgFaceWidth:I
    const/16 v19, 0x3

    aget v19, v11, v19

    const/16 v20, 0x1

    aget v20, v11, v20

    sub-int v15, v19, v20

    .line 560
    .local v15, leftFaceHeight:I
    const/16 v19, 0x3

    aget v19, v12, v19

    const/16 v20, 0x1

    aget v20, v12, v20

    sub-int v17, v19, v20

    .line 561
    .local v17, rightFaceHeight:I
    add-int v19, v15, v17

    div-int/lit8 v3, v19, 0x2

    .line 563
    .local v3, avgFaceHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/SelfCamera;->mType:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/SelfCamera;->mType:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 564
    :cond_2
    int-to-float v0, v8

    move/from16 v19, v0

    int-to-float v0, v4

    move/from16 v20, v0

    const/high16 v21, 0x3fa0

    mul-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-gez v19, :cond_5

    int-to-float v0, v9

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    const/high16 v21, 0x3fa0

    mul-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-ltz v19, :cond_3

    int-to-float v0, v5

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    const/high16 v21, 0x3fa0

    mul-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-gez v19, :cond_5

    .line 568
    :cond_3
    const/4 v13, 0x1

    .line 592
    :cond_4
    :goto_2
    return v13

    .line 570
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceCloser()V

    goto :goto_2

    .line 575
    :cond_6
    int-to-float v0, v8

    move/from16 v19, v0

    int-to-float v0, v4

    move/from16 v20, v0

    const/high16 v21, 0x3fa0

    mul-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-gez v19, :cond_7

    int-to-float v0, v9

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    const/high16 v21, 0x3fa0

    mul-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-ltz v19, :cond_8

    int-to-float v0, v5

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    const/high16 v21, 0x3fa0

    mul-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-ltz v19, :cond_8

    :cond_7
    int-to-float v0, v10

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    const/high16 v21, 0x3fa0

    mul-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-gez v19, :cond_9

    int-to-float v0, v6

    move/from16 v19, v0

    int-to-float v0, v4

    move/from16 v20, v0

    const/high16 v21, 0x3fa0

    mul-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-ltz v19, :cond_8

    int-to-float v0, v7

    move/from16 v19, v0

    int-to-float v0, v4

    move/from16 v20, v0

    const/high16 v21, 0x3fa0

    mul-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-gez v19, :cond_9

    .line 585
    :cond_8
    const/4 v13, 0x1

    goto :goto_2

    .line 587
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceCloser()V

    goto :goto_2
.end method

.method private checkEndPosX(II)Z
    .locals 3
    .parameter "ex"
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 652
    iget v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    int-to-float v1, v1

    const v2, 0x3f59999a

    mul-float/2addr v1, v2

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 665
    :goto_0
    return v0

    .line 656
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    if-eqz v1, :cond_1

    .line 657
    if-ne p2, v0, :cond_2

    .line 658
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceLeft()V

    .line 665
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 659
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceRight()V

    goto :goto_1

    .line 662
    :cond_3
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceDown()V

    goto :goto_1
.end method

.method private checkEndPosY(II)Z
    .locals 3
    .parameter "ey"
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 670
    iget v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    int-to-float v1, v1

    const v2, 0x3f59999a

    mul-float/2addr v1, v2

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 683
    :goto_0
    return v0

    .line 674
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    if-eqz v1, :cond_1

    .line 675
    if-ne p2, v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceDown()V

    .line 683
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 677
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 678
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceUp()V

    goto :goto_1

    .line 680
    :cond_3
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceRight()V

    goto :goto_1
.end method

.method private checkFacePosition(II)Z
    .locals 8
    .parameter "type"
    .parameter "mode"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, flag:Z
    if-ne p2, v1, :cond_3

    .line 474
    iget-object v3, p0, Lcom/android/camera/SelfCamera;->m_arFaceNum:[I

    aget v3, v3, v2

    if-gtz v3, :cond_1

    .line 475
    iget-boolean v1, p0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v1}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceNoFace()V

    .line 513
    :cond_0
    :goto_0
    return v0

    .line 479
    :cond_1
    iget-object v3, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    aget v3, v3, v2

    invoke-direct {p0, v3, p1}, Lcom/android/camera/SelfCamera;->checkStartPosX(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    aget v3, v3, v6

    invoke-direct {p0, v3, p1}, Lcom/android/camera/SelfCamera;->checkEndPosX(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, p1}, Lcom/android/camera/SelfCamera;->checkStartPosY(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    aget v3, v3, v7

    invoke-direct {p0, v3, p1}, Lcom/android/camera/SelfCamera;->checkEndPosY(II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 486
    :cond_3
    iget-object v3, p0, Lcom/android/camera/SelfCamera;->m_arFaceNum:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_0

    .line 506
    iget-boolean v1, p0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v1}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceNoFace()V

    goto :goto_0

    .line 489
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/SelfCamera;->checkDistanceFaces()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    iget-object v3, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/android/camera/SelfCamera;->avg(II)I

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/android/camera/SelfCamera;->checkStartPosX(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/android/camera/SelfCamera;->avg(II)I

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/android/camera/SelfCamera;->checkEndPosX(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/android/camera/SelfCamera;->avg(II)I

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/android/camera/SelfCamera;->checkStartPosY(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/android/camera/SelfCamera;->avg(II)I

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/android/camera/SelfCamera;->checkEndPosY(II)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :goto_2
    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    .line 500
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v1}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceOneFace()V

    goto/16 :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkSmileLevel()Z
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method private checkStartPosX(II)Z
    .locals 3
    .parameter "sx"
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 616
    iget v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    int-to-float v1, v1

    const v2, 0x3e19999a

    mul-float/2addr v1, v2

    int-to-float v2, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 629
    :goto_0
    return v0

    .line 620
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    if-eqz v1, :cond_1

    .line 621
    if-ne p2, v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceRight()V

    .line 629
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 623
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 624
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceLeft()V

    goto :goto_1

    .line 626
    :cond_3
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceUp()V

    goto :goto_1
.end method

.method private checkStartPosY(II)Z
    .locals 3
    .parameter "sy"
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 634
    iget v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    int-to-float v1, v1

    const v2, 0x3e19999a

    mul-float/2addr v1, v2

    int-to-float v2, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 647
    :goto_0
    return v0

    .line 638
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SelfCamera;->mVoiceOn:Z

    if-eqz v1, :cond_1

    .line 639
    if-ne p2, v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceUp()V

    .line 647
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 641
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 642
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceDown()V

    goto :goto_1

    .line 644
    :cond_3
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->voiceLeft()V

    goto :goto_1
.end method

.method private configFaceFinder()V
    .locals 4

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 388
    .local v0, ret:I
    new-instance v1, Lcom/morpho/core/FaceSolid;

    invoke-direct {v1}, Lcom/morpho/core/FaceSolid;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    .line 390
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    iget v2, p0, Lcom/android/camera/SelfCamera;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/SelfCamera;->mPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/morpho/core/FaceSolid;->initialize(II)I

    move-result v0

    .line 392
    if-gtz v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    iget v2, p0, Lcom/android/camera/SelfCamera;->mTrackNum:I

    invoke-virtual {v1, v2}, Lcom/morpho/core/FaceSolid;->setMaxTrackNum(I)I

    move-result v0

    .line 398
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/morpho/core/FaceSolid;->setLightTrackNum(I)I

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    invoke-virtual {v1}, Lcom/morpho/core/FaceSolid;->start()I

    move-result v0

    goto :goto_0
.end method

.method private detectBlinkSmile([BI)V
    .locals 6
    .parameter "data"
    .parameter "facenum"

    .prologue
    .line 441
    const/4 v3, 0x1

    if-ge p2, v3, :cond_1

    .line 460
    :cond_0
    return-void

    .line 445
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 446
    mul-int/lit8 v2, v0, 0x9

    .line 449
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    const/16 v3, 0x9

    if-ge v1, v3, :cond_2

    .line 450
    iget-object v3, p0, Lcom/android/camera/SelfCamera;->m_arFaceRectTemp:[I

    iget-object v4, p0, Lcom/android/camera/SelfCamera;->m_arFaceRect:[I

    add-int v5, v2, v1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 451
    add-int/lit8 v1, v1, 0x1

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 454
    :cond_2
    iget-object v3, p0, Lcom/android/camera/SelfCamera;->mSmileLevel:[I

    iget-object v4, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    iget-object v5, p0, Lcom/android/camera/SelfCamera;->m_arFaceRectTemp:[I

    invoke-virtual {v4, p1, v5}, Lcom/morpho/core/FaceSolid;->detectSmile([B[I)I

    move-result v4

    aput v4, v3, v0

    .line 455
    iget-object v3, p0, Lcom/android/camera/SelfCamera;->mBlinkLevel:[I

    iget-object v4, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    iget-object v5, p0, Lcom/android/camera/SelfCamera;->m_arFaceRectTemp:[I

    invoke-virtual {v4, p1, v5}, Lcom/morpho/core/FaceSolid;->detectBlink([B[I)I

    move-result v4

    aput v4, v3, v0

    .line 457
    const-string v3, "SelfCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### detectBlinkSmile SmileLevel["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SelfCamera;->mSmileLevel:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v3, "SelfCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### detectBlinkSmile BlinkLevel["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SelfCamera;->mBlinkLevel:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private finishFaceFinder()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    invoke-virtual {v0}, Lcom/morpho/core/FaceSolid;->finish()I

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    .line 414
    :cond_0
    return-void
.end method

.method private min(II)I
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 718
    if-le p1, p2, :cond_0

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method private releaseShutter()V
    .locals 3

    .prologue
    .line 604
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_0
    return-void
.end method

.method private updateFaceRect(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 418
    iget-object v5, p0, Lcom/android/camera/SelfCamera;->m_arFaceNum:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-gtz v5, :cond_0

    .line 419
    const-string v5, "SelfCamera"

    const-string v6, "updateFaceRect() no Face"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    return-void

    .line 424
    :cond_0
    mul-int/lit8 v2, p1, 0x9

    .line 425
    .local v2, offset:I
    iget-object v5, p0, Lcom/android/camera/SelfCamera;->m_arFaceRect:[I

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    iget v6, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/SelfCamera;->mImageWidth:I

    div-int v3, v5, v6

    .line 426
    .local v3, sx:I
    iget-object v5, p0, Lcom/android/camera/SelfCamera;->m_arFaceRect:[I

    add-int/lit8 v6, v2, 0x2

    aget v5, v5, v6

    iget v6, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/SelfCamera;->mImageHeight:I

    div-int v4, v5, v6

    .line 427
    .local v4, sy:I
    iget-object v5, p0, Lcom/android/camera/SelfCamera;->m_arFaceRect:[I

    add-int/lit8 v6, v2, 0x3

    aget v5, v5, v6

    iget v6, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/SelfCamera;->mImageWidth:I

    div-int v0, v5, v6

    .line 428
    .local v0, ex:I
    iget-object v5, p0, Lcom/android/camera/SelfCamera;->m_arFaceRect:[I

    add-int/lit8 v6, v2, 0x4

    aget v5, v5, v6

    iget v6, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/SelfCamera;->mImageHeight:I

    div-int v1, v5, v6

    .line 430
    .local v1, ey:I
    mul-int/lit8 v2, p1, 0x4

    .line 431
    iget-object v5, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    add-int/lit8 v6, v2, 0x0

    aput v3, v5, v6

    .line 432
    iget-object v5, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    add-int/lit8 v6, v2, 0x1

    aput v4, v5, v6

    .line 433
    iget-object v5, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    add-int/lit8 v6, v2, 0x2

    aput v0, v5, v6

    .line 434
    iget-object v5, p0, Lcom/android/camera/SelfCamera;->mFaceRectInPreview:[I

    add-int/lit8 v6, v2, 0x3

    aput v1, v5, v6

    goto :goto_0
.end method


# virtual methods
.method public cancleFaceDetect()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SelfCamera;->mCancleFaceDetected:Z

    .line 60
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/camera/SelfCamera;->mMode:I

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 362
    const-string v0, "SelfCamera"

    const-string v1, "--onPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-nez p1, :cond_1

    .line 365
    const-string v0, "SelfCamera"

    const-string v1, "@@@@@ data is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/camera/SelfCamera;->inputImageBuffer:[B

    .line 371
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/SelfCamera;->mPaused:Z

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SelfCamera;->mCancleFaceDetected:Z

    .line 373
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public pauseShutterGuide()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "SelfCamera"

    const-string v1, "-----------pauseShutterGuide()---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SelfCamera;->mPaused:Z

    .line 202
    return-void
.end method

.method public resetPreviewSize(II)V
    .locals 0
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/camera/SelfCamera;->mPreviewWidth:I

    .line 140
    iput p2, p0, Lcom/android/camera/SelfCamera;->mPreviewHeight:I

    .line 142
    iput p1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    .line 143
    iput p2, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    .line 145
    iput p1, p0, Lcom/android/camera/SelfCamera;->mImageWidth:I

    .line 146
    iput p2, p0, Lcom/android/camera/SelfCamera;->mImageHeight:I

    .line 147
    return-void
.end method

.method public resumeShutterGuide()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "SelfCamera"

    const-string v1, "-----------resumeShutterGuide()---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-boolean v0, p0, Lcom/android/camera/SelfCamera;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/SelfCamera;->mbRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SelfCamera;->mPaused:Z

    .line 207
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    invoke-interface {v0, p0}, Lcom/android/camera/SelfCamera$Listener;->registerOneShotPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V

    .line 209
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 248
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_1

    .line 249
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/SelfCamera;->mType:I

    .line 250
    iget v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    iget v2, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    if-ge v1, v2, :cond_0

    .line 251
    iget v0, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    .line 252
    .local v0, tmp:I
    iget v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    iput v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    .line 253
    iput v0, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    .line 276
    .end local v0           #tmp:I
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    if-nez p1, :cond_2

    .line 258
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/SelfCamera;->mType:I

    .line 259
    iget v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    iget v2, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    if-ge v1, v2, :cond_0

    .line 260
    iget v0, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    .line 261
    .restart local v0       #tmp:I
    iget v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    iput v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    .line 262
    iput v0, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    goto :goto_0

    .line 267
    .end local v0           #tmp:I
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/SelfCamera;->mType:I

    .line 268
    iget v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    iget v2, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    if-le v1, v2, :cond_0

    .line 269
    iget v0, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    .line 270
    .restart local v0       #tmp:I
    iget v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    iput v1, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewH:I

    .line 271
    iput v0, p0, Lcom/android/camera/SelfCamera;->mCameraPreviewV:I

    goto :goto_0
.end method

.method public startShutterGuide(II)Z
    .locals 4
    .parameter "mode"
    .parameter "degree"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 150
    const-string v2, "SelfCamera"

    const-string v3, "-----------startShutterGuide()---"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-le v1, p1, :cond_0

    const/4 v2, 0x2

    if-ge v2, p1, :cond_0

    .line 197
    :goto_0
    return v0

    .line 153
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/SelfCamera;->mbRunning:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/SelfCamera;->mMode:I

    if-ne p1, v2, :cond_1

    move v0, v1

    .line 154
    goto :goto_0

    .line 156
    :cond_1
    iput p1, p0, Lcom/android/camera/SelfCamera;->mMode:I

    .line 157
    iget v2, p0, Lcom/android/camera/SelfCamera;->mMode:I

    iput v2, p0, Lcom/android/camera/SelfCamera;->mTrackNum:I

    .line 158
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/camera/SelfCamera;->progress:[I

    .line 159
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/camera/SelfCamera;->m_arFaceNum:[I

    .line 160
    iget v2, p0, Lcom/android/camera/SelfCamera;->mTrackNum:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/camera/SelfCamera;->mSmileLevel:[I

    .line 161
    iget v2, p0, Lcom/android/camera/SelfCamera;->mTrackNum:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/camera/SelfCamera;->mBlinkLevel:[I

    .line 162
    const/16 v2, 0x12

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/camera/SelfCamera;->m_arFaceRect:[I

    .line 163
    const/16 v2, 0x9

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/camera/SelfCamera;->m_arFaceRectTemp:[I

    .line 164
    iput v1, p0, Lcom/android/camera/SelfCamera;->mType:I

    .line 170
    iput-boolean v0, p0, Lcom/android/camera/SelfCamera;->mPaused:Z

    .line 171
    invoke-virtual {p0, p2}, Lcom/android/camera/SelfCamera;->setOrientation(I)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolidThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_6

    .line 175
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "FaceSolid Thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolidThread:Landroid/os/HandlerThread;

    .line 177
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolidThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolidThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 179
    new-instance v0, Lcom/android/camera/SelfCamera$FaceSolidHandler;

    iget-object v2, p0, Lcom/android/camera/SelfCamera;->mFaceSolidThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/camera/SelfCamera$FaceSolidHandler;-><init>(Lcom/android/camera/SelfCamera;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;

    .line 184
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;

    if-eqz v0, :cond_3

    .line 185
    invoke-direct {p0}, Lcom/android/camera/SelfCamera;->finishFaceFinder()V

    .line 187
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/SelfCamera;->configFaceFinder()V

    .line 189
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    if-nez v0, :cond_4

    .line 190
    new-instance v0, Lcom/android/camera/SelfCamera$VoiceGuide;

    iget-object v2, p0, Lcom/android/camera/SelfCamera;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/SelfCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/camera/SelfCamera$VoiceGuide;-><init>(Lcom/android/camera/SelfCamera;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    invoke-interface {v0, p0}, Lcom/android/camera/SelfCamera$Listener;->registerOneShotPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V

    .line 196
    :cond_5
    iput-boolean v1, p0, Lcom/android/camera/SelfCamera;->mbRunning:Z

    move v0, v1

    .line 197
    goto/16 :goto_0

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public stopShutterGuide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    const-string v1, "SelfCamera"

    const-string v2, "-----------stopShutterGuide()---"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceSolidThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceSolidThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mFaceSolidThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;

    .line 233
    iput-object v3, p0, Lcom/android/camera/SelfCamera;->mFaceSolidThread:Landroid/os/HandlerThread;

    .line 235
    invoke-direct {p0}, Lcom/android/camera/SelfCamera;->finishFaceFinder()V

    .line 237
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    invoke-interface {v1, v3}, Lcom/android/camera/SelfCamera$Listener;->registerOneShotPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V

    .line 239
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/SelfCamera;->mbRunning:Z

    .line 240
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterCallback()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/SelfCamera$Listener;->registerOneShotPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V

    .line 121
    :cond_0
    return-void
.end method
