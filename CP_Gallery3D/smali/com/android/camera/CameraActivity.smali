.class public Lcom/android/camera/CameraActivity;
.super Lcom/android/camera/ActivityBase;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/ui/CameraFaceEffectBar$MenuListener;
.implements Lcom/android/camera/ui/CameraLeftBar$MenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraActivity$5;,
        Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;,
        Lcom/android/camera/CameraActivity$MyOrientationEventListener;
    }
.end annotation


# instance fields
.field public final CPU_FREQUENCY_PREVIEW_MODE:I

.field public final CPU_FREQUENCY_RECOVERY_MODE:I

.field public final CPU_FREQUENCY_VIDEO_MODE:I

.field public ImageNum:I

.field private filterContentDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

.field private filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

.field private init_orientation:I

.field public isHasImageNum:Z

.field private isInitialized:Z

.field private mAdjustBrightness:I

.field private mBootAnimationRoot:Landroid/widget/RelativeLayout;

.field private mBootPrompt1:Landroid/widget/ImageView;

.field private mBootPrompt2:Landroid/widget/ImageView;

.field public mCallingVideoRecorderCloseAudio:Z

.field public mCallingVideoRecorderCloseAudioForMMS:Z

.field private mCameraEffectContainer:Landroid/widget/FrameLayout;

.field private mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

.field private mCameraModeSwitcher:Landroid/widget/FrameLayout;

.field public mCaptureModeOverried:Z

.field private mCoverReceiver:Landroid/content/BroadcastReceiver;

.field public mCoverState:I

.field public mCurrendFlashMode:Ljava/lang/String;

.field public mCurrentEffectModeOverried:Ljava/lang/String;

.field public mCurrentModeOverried:Ljava/lang/String;

.field mCurrentModule:Lcom/android/camera/CameraModule;

.field public mCurrentSecureBoxValue:Ljava/lang/String;

.field public mDelayLaunchGalleyr3d:Z

.field private mDown:Landroid/view/MotionEvent;

.field private mDynamicRootView:Landroid/widget/FrameLayout;

.field public mEffectModeOverried:Z

.field private mEnterOrientation:I

.field private mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

.field public mFaceModeBackup:Ljava/lang/String;

.field public mFaceModeOverried:Z

.field private mFocusIndicatorContainer:Landroid/widget/RelativeLayout;

.field private mFrame:Landroid/widget/FrameLayout;

.field private mIndependenceContainer:Landroid/widget/FrameLayout;

.field private mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

.field private mLastShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

.field public mLaunchGalleryed:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field public mModeBackup:Ljava/lang/String;

.field protected mMoveDir1:Landroid/view/animation/Animation;

.field protected mMoveDir2:Landroid/view/animation/Animation;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

.field private mPauseRecord:Lcom/android/camera/ShutterButton;

.field public mPicSizeHintsPrompted:Z

.field private final mPowerSavingCountdownMilliSec:J

.field private mPowerSavingTimer:Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;

.field private mPreModuleIndex:I

.field private mRecordVideoBtn:Lcom/android/camera/ShutterButton;

.field private mRecordVideoSwitcher:Landroid/widget/FrameLayout;

.field private mReferencecount:I

.field private mRotateOrientation:I

.field mRotateToastView:Lcom/android/camera/ui/RotateToastView;

.field private mSecureBoxAvailable:Z

.field public mSecureBoxOverried:Z

.field private mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

.field private mShutterListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

.field private mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

.field private mShutterSwitcher:Landroid/view/View;

.field public mSoundPlayer:Lcom/android/camera/SoundClips$Player;

.field private mStartupTime:J

.field private mStopRecord:Lcom/android/camera/ShutterButton;

.field public mSupportIndependentOutput:Z

.field public mSupportNSL:Z

.field public mSupportShotMode:Z

.field public mSurfaceViewHeight:I

.field public mSurfaceViewWidth:I

.field private mSwitchTime:J

.field private mTakePhotoBtn:Lcom/android/camera/ShutterButton;

.field mToastViewLayout:Landroid/widget/FrameLayout;

.field private mUiRootView:Landroid/widget/RelativeLayout;

.field private mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

.field private mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

.field private mWhiteFrameLayout:Landroid/widget/FrameLayout;

.field public mbForward:Z

.field public mbShutterMuteed:Z

.field private mcoolpadSys:Lcom/yulong/android/server/systeminterface/SystemManager;

.field private moldCpuFrequency:I

.field private moldCpunum:I

.field public needUpdateView:Z

.field public oldScreenNailLayoutHeight:I

.field public oldScreenNailLayoutWidth:I

.field public panoramaRunning:Z

.field photoIDPreference:Landroid/content/SharedPreferences;

.field private sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/camera/ShutterButton$ShutterMode;",
            "Lcom/android/camera/CameraModule;",
            ">;"
        }
    .end annotation
.end field

.field private screenHeight:I

.field private screenwidth:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 126
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/camera/CameraActivity;->init_orientation:I

    .line 128
    iput v2, p0, Lcom/android/camera/CameraActivity;->oldScreenNailLayoutHeight:I

    .line 129
    iput v2, p0, Lcom/android/camera/CameraActivity;->oldScreenNailLayoutWidth:I

    .line 137
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mDelayLaunchGalleyr3d:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mCallingVideoRecorderCloseAudio:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mCallingVideoRecorderCloseAudioForMMS:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->isHasImageNum:Z

    .line 167
    iput v3, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    .line 170
    iput v2, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    .line 175
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    .line 176
    new-instance v0, Ljava/lang/String;

    const-string v1, "none"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/String;

    const-string v1, "none"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mModeBackup:Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/lang/String;

    const-string v1, "none"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentEffectModeOverried:Ljava/lang/String;

    .line 179
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mEffectModeOverried:Z

    .line 181
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mFaceModeOverried:Z

    .line 183
    new-instance v0, Ljava/lang/String;

    const-string v1, "none"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mFaceModeBackup:Ljava/lang/String;

    .line 188
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->panoramaRunning:Z

    .line 190
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mSecureBoxOverried:Z

    .line 191
    new-instance v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentSecureBoxValue:Ljava/lang/String;

    .line 196
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mSecureBoxAvailable:Z

    .line 199
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mSupportIndependentOutput:Z

    .line 200
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mSupportNSL:Z

    .line 201
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mSupportShotMode:Z

    .line 202
    iput v2, p0, Lcom/android/camera/CameraActivity;->mReferencecount:I

    .line 222
    sget-object v0, Lcom/android/camera/ShutterButton$ShutterMode;->PHOTO:Lcom/android/camera/ShutterButton$ShutterMode;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mLastShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    .line 236
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->isInitialized:Z

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mcoolpadSys:Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 247
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/CameraActivity;->CPU_FREQUENCY_PREVIEW_MODE:I

    .line 248
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/camera/CameraActivity;->CPU_FREQUENCY_VIDEO_MODE:I

    .line 249
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/camera/CameraActivity;->CPU_FREQUENCY_RECOVERY_MODE:I

    .line 250
    iput v2, p0, Lcom/android/camera/CameraActivity;->moldCpunum:I

    .line 251
    iput v2, p0, Lcom/android/camera/CameraActivity;->moldCpuFrequency:I

    .line 252
    iput v3, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    .line 253
    iput v3, p0, Lcom/android/camera/CameraActivity;->mRotateOrientation:I

    .line 256
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mbShutterMuteed:Z

    .line 257
    iput v2, p0, Lcom/android/camera/CameraActivity;->mAdjustBrightness:I

    .line 259
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mbForward:Z

    .line 260
    iput v3, p0, Lcom/android/camera/CameraActivity;->mSurfaceViewWidth:I

    .line 261
    iput v3, p0, Lcom/android/camera/CameraActivity;->mSurfaceViewHeight:I

    .line 266
    const-wide/32 v0, 0x15f90

    iput-wide v0, p0, Lcom/android/camera/CameraActivity;->mPowerSavingCountdownMilliSec:J

    .line 272
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mPicSizeHintsPrompted:Z

    .line 273
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->needUpdateView:Z

    .line 277
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrendFlashMode:Ljava/lang/String;

    .line 279
    iput v3, p0, Lcom/android/camera/CameraActivity;->mCoverState:I

    .line 295
    new-instance v0, Lcom/android/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$1;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCoverReceiver:Landroid/content/BroadcastReceiver;

    .line 2196
    new-instance v0, Lcom/android/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$3;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mShutterListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    return-void
.end method

.method private TickCounterPowersaving(Z)V
    .locals 6
    .parameter "enter"

    .prologue
    const-wide/32 v2, 0x15f90

    .line 1853
    if-eqz p1, :cond_2

    .line 1854
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerSavingTimer:Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;

    if-nez v0, :cond_0

    .line 1855
    new-instance v0, Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;-><init>(Lcom/android/camera/CameraActivity;JJ)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerSavingTimer:Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;

    .line 1860
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerSavingTimer:Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;

    if-eqz v0, :cond_1

    .line 1861
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerSavingTimer:Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1869
    :cond_1
    :goto_0
    return-void

    .line 1864
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerSavingTimer:Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;

    if-eqz v0, :cond_1

    .line 1865
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPowerSavingTimer:Lcom/android/camera/CameraActivity$PowerSavingCountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/CameraActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/CameraActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->isInitialized:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/CameraActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->isInitialized:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/CameraActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/CameraActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->initRotation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/CameraActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/CameraActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/CameraActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraActivity;->setOrientationIndicator(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ShutterButton$ShutterMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->launchPowersaving()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/camera/CameraActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/android/camera/CameraActivity;->mSwitchTime:J

    return-wide p1
.end method

.method private canReuseScreenNail()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1935
    iget v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeModule(Lcom/android/camera/CameraModule;)V
    .locals 1
    .parameter "module"

    .prologue
    .line 1015
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 1016
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 1018
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->snycSaveThumbnailToFile()V

    .line 1019
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1020
    return-void
.end method

.method private getScreenHeightAndWidth()V
    .locals 3

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 496
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 497
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/CameraActivity;->screenwidth:I

    .line 498
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/camera/CameraActivity;->screenHeight:I

    .line 499
    return-void
.end method

.method private initBootAnimation()V
    .locals 4

    .prologue
    const v3, 0x7f100019

    const/4 v2, 0x4

    .line 2561
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2562
    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mBootPrompt1:Landroid/widget/ImageView;

    .line 2563
    const v0, 0x7f10001b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mBootPrompt2:Landroid/widget/ImageView;

    .line 2564
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mBootAnimationRoot:Landroid/widget/RelativeLayout;

    .line 2565
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportedBootAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2566
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootPrompt1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2567
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootPrompt2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2570
    :cond_0
    const v0, 0x7f050002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mMoveDir1:Landroid/view/animation/Animation;

    .line 2572
    const v0, 0x7f050003

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mMoveDir2:Landroid/view/animation/Animation;

    .line 2575
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMoveDir1:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2576
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMoveDir2:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2578
    return-void
.end method

.method private initCoverReceiverFliter()V
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCoverReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 286
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "yulong.intent.action.HallSensor"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private initImageFilterDrawer()V
    .locals 3

    .prologue
    .line 756
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 757
    .local v0, root:Landroid/view/View;
    new-instance v1, Lcom/android/camera/ui/FilterSlidingDrawer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/android/camera/ui/FilterSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    .line 758
    const v1, 0x7f1000fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/DirectionsSlidingDrawer;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->filterContentDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    .line 760
    return-void
.end method

.method private initRotation(I)I
    .locals 3
    .parameter "orientation"

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, rotation:I
    add-int/lit16 v2, p1, 0x168

    rem-int/lit16 v2, v2, 0x168

    div-int/lit8 v1, v2, 0x2d

    .line 846
    .local v1, symbol:I
    packed-switch v1, :pswitch_data_0

    .line 864
    const/4 v0, 0x0

    .line 868
    :goto_0
    return v0

    .line 849
    :pswitch_0
    const/4 v0, 0x0

    .line 850
    goto :goto_0

    .line 853
    :pswitch_1
    const/16 v0, 0x5a

    .line 854
    goto :goto_0

    .line 857
    :pswitch_2
    const/16 v0, 0xb4

    .line 858
    goto :goto_0

    .line 861
    :pswitch_3
    const/16 v0, 0x10e

    .line 862
    goto :goto_0

    .line 846
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private isSettingListVisibility()Z
    .locals 4

    .prologue
    .line 1802
    const/4 v0, 0x0

    .line 1803
    .local v0, isVisibility:Z
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v3, :cond_2

    .line 1804
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v3}, Lcom/android/camera/ui/CameraLeftBar;->getSettingListView()Landroid/view/View;

    move-result-object v1

    .line 1805
    .local v1, listView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v3}, Lcom/android/camera/ui/CameraLeftBar;->getSettingSubListView()Landroid/view/View;

    move-result-object v2

    .line 1806
    .local v2, subListView:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 1808
    :cond_1
    const/4 v0, 0x1

    .line 1810
    .end local v1           #listView:Landroid/view/View;
    .end local v2           #subListView:Landroid/view/View;
    :cond_2
    return v0
.end method

.method private launchPowersaving()V
    .locals 4

    .prologue
    .line 1871
    const-string v2, "CAM_activity"

    const-string v3, ">>>>>>>>launchPowersaving"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.dialog"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1873
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 1874
    const-string v2, "com.android.gallery3d"

    const-string v3, "com.android.camera.CameraDialogActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1876
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1881
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    .line 1883
    :cond_0
    return-void

    .line 1878
    :catch_0
    move-exception v0

    .line 1879
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "CAM_activity"

    const-string v3, "launchPowersaving fail"

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private openModule(Lcom/android/camera/CameraModule;Z)V
    .locals 4
    .parameter "module"
    .parameter "canReuse"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1001
    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->canReuseScreenNail()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {p1, p0, v3, v0, v1}, Lcom/android/camera/CameraModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;ZZ)V

    .line 1002
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLastShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    sget-object v1, Lcom/android/camera/ShutterButton$ShutterMode;->VIDEO:Lcom/android/camera/ShutterButton$ShutterMode;

    if-ne v0, v1, :cond_0

    .line 1003
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mbImage:Z

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    sget-object v1, Lcom/android/camera/ShutterButton$ShutterMode;->VIDEO:Lcom/android/camera/ShutterButton$ShutterMode;

    if-eq v0, v1, :cond_1

    .line 1009
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1010
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 1011
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 1012
    return-void

    :cond_2
    move v0, v2

    .line 1001
    goto :goto_0
.end method

.method private performShutterButtonClick(Lcom/android/camera/ShutterButton$ShutterMode;Lcom/android/camera/CameraModule;)V
    .locals 2
    .parameter "mode"
    .parameter "cm"

    .prologue
    .line 2321
    sget-object v1, Lcom/android/camera/ShutterButton$ShutterMode;->VIDEO:Lcom/android/camera/ShutterButton$ShutterMode;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 2322
    check-cast v0, Lcom/android/camera/VideoModule;

    .line 2323
    .local v0, module:Lcom/android/camera/VideoModule;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoModule;->onShutterButtonClick(Lcom/android/camera/ShutterButton;)V

    .line 2327
    .end local v0           #module:Lcom/android/camera/VideoModule;
    :cond_0
    :goto_0
    return-void

    .line 2324
    :cond_1
    sget-object v1, Lcom/android/camera/ShutterButton$ShutterMode;->PHOTO:Lcom/android/camera/ShutterButton$ShutterMode;

    if-ne p1, v1, :cond_0

    goto :goto_0
.end method

.method private resetPreferenceSettings()V
    .locals 5

    .prologue
    .line 767
    const-string v3, "CAM_activity"

    const-string v4, "resetPreferenceSettings"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v2, Lcom/android/camera/ComboPreferences;

    invoke-direct {v2, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    .line 770
    .local v2, preferences:Lcom/android/camera/ComboPreferences;
    if-eqz v2, :cond_2

    .line 771
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    .line 772
    invoke-virtual {v2, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 773
    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 777
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v1, :cond_1

    .line 778
    const-string v3, "pref_camera_capturemode_key"

    const-string v4, "none"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 782
    :cond_0
    :goto_1
    const-string v3, "pref_camera_scenemode_key"

    const-string v4, "auto"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 783
    const-string v3, "pref_camera_effect_key"

    const-string v4, "none"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 784
    const-string v3, "pref_camera_whitebalance_key"

    const-string v4, "auto"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 785
    const-string v3, "pref_camera_delay_key"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 786
    const-string v3, "pref_camera_secure_box_key"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 787
    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 791
    const-string v3, "pref_camera_iso_key"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 794
    const-string v3, "pref_camera_capturemode_key"

    const-string v4, "none"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 800
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 779
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 780
    const-string v3, "pref_camera_capturemode_key"

    const-string v4, "beautyshot"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 803
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method private setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 907
    const/16 v5, 0xb

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewForAnimation:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewForSlideAnimation:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mPauseRecord:Lcom/android/camera/ShutterButton;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mStopRecord:Lcom/android/camera/ShutterButton;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    aput-object v6, v3, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    aput-object v6, v3, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    aput-object v6, v3, v5

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    aput-object v6, v3, v5

    .line 910
    .local v3, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 911
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 910
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method private uninitCoverReceiverFliter()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCoverReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    :cond_0
    return-void
.end method

.method private updateIconUiByOrientation()V
    .locals 3

    .prologue
    .line 897
    iget v1, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 902
    .local v0, orientationCompensation:I
    iput v0, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    .line 903
    iget v1, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraActivity;->setOrientationIndicator(IZ)V

    .line 905
    return-void
.end method

.method private updateRotateOrientation()V
    .locals 1

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->isInitialized:Z

    if-nez v0, :cond_0

    .line 892
    iget v0, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->initRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->isInitialized:Z

    .line 895
    :cond_0
    return-void
.end method


# virtual methods
.method public LaunchGallery()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2015
    const-string v3, "CAM_activity"

    const-string v4, ">>>>>>>>go to laucherGallery3d"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2018
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 2019
    const-string v3, "com.android.gallery3d"

    const-string v4, "com.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2020
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2022
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2025
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2026
    .local v2, newExtras:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 2027
    const-string v3, "setbrightness"

    iget v4, p0, Lcom/android/camera/CameraActivity;->mAdjustBrightness:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2028
    const-string v3, "CameraLaunched"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2029
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2033
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2039
    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    .line 2042
    .end local v2           #newExtras:Landroid/os/Bundle;
    :cond_1
    return-void

    .line 2035
    .restart local v2       #newExtras:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 2036
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "CAM_activity"

    const-string v4, "review image fail"

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2037
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    goto :goto_0
.end method

.method public QueryRecording()V
    .locals 3

    .prologue
    .line 1444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.recorder.state.query"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1445
    .local v0, iRecord:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1448
    :cond_0
    const-string v1, "CAM_activity"

    const-string v2, "sendBrodcast: QUERY_RECORDER_STATE_ACTION: com.android.recorder.state.query"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    return-void
.end method

.method public ShowIndependenceShutterButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1154
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1158
    const v0, 0x7f10003c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceContainer:Landroid/widget/FrameLayout;

    .line 1159
    const v0, 0x7f10003d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    .line 1160
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    sget-object v1, Lcom/android/camera/ShutterButton$ShutterMode;->PANORAMA:Lcom/android/camera/ShutterButton$ShutterMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setShutterMode(Lcom/android/camera/ShutterButton$ShutterMode;)V

    .line 1164
    return-void
.end method

.method public TriggerBootAnimation()V
    .locals 2

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootAnimationRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootAnimationRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 2582
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootPrompt1:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2583
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootPrompt1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mMoveDir1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2585
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootPrompt2:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2586
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootPrompt2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mMoveDir2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2590
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1780
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 1781
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    .line 1783
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1784
    const-string v1, "CAM_activity"

    const-string v2, "skip the dispatchTouchEvent while activity onpause"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :goto_0
    return v0

    .line 1788
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isSettingListVisibility()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1789
    const-string v0, "CAM_activity"

    const-string v1, "setting list view is visable!!!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1792
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 1793
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->TickCounterPowersaving(Z)V

    .line 1798
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1794
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1795
    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->TickCounterPowersaving(Z)V

    goto :goto_1
.end method

.method public enterCameraSecureBox(Z)V
    .locals 1
    .parameter "enter"

    .prologue
    const/4 v0, 0x1

    .line 408
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->snycSaveThumbnailToFile()V

    .line 409
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    .line 411
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateStorageSpace()V

    .line 413
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/ActivityBase;->reuseCameraScreenNail(ZZ)Lcom/android/gallery3d/ui/ScreenNail;

    .line 415
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->refleshLastThumbnail()V

    .line 416
    return-void
.end method

.method public getAutoFocusTime()J
    .locals 2

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCameraControl()Landroid/view/View;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutterSwitcher:Landroid/view/View;

    return-object v0
.end method

.method public getCameraEffectContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraEffectContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCameraLeftBar()Lcom/android/camera/ui/CameraLeftBar;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    return-object v0
.end method

.method public getCameraModeSwitcher()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraModeSwitcher:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public getCaptureStartTime()J
    .locals 2

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCreateLoadOrientation()I
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lcom/android/camera/CameraActivity;->init_orientation:I

    return v0
.end method

.method public getCurrentLocation()Lcom/android/camera/LocationManager;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method public getCurrentModule()Lcom/android/camera/CameraModule;
    .locals 1

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    return-object v0
.end method

.method public getDynamicRootView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDynamicRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getEnterOrientation()I
    .locals 4

    .prologue
    const/16 v3, 0x10e

    const/4 v2, -0x1

    .line 2453
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2455
    iget v0, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    if-ne v0, v2, :cond_1

    .line 2457
    :cond_0
    iput v3, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    .line 2466
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    return v0

    .line 2459
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2461
    iget v0, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    if-ne v0, v2, :cond_1

    .line 2463
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    goto :goto_0
.end method

.method public getFaceEffectButton()Lcom/android/camera/ui/MyTextPreferenceButton;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    return-object v0
.end method

.method public getFilterSlidingDrawer()Lcom/android/camera/ui/FilterSlidingDrawer;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    return-object v0
.end method

.method public getFocusIndicatorContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFocusIndicatorContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getImageNumFromPreference()V
    .locals 10

    .prologue
    const/4 v4, -0x2

    .line 2365
    :try_start_0
    const-string v8, "image_number"

    .line 2366
    .local v8, imageName:Ljava/lang/String;
    const-string v1, "photoIDPreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->photoIDPreference:Landroid/content/SharedPreferences;

    .line 2367
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->photoIDPreference:Landroid/content/SharedPreferences;

    const-string v2, "ImageNum"

    const/4 v3, -0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraActivity;->ImageNum:I

    .line 2368
    const-string v1, "CAM_activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----getImageNumFromPreference--------ImageNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraActivity;->ImageNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    iget v1, p0, Lcom/android/camera/CameraActivity;->ImageNum:I

    if-ne v1, v4, :cond_0

    .line 2370
    const-string v1, "CAM_activity"

    const-string v2, "----------------get form MediaStore"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2372
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2373
    .local v5, mOrderClause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2375
    .local v9, mCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 2377
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2378
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2379
    .local v6, ImageNumFromMediaStore:Ljava/lang/String;
    const-string v1, "CAM_activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------ImageNumFromMediaStore="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    if-nez v6, :cond_1

    .line 2381
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/CameraActivity;->ImageNum:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2389
    .end local v6           #ImageNumFromMediaStore:Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2399
    .end local v0           #mContentResolver:Landroid/content/ContentResolver;
    .end local v5           #mOrderClause:Ljava/lang/String;
    .end local v8           #imageName:Ljava/lang/String;
    .end local v9           #mCursor:Landroid/database/Cursor;
    :cond_0
    :goto_1
    return-void

    .line 2383
    .restart local v0       #mContentResolver:Landroid/content/ContentResolver;
    .restart local v5       #mOrderClause:Ljava/lang/String;
    .restart local v6       #ImageNumFromMediaStore:Ljava/lang/String;
    .restart local v8       #imageName:Ljava/lang/String;
    .restart local v9       #mCursor:Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraActivity;->ImageNum:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2389
    .end local v6           #ImageNumFromMediaStore:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2395
    .end local v0           #mContentResolver:Landroid/content/ContentResolver;
    .end local v5           #mOrderClause:Ljava/lang/String;
    .end local v8           #imageName:Ljava/lang/String;
    .end local v9           #mCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2396
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "CAM_activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----getImageNumFromPreference--------Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2386
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v0       #mContentResolver:Landroid/content/ContentResolver;
    .restart local v5       #mOrderClause:Ljava/lang/String;
    .restart local v8       #imageName:Ljava/lang/String;
    .restart local v9       #mCursor:Landroid/database/Cursor;
    :cond_2
    const/4 v1, 0x0

    :try_start_5
    iput v1, p0, Lcom/android/camera/CameraActivity;->ImageNum:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2392
    :cond_3
    const/4 v1, 0x0

    :try_start_6
    iput v1, p0, Lcom/android/camera/CameraActivity;->ImageNum:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method public getIndependenceShutterButton()Lcom/android/camera/ShutterButton;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    .line 1046
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    goto :goto_0
.end method

.method public getIndependenceShutterButtonForPonorameModule()Lcom/android/camera/ShutterButton;
    .locals 1

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->ShowIndependenceShutterButton()V

    .line 1169
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    .line 1172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJpegCallbackFinishTime()J
    .locals 2

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getLastShutterMode()Lcom/android/camera/ShutterButton$ShutterMode;
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLastShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    return-object v0
.end method

.method public getOrientationCompensation()I
    .locals 1

    .prologue
    .line 2044
    iget v0, p0, Lcom/android/camera/CameraActivity;->mOrientationCompensation:I

    return v0
.end method

.method public getPauseRecordButton()Lcom/android/camera/ShutterButton;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPauseRecord:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method public getPictureDisplayedToJpegCallbackTime()J
    .locals 2

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getRecordVedioButton()Lcom/android/camera/ShutterButton;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method public getRecordVideoSwitcher()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getRotateOrientation()I
    .locals 2

    .prologue
    .line 2469
    iget v0, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    iput v0, p0, Lcom/android/camera/CameraActivity;->mRotateOrientation:I

    .line 2470
    iget v0, p0, Lcom/android/camera/CameraActivity;->mRotateOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2471
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2473
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/camera/CameraActivity;->mRotateOrientation:I

    .line 2479
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/CameraActivity;->mRotateOrientation:I

    return v0

    .line 2474
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2476
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraActivity;->mRotateOrientation:I

    goto :goto_0
.end method

.method public getScreenBrightness()I
    .locals 4

    .prologue
    .line 1296
    const/4 v1, 0x0

    .line 1297
    .local v1, nowBrightnessValue:I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1299
    .local v2, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1320
    :goto_0
    return v1

    .line 1301
    :catch_0
    move-exception v0

    .line 1302
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getSettingGridView()Lcom/android/camera/ui/BasicSettingGridView;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    return-object v0
.end method

.method public getShutterLag()J
    .locals 2

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShutterToPictureDisplayedTime()J
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getStopRecordButton()Lcom/android/camera/ShutterButton;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStopRecord:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method public getTHumbnailView()Lcom/android/camera/ui/ThumbnailSwitcher;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    return-object v0
.end method

.method public getTakePicuteButtonInVideoModule()Lcom/android/camera/ShutterButton;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method public getWhiteFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWhiteFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getWhiteFrameView()Lcom/android/camera/ui/WhiteFrameView;
    .locals 1

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

    return-object v0
.end method

.method public handleCameraSecureBox(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->getModuleHandler()Landroid/os/Handler;

    move-result-object v0

    .line 350
    .local v0, handle:Landroid/os/Handler;
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    if-eqz v1, :cond_2

    .line 351
    iget v1, p0, Lcom/android/camera/CameraActivity;->mReferencecount:I

    if-lez v1, :cond_0

    .line 353
    iput v2, p0, Lcom/android/camera/CameraActivity;->mReferencecount:I

    .line 355
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->enterCameraSecureBox(Z)V

    .line 356
    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    if-nez v1, :cond_1

    .line 359
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mSecureBoxAvailable:Z

    if-eqz v1, :cond_3

    .line 360
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->loginSecureBox()V

    goto :goto_0

    .line 362
    :cond_3
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 1

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 2515
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->hideGpsOnScreenIndicator()V

    .line 2517
    :cond_0
    return-void
.end method

.method public hideOtherRecordVideoSwitcher()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1088
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStopRecord:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStopRecord:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPauseRecord:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPauseRecord:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1098
    :cond_2
    return-void
.end method

.method public hideSwitcher()V
    .locals 0

    .prologue
    .line 1287
    return-void
.end method

.method public hideThumbnail()V
    .locals 2

    .prologue
    .line 1274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mbModuleAskHide:Z

    .line 1276
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1277
    return-void
.end method

.method public hideToastView()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2548
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mToastViewLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2549
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mToastViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2551
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRotateToastView:Lcom/android/camera/ui/RotateToastView;

    if-eqz v0, :cond_1

    .line 2552
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRotateToastView:Lcom/android/camera/ui/RotateToastView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2554
    :cond_1
    return-void
.end method

.method public hideUI()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1121
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1123
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraModeSwitcher:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->setVisibility(I)V

    .line 1135
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->hideThumbnail()V

    .line 1136
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1137
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1139
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraLeftBar;->dismissPupup()Z

    .line 1141
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_3

    .line 1144
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow(Z)Z

    .line 1150
    :cond_3
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 678
    const v0, 0x7f10002c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mShutterSwitcher:Landroid/view/View;

    .line 679
    const v0, 0x7f100025

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraLeftBar;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    .line 680
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/CameraLeftBar;->initSubBar(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 681
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraLeftBar;->setMenuListener(Lcom/android/camera/ui/CameraLeftBar$MenuListener;)V

    .line 685
    :cond_0
    const v0, 0x7f100037

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStopRecord:Lcom/android/camera/ShutterButton;

    .line 686
    const v0, 0x7f100036

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mPauseRecord:Lcom/android/camera/ShutterButton;

    .line 688
    const v0, 0x7f10003b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    .line 691
    const v0, 0x7f100033

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 693
    const v0, 0x7f100034

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewForAnimation:Lcom/android/camera/ui/RotateImageView;

    .line 694
    const v0, 0x7f100032

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ThumbnailSwitcher;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    .line 695
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    invoke-virtual {v0, v3}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 696
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setAnimateFirstView(Z)V

    .line 697
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ThumbnailSwitcher;->onShowAnimation(I)V

    .line 699
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewForAnimation:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->initThumbnailView()V

    .line 700
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->initThumbnailView()V

    .line 702
    const v0, 0x7f10002a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewForSlideAnimation:Lcom/android/camera/ui/RotateImageView;

    .line 703
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    .line 704
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/camera/CameraActivity;->init_orientation:I

    .line 705
    iput v2, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    .line 715
    :cond_1
    :goto_0
    const v0, 0x7f100023

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MyTextPreferenceButton;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    .line 716
    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BasicSettingGridView;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    .line 717
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/BasicSettingGridView;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 718
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BasicSettingGridView;->setOwnedBtn(Lcom/android/camera/ui/MyTextPreferenceButton;)V

    .line 723
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->initImageFilterDrawer()V

    .line 724
    const v0, 0x7f100030

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    .line 726
    const v0, 0x7f100031

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    .line 727
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    sget-object v1, Lcom/android/camera/ShutterButton$ShutterMode;->PHOTO:Lcom/android/camera/ShutterButton$ShutterMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setShutterMode(Lcom/android/camera/ShutterButton$ShutterMode;)V

    .line 728
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    sget-object v1, Lcom/android/camera/ShutterButton$ShutterMode;->VIDEO:Lcom/android/camera/ShutterButton$ShutterMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setShutterMode(Lcom/android/camera/ShutterButton$ShutterMode;)V

    .line 729
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mShutterListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 736
    const v0, 0x7f100024

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraModeSwitcher:Landroid/widget/FrameLayout;

    .line 737
    const v0, 0x7f100035

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    .line 739
    const v0, 0x7f10002e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraEffectContainer:Landroid/widget/FrameLayout;

    .line 741
    const v0, 0x7f100154

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mWhiteFrameLayout:Landroid/widget/FrameLayout;

    .line 742
    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/WhiteFrameView;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

    .line 743
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CameraActivity;->mStartupTime:J

    .line 744
    new-instance v0, Lcom/android/camera/LocationManager;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 746
    const v0, 0x7f100117

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    .line 747
    const v0, 0x7f100118

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->cover:Landroid/view/View;

    .line 749
    const v0, 0x7f100054

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mDynamicRootView:Landroid/widget/FrameLayout;

    .line 750
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->initThumbnailAnimation()V

    .line 751
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportedBootAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->initBootAnimation()V

    .line 754
    :cond_2
    return-void

    .line 706
    :cond_3
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 707
    iput v2, p0, Lcom/android/camera/CameraActivity;->init_orientation:I

    .line 708
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    goto/16 :goto_0
.end method

.method public initHardwarePlatform()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2064
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    .line 2065
    .local v0, HardwarePlatform:I
    const-string v1, "CAM_activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----initHardwarePlatform()---HardwarePlatform ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    sparse-switch v0, :sswitch_data_0

    .line 2081
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mSupportIndependentOutput:Z

    .line 2082
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mSupportNSL:Z

    .line 2083
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mSupportShotMode:Z

    .line 2086
    :goto_0
    const-string v1, "5892"

    invoke-static {v1}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "7610"

    invoke-static {v1}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2087
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mSupportNSL:Z

    .line 2088
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mSupportShotMode:Z

    .line 2090
    :cond_1
    return-void

    .line 2071
    :sswitch_0
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mSupportIndependentOutput:Z

    .line 2072
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mSupportNSL:Z

    .line 2073
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mSupportShotMode:Z

    goto :goto_0

    .line 2066
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public initThumbnailAnimation()V
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050018

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mAnim:Landroid/view/animation/Animation;

    .line 642
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/camera/CameraActivity$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$2;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 667
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewForSlideAnimation:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewForSlideAnimation:Lcom/android/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 669
    :cond_0
    return-void
.end method

.method protected installIntentFilter()V
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->installIntentFilter()V

    .line 1558
    return-void
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 2522
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2523
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInCameraApp()Z
    .locals 1

    .prologue
    .line 1333
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    return v0
.end method

.method public isPanoramaActivity()Z
    .locals 2

    .prologue
    .line 1941
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneCalling()Z
    .locals 6

    .prologue
    .line 1416
    const/4 v1, -0x1

    .line 1417
    .local v1, id:I
    const/4 v2, 0x0

    .line 1418
    .local v2, isOffhook:Z
    const/4 v3, 0x0

    .line 1420
    .local v3, isRinging:Z
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1421
    .local v4, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    .line 1422
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    .line 1423
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1428
    .end local v4           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 1429
    :cond_1
    const/4 v5, 0x1

    .line 1440
    :goto_1
    return v5

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1440
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/VideoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->isRecording()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureBoxAvailable()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureBoxAvailable:Z

    return v0
.end method

.method public loginSecureBox()V
    .locals 8

    .prologue
    .line 419
    const-string v5, "coolpadSystem"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 420
    .local v4, mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    invoke-virtual {v4}, Lcom/yulong/android/server/systeminterface/SystemManager;->isSecurityManagerPasswordExist()Z

    move-result v2

    .line 421
    .local v2, isExist:Z
    if-eqz v2, :cond_0

    .line 441
    :goto_0
    return-void

    .line 426
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v5}, Lcom/android/camera/CameraModule;->getModuleHandler()Landroid/os/Handler;

    move-result-object v1

    .line 427
    .local v1, handle:Landroid/os/Handler;
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/camera/CameraActivity;->enterCameraSecureBox(Z)V

    .line 428
    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0xb4

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 430
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v3, mIntent:Landroid/content/Intent;
    const-string v5, "com.yulong.android.seccenter"

    const-string v6, "com.yulong.android.createpassword.CreateSecurityPasswordStep1Activity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v1           #handle:Landroid/os/Handler;
    .end local v3           #mIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x2

    .line 1564
    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/app/PhotoPage;

    if-nez v0, :cond_0

    .line 1566
    const/4 p2, 0x0

    .line 1568
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1570
    if-ne p2, v1, :cond_1

    .line 1571
    const/4 p2, 0x0

    .line 1573
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/CameraModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 1574
    return-void
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onAnimationEnd()V

    .line 2497
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 2601
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootAnimationRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMoveDir1:Landroid/view/animation/Animation;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMoveDir2:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    .line 2602
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootAnimationRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2603
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootPrompt1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2604
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBootPrompt2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2606
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2612
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onAnimationStart()V

    .line 2501
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2596
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1731
    const-string v1, "CAM_activity"

    const-string v2, "-------onBackPressed()"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1742
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    .line 1743
    .local v0, StateCount:I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mFullScrren:Z

    if-nez v1, :cond_2

    .line 1744
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    .line 1756
    .end local v0           #StateCount:I
    :cond_1
    :goto_0
    return-void

    .line 1748
    .restart local v0       #StateCount:I
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_3

    .line 1749
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1751
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCameraSelected(I)Z
    .locals 8
    .parameter "i"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 917
    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v4, :cond_1

    .line 918
    sget-boolean v3, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v3, :cond_0

    .line 919
    invoke-static {v7}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    .line 992
    :cond_0
    :goto_0
    return v2

    .line 925
    :cond_1
    iget v4, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v4}, Lcom/android/camera/CameraModule;->isCaptureIntent()Z

    move-result v4

    if-nez v4, :cond_3

    .line 926
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 927
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    :cond_2
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 929
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 930
    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    :cond_3
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    if-eq p1, v2, :cond_4

    .line 936
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->canReuseScreenNail()Z

    move-result v0

    .line 937
    .local v0, canReuse:Z
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->keep()V

    .line 938
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->closeModule(Lcom/android/camera/CameraModule;)V

    .line 940
    iput-boolean v3, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 942
    if-nez p1, :cond_5

    iget v2, p0, Lcom/android/camera/CameraActivity;->mPreModuleIndex:I

    if-ne v2, v6, :cond_5

    iget v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    if-ne v2, v3, :cond_5

    .line 943
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    iput v2, p0, Lcom/android/camera/CameraActivity;->mPreModuleIndex:I

    .line 944
    iput v6, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    .line 952
    :goto_1
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    packed-switch v2, :pswitch_data_0

    .line 981
    :goto_2
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v2, v0}, Lcom/android/camera/CameraActivity;->openModule(Lcom/android/camera/CameraModule;Z)V

    .line 984
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 985
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 986
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 987
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget v4, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    invoke-interface {v2, v4}, Lcom/android/camera/CameraModule;->onOrientationChanged(I)V

    .line 988
    sget-boolean v2, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v2, :cond_4

    .line 989
    invoke-static {v7}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    .end local v0           #canReuse:Z
    :cond_4
    move v2, v3

    .line 992
    goto :goto_0

    .line 946
    .restart local v0       #canReuse:Z
    :cond_5
    iget v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    iput v2, p0, Lcom/android/camera/CameraActivity;->mPreModuleIndex:I

    .line 947
    iput p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    goto :goto_1

    .line 954
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->sMap:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    invoke-virtual {v2, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraModule;

    .line 955
    .local v1, module:Lcom/android/camera/CameraModule;
    if-eqz v1, :cond_6

    .line 956
    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_2

    .line 958
    :cond_6
    new-instance v2, Lcom/android/camera/VideoModule;

    invoke-direct {v2}, Lcom/android/camera/VideoModule;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_2

    .line 963
    .end local v1           #module:Lcom/android/camera/CameraModule;
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->sMap:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    invoke-virtual {v2, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraModule;

    .line 964
    .restart local v1       #module:Lcom/android/camera/CameraModule;
    if-eqz v1, :cond_7

    .line 965
    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_2

    .line 967
    :cond_7
    new-instance v2, Lcom/android/camera/PhotoModule;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_2

    .line 972
    .end local v1           #module:Lcom/android/camera/CameraModule;
    :pswitch_2
    new-instance v2, Lcom/android/camera/PanoramaModule;

    invoke-direct {v2}, Lcom/android/camera/PanoramaModule;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_2

    .line 976
    :pswitch_3
    invoke-static {}, Lcom/android/gallery3d/util/LightCycleHelper;->createPanoramaModule()Lcom/android/camera/CameraModule;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_2

    .line 952
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCaptureModeClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->showPopupWindow()V

    .line 2360
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onCaptureTextureCopied()V

    .line 1914
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "config"

    .prologue
    .line 1338
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1339
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1341
    .local v1, appViewVisiblity:I
    const v9, 0x7f100028

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1343
    .local v0, appRoot:Landroid/view/ViewGroup;
    const v9, 0x7f10002c

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1344
    .local v2, cameraControlsView:Landroid/view/View;
    const v9, 0x7f100025

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1345
    .local v4, cameraleftBarView:Landroid/view/View;
    const v9, 0x7f1000a2

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1346
    .local v7, list_area:Landroid/view/View;
    const v9, 0x7f10003e

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1347
    .local v3, camera_sub_bar:Landroid/view/View;
    const v9, 0x7f1000fc

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1348
    .local v8, preview_effect:Landroid/view/View;
    const v9, 0x7f100057

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1349
    .local v5, grid_area:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1350
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1351
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1352
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1353
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1354
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1356
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 1357
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f040014

    invoke-virtual {v6, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1358
    const v9, 0x7f040056

    invoke-virtual {v6, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1359
    const v9, 0x7f040011

    invoke-virtual {v6, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1360
    const v9, 0x7f040015

    invoke-virtual {v6, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1361
    const v9, 0x7f040030

    invoke-virtual {v6, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1362
    const v9, 0x7f040023

    invoke-virtual {v6, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1364
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->init()V

    .line 1365
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->updateIconUiByOrientation()V

    .line 1366
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/camera/CameraActivity;->isInitialized:Z

    .line 1367
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->updateRotateOrientation()V

    .line 1368
    iget-boolean v9, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v9, :cond_2

    .line 1369
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 1373
    :goto_0
    const v9, 0x7f100023

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/MyTextPreferenceButton;

    iput-object v9, p0, Lcom/android/camera/CameraActivity;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    .line 1375
    iget-object v9, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v9, p1}, Lcom/android/camera/CameraModule;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1376
    iget-object v9, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v9}, Lcom/android/camera/CameraModule;->isCaptureIntent()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/camera/ActivityBase;->updateThumbnailView(Z)V

    .line 1377
    :cond_0
    const v9, 0x7f1000b6

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 1378
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    if-eqz v9, :cond_1

    .line 1379
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    if-eqz v1, :cond_1

    .line 1381
    iget-object v9, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1384
    :cond_1
    return-void

    .line 1371
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->hideUI()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 502
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 503
    const-string v1, "clickCameraIcon"

    const-string v2, "click"

    invoke-static {p0, v1, v2}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 505
    const v1, 0x7f040012

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setContentView(I)V

    .line 507
    const v1, 0x7f100028

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mUiRootView:Landroid/widget/RelativeLayout;

    .line 508
    const v1, 0x7f100029

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    .line 509
    const v1, 0x7f100097

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mFocusIndicatorContainer:Landroid/widget/RelativeLayout;

    .line 510
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->initHardwarePlatform()V

    .line 512
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->getScreenHeightAndWidth()V

    .line 513
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->init()V

    .line 514
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.camera.VideoCamera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 518
    :cond_0
    new-instance v1, Lcom/android/camera/VideoModule;

    invoke-direct {v1}, Lcom/android/camera/VideoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 519
    iput v4, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    .line 520
    sget-object v1, Lcom/android/camera/ShutterButton$ShutterMode;->VIDEO:Lcom/android/camera/ShutterButton$ShutterMode;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    .line 528
    :goto_0
    sput-boolean v3, Lcom/android/camera/ProductConfig;->ishasImageNumber:Z

    .line 529
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->isHasImageNum:Z

    if-eqz v1, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getImageNumFromPreference()V

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-interface {v1, p0, v2, v4, v4}, Lcom/android/camera/CameraModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;ZZ)V

    .line 535
    iget v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    if-ne v1, v4, :cond_2

    .line 537
    const-string v1, "CAM_activity"

    const-string v2, "isPhoneCalling 11--000000"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isPhoneCalling()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 540
    const-string v1, "CAM_activity"

    const-string v2, "isPhoneCalling 11--111111"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iput-boolean v4, p0, Lcom/android/camera/CameraActivity;->mCallingVideoRecorderCloseAudio:Z

    .line 548
    :cond_2
    new-instance v1, Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-direct {v1, p0, p0}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;-><init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    .line 549
    new-instance v1, Ljava/util/WeakHashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->sMap:Ljava/util/WeakHashMap;

    .line 550
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->sMap:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->installIntentFilter()V

    .line 553
    invoke-virtual {p0, v4}, Lcom/android/camera/ActivityBase;->setMenuKey(Z)V

    .line 554
    return-void

    .line 522
    :cond_3
    new-instance v1, Lcom/android/camera/PhotoModule;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 523
    iput v3, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    .line 524
    sget-object v1, Lcom/android/camera/ShutterButton$ShutterMode;->PHOTO:Lcom/android/camera/ShutterButton$ShutterMode;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1515
    const-string v0, "CAM_activity"

    const-string v1, ">>>onDestroy"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 1529
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1533
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->resetPreferenceSettings()V

    .line 1534
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->isHasImageNum:Z

    if-eqz v0, :cond_1

    .line 1535
    iget v0, p0, Lcom/android/camera/CameraActivity;->ImageNum:I

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->updateImageNumToPreference(I)V

    .line 1537
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onDestroy()V

    .line 1539
    return-void
.end method

.method protected onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    sget-object v1, Lcom/android/camera/ShutterButton$ShutterMode;->VIDEO:Lcom/android/camera/ShutterButton$ShutterMode;

    if-ne v0, v1, :cond_0

    .line 1501
    const-string v0, "CAM_activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>skip the onFullScreenChanged in video recoding status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :goto_0
    return-void

    .line 1504
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onFullScreenChanged(Z)V

    .line 1505
    if-eqz p1, :cond_1

    .line 1506
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 1510
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onFullScreenChanged(Z)V

    goto :goto_0

    .line 1508
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->hideUI()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/CameraModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/CameraModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuHide()V
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 2060
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onMenuHide()V

    .line 2061
    :cond_0
    return-void
.end method

.method public onMenuShowed()V
    .locals 2

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onMenuShowed()V

    .line 2052
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_1

    .line 2053
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow(Z)Z

    .line 2054
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1549
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1550
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->clearActivityResult()V

    .line 1551
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1388
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1389
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 1391
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1394
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_1

    .line 1395
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocationManager:Lcom/android/camera/LocationManager;

    iput-boolean v2, v1, Lcom/android/camera/LocationManager;->fristStart:Z

    .line 1398
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 1399
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 1400
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 1402
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    if-eqz v1, :cond_2

    .line 1403
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    invoke-interface {v1}, Lcom/android/camera/SoundClips$Player;->release()V

    .line 1404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 1406
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    if-eqz v1, :cond_3

    .line 1407
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 1408
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->getModuleHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/GalleryApp;->setCameraModeHander(Landroid/os/Handler;)V

    .line 1412
    .end local v0           #app:Lcom/android/gallery3d/app/GalleryApp;
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->TickCounterPowersaving(Z)V

    .line 1413
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->uninitCoverReceiverFliter()V

    .line 1414
    return-void

    .line 1410
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->stopCameraService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPreviewTextureCopied()V

    .line 1909
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1453
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 1454
    iput v3, p0, Lcom/android/camera/CameraActivity;->mCoverState:I

    .line 1460
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->QueryRecording()V

    .line 1463
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 1464
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->isCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getLastThumbnail()V

    .line 1465
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 1468
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 1472
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 1473
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    .line 1474
    invoke-static {p0}, Lcom/android/camera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 1476
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->initCoverReceiverFliter()V

    .line 1483
    iget v1, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->isInitialized:Z

    if-nez v1, :cond_1

    .line 1484
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 1485
    .local v0, orientation:I
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    .line 1486
    const/16 v1, 0x10e

    iput v1, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    .line 1494
    .end local v0           #orientation:I
    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/CameraActivity;->TickCounterPowersaving(Z)V

    .line 1496
    return-void

    .line 1487
    .restart local v0       #orientation:I
    :cond_2
    if-nez v0, :cond_1

    .line 1488
    iput v2, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    goto :goto_0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/CameraModule;->onSingleTapUp(Landroid/view/View;II)V

    .line 1580
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1542
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onStop()V

    .line 1543
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onStop()V

    .line 1544
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->clearTasks()V

    .line 1545
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1989
    const-string v0, "CAM_activity"

    const-string v1, "onThumbnailClicked 1"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->isCanGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    if-nez v0, :cond_0

    .line 1991
    const-string v0, "clickThumbnailIcon"

    const-string v1, "click"

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1992
    const-string v0, "CAM_activity"

    const-string v1, "onThumbnailClicked 2"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->LaunchGallery()V

    .line 1995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mDelayLaunchGalleyr3d:Z

    .line 2002
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 1815
    const-string v1, "CAM_activity"

    const-string v2, ">>>>>>>>>>>>>>>>>>>>>> onsingleTapUp"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1817
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3, v3}, Lcom/android/camera/CameraModule;->onSingleTapUp(Landroid/view/View;II)V

    .line 1820
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeIndependateButton()V
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    .line 1180
    :cond_0
    return-void
.end method

.method public resizeForCameraSnail(II)V
    .locals 15
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2095
    sget-boolean v12, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v12, :cond_0

    .line 2097
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v12, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v12

    iput v12, p0, Lcom/android/camera/CameraActivity;->oldScreenNailLayoutHeight:I

    .line 2098
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v12, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v12

    iput v12, p0, Lcom/android/camera/CameraActivity;->oldScreenNailLayoutWidth:I

    .line 2102
    :cond_0
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 2103
    .local v0, DispalyRotation:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 2104
    .local v5, ScreenWidth:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 2106
    .local v4, ScreenHeight:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 2107
    .local v2, LayoutWidth:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 2109
    .local v1, LayoutHeight:I
    move/from16 v7, p1

    .line 2110
    .local v7, VideoWidth:I
    move/from16 v6, p2

    .line 2113
    .local v6, VideoHeight:I
    rem-int/lit16 v12, v0, 0xb4

    if-nez v12, :cond_1

    .line 2114
    move v10, v2

    .line 2115
    .local v10, tmp:I
    move v2, v1

    .line 2116
    move v1, v10

    .line 2119
    .end local v10           #tmp:I
    :cond_1
    if-le v7, v6, :cond_5

    .line 2120
    int-to-float v12, v7

    int-to-float v13, v6

    div-float v8, v12, v13

    .line 2125
    .local v8, aspectRatio:F
    :goto_0
    if-le v2, v1, :cond_6

    .line 2126
    int-to-float v12, v1

    mul-float/2addr v12, v8

    float-to-int v2, v12

    .line 2132
    :goto_1
    sget-boolean v12, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v12, :cond_2

    .line 2133
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v12, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v12, v1, v2}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 2150
    :cond_2
    sget-boolean v12, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v12, :cond_4

    .line 2151
    const/4 v9, 0x0

    .line 2152
    .local v9, hpadding:I
    const/4 v11, 0x0

    .line 2153
    .local v11, vpadding:I
    if-le v1, v2, :cond_3

    .line 2154
    move v10, v2

    .line 2155
    .restart local v10       #tmp:I
    move v2, v1

    .line 2156
    move v1, v10

    .line 2159
    .end local v10           #tmp:I
    :cond_3
    rem-int/lit16 v12, v0, 0xb4

    if-eqz v12, :cond_7

    .line 2160
    sub-int v12, v5, v2

    div-int/lit8 v9, v12, 0x2

    .line 2161
    sub-int v12, v4, v1

    div-int/lit8 v11, v12, 0x2

    .line 2162
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2163
    .local v3, Params:Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2164
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2165
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2166
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2167
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v12, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2171
    iget-object v12, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    add-int v13, v9, v2

    add-int v14, v11, v1

    invoke-interface {v12, v9, v11, v13, v14}, Lcom/android/camera/CameraModule;->setFocusRect(IIII)V

    .line 2195
    .end local v3           #Params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v9           #hpadding:I
    .end local v11           #vpadding:I
    :cond_4
    :goto_2
    return-void

    .line 2122
    .end local v8           #aspectRatio:F
    :cond_5
    int-to-float v12, v6

    int-to-float v13, v7

    div-float v8, v12, v13

    .restart local v8       #aspectRatio:F
    goto :goto_0

    .line 2129
    :cond_6
    int-to-float v12, v2

    mul-float/2addr v12, v8

    float-to-int v1, v12

    .line 2130
    goto :goto_1

    .line 2173
    .restart local v9       #hpadding:I
    .restart local v11       #vpadding:I
    :cond_7
    sub-int v12, v4, v2

    div-int/lit8 v9, v12, 0x2

    .line 2174
    sub-int v12, v5, v1

    div-int/lit8 v11, v12, 0x2

    .line 2176
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2177
    .restart local v3       #Params:Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2178
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2179
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2180
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2181
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v12, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2184
    iget-object v12, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    add-int v13, v11, v1

    add-int v14, v9, v2

    invoke-interface {v12, v11, v9, v13, v14}, Lcom/android/camera/CameraModule;->setFocusRect(IIII)V

    goto :goto_2
.end method

.method public setBrightness()V
    .locals 6

    .prologue
    const/high16 v5, 0x437f

    .line 1325
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getScreenBrightness()I

    move-result v0

    .line 1326
    .local v0, current:I
    mul-int/lit16 v2, v0, 0x9b

    int-to-float v2, v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/android/camera/CameraActivity;->mAdjustBrightness:I

    .line 1327
    const-string v2, "CAM_activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightness :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraActivity;->mAdjustBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1329
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/android/camera/CameraActivity;->mAdjustBrightness:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1330
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1331
    return-void
.end method

.method public setCameraSwitcherEnabled(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 1104
    return-void
.end method

.method public setCpuClientAfterStopPreview()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public setCpuClientBeforeStartPreview()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public setEnterOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 2449
    iput p1, p0, Lcom/android/camera/CameraActivity;->mEnterOrientation:I

    .line 2450
    sput p1, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    .line 2451
    return-void
.end method

.method public setStartupTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 2329
    iput-wide p1, p0, Lcom/android/camera/CameraActivity;->mStartupTime:J

    .line 2330
    return-void
.end method

.method public showCameraModule(Lcom/android/camera/ShutterButton$ShutterMode;Z)V
    .locals 7
    .parameter "mode"
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2243
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    if-eq v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v2, :cond_2

    .line 2244
    :cond_0
    const-string v2, "CAM_activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>skip the showCameraModule to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    :cond_1
    :goto_0
    return-void

    .line 2249
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->canReuseScreenNail()Z

    move-result v0

    .line 2250
    .local v0, canReuse:Z
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->keep()V

    .line 2251
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->closeModule(Lcom/android/camera/CameraModule;)V

    .line 2253
    iput-boolean v5, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 2254
    if-nez v0, :cond_3

    .line 2255
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v2, :cond_3

    .line 2256
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 2257
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2262
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    sget-object v3, Lcom/android/camera/ShutterButton$ShutterMode;->PHOTO:Lcom/android/camera/ShutterButton$ShutterMode;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mLastShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    sget-object v3, Lcom/android/camera/ShutterButton$ShutterMode;->PANORAMA:Lcom/android/camera/ShutterButton$ShutterMode;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    sget-object v3, Lcom/android/camera/ShutterButton$ShutterMode;->VIDEO:Lcom/android/camera/ShutterButton$ShutterMode;

    if-ne v2, v3, :cond_5

    .line 2265
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mLastShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    .line 2266
    sget-object v2, Lcom/android/camera/ShutterButton$ShutterMode;->PANORAMA:Lcom/android/camera/ShutterButton$ShutterMode;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    .line 2271
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->sMap:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraModule;

    .line 2272
    .local v1, module:Lcom/android/camera/CameraModule;
    if-eqz v1, :cond_6

    .line 2273
    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2291
    :goto_2
    if-nez p2, :cond_7

    .line 2292
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v2, v0}, Lcom/android/camera/CameraActivity;->openModule(Lcom/android/camera/CameraModule;Z)V

    .line 2302
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 2303
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 2305
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 2308
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget v3, p0, Lcom/android/camera/CameraActivity;->mOrientation:I

    invoke-interface {v2, v3}, Lcom/android/camera/CameraModule;->onOrientationChanged(I)V

    .line 2310
    if-nez p2, :cond_1

    .line 2311
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/CameraActivity;->performShutterButtonClick(Lcom/android/camera/ShutterButton$ShutterMode;Lcom/android/camera/CameraModule;)V

    goto :goto_0

    .line 2268
    .end local v1           #module:Lcom/android/camera/CameraModule;
    :cond_5
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mLastShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    .line 2269
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    goto :goto_1

    .line 2275
    .restart local v1       #module:Lcom/android/camera/CameraModule;
    :cond_6
    sget-object v2, Lcom/android/camera/CameraActivity$5;->$SwitchMap$com$android$camera$ShutterButton$ShutterMode:[I

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2289
    :goto_4
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->sMap:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2277
    :pswitch_0
    new-instance v2, Lcom/android/camera/VideoModule;

    invoke-direct {v2}, Lcom/android/camera/VideoModule;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_4

    .line 2280
    :pswitch_1
    new-instance v2, Lcom/android/camera/PhotoModule;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_4

    .line 2283
    :pswitch_2
    new-instance v2, Lcom/android/camera/PanoramaModule;

    invoke-direct {v2}, Lcom/android/camera/PanoramaModule;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_4

    .line 2286
    :pswitch_3
    invoke-static {}, Lcom/android/gallery3d/util/LightCycleHelper;->createPanoramaModule()Lcom/android/camera/CameraModule;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    goto :goto_4

    .line 2295
    :cond_7
    iput-boolean v6, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 2296
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-interface {v2, p0, v3, v0, v6}, Lcom/android/camera/CameraModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;ZZ)V

    .line 2297
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v2, :cond_4

    .line 2298
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    goto :goto_3

    .line 2275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 1
    .parameter "hasSignal"

    .prologue
    .line 2506
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 2507
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->showGpsOnScreenIndicator(Z)V

    .line 2509
    :cond_0
    return-void
.end method

.method public showOtherRecordVideoSwitcher()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1078
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStopRecord:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPauseRecord:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1081
    const v0, 0x7f100038

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    .line 1082
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    const v0, 0x7f10003a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStopRecord:Lcom/android/camera/ShutterButton;

    .line 1084
    const v0, 0x7f100039

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mPauseRecord:Lcom/android/camera/ShutterButton;

    .line 1085
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1086
    return-void
.end method

.method public showSwitcher()V
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->needsSwitcher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    :cond_0
    return-void
.end method

.method public showThumbnail()V
    .locals 2

    .prologue
    .line 1279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mbModuleAskHide:Z

    .line 1281
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1283
    return-void
.end method

.method public showToastView(Ljava/lang/String;JII)V
    .locals 6
    .parameter "text"
    .parameter "duration"
    .parameter "rotateOrientation"
    .parameter "passOrientation"

    .prologue
    const/4 v1, 0x0

    .line 2531
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mToastViewLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 2532
    const v0, 0x7f100144

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mToastViewLayout:Landroid/widget/FrameLayout;

    .line 2534
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRotateToastView:Lcom/android/camera/ui/RotateToastView;

    if-nez v0, :cond_1

    .line 2535
    const v0, 0x7f100132

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateToastView;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mRotateToastView:Lcom/android/camera/ui/RotateToastView;

    .line 2537
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mToastViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2538
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRotateToastView:Lcom/android/camera/ui/RotateToastView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2539
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRotateToastView:Lcom/android/camera/ui/RotateToastView;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/RotateToastView;->showMessage(Ljava/lang/String;JII)V

    .line 2541
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$4;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$4;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2546
    return-void
.end method

.method public showUI()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1190
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1191
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mFullScrren:Z

    .line 1193
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraModeSwitcher:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1196
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_2

    .line 1197
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1199
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1206
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStopRecord:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStopRecord:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPauseRecord:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPauseRecord:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1216
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_3

    .line 1217
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->setVisibility(I)V

    .line 1222
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1227
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1228
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showThumbnail()V

    .line 1229
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->updateThumbnailView(Z)V

    .line 1232
    :cond_4
    return-void

    .line 1201
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    if-nez v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraModeSwitcher:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1204
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1886
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CHOOSER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1891
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1898
    :goto_0
    return-void

    .line 1894
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/ProxyLauncher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1895
    .local v0, proxyIntent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1896
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1897
    invoke-super {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 1901
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public swapCaptureIntentMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1234
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraModeSwitcher:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1237
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1240
    const v0, 0x7f10003c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceContainer:Landroid/widget/FrameLayout;

    .line 1241
    const v0, 0x7f10003d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    .line 1242
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mIndependenceShutterBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1246
    :cond_0
    return-void
.end method

.method public updateCameraAppView()V
    .locals 1

    .prologue
    .line 1930
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 1931
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->updateCameraAppView()V

    .line 1932
    return-void
.end method

.method public updateImageNumToPreference(I)V
    .locals 4
    .parameter "mImageNum"

    .prologue
    .line 2403
    const-string v1, "CAM_activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----updateImageNumToPreference-----------ImageNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->photoIDPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2405
    .local v0, sharedPreEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ImageNum"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2406
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2407
    return-void
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;Z)V
    .locals 2
    .parameter "t"
    .parameter "bShow"

    .prologue
    .line 1256
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1257
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 1258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mbModuleAskHide:Z

    .line 1260
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    .line 1264
    :cond_0
    if-eqz p2, :cond_1

    .line 1265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->updateThumbnailView(Z)V

    .line 1267
    :cond_1
    monitor-exit v1

    .line 1268
    return-void

    .line 1267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
