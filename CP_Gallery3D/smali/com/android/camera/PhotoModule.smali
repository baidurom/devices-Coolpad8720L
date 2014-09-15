.class public Lcom/android/camera/PhotoModule;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/GifCapture$OperationListener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/SelfCamera$Listener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;
.implements Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$MyCountDownTimer;,
        Lcom/android/camera/PhotoModule$MyBroadcastReceiver;,
        Lcom/android/camera/PhotoModule$ImageNamer;,
        Lcom/android/camera/PhotoModule$UriRequest;,
        Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;,
        Lcom/android/camera/PhotoModule$AutoFocusCallback;,
        Lcom/android/camera/PhotoModule$JpegPictureCallback;,
        Lcom/android/camera/PhotoModule$RawPictureCallback;,
        Lcom/android/camera/PhotoModule$PostViewPictureCallback;,
        Lcom/android/camera/PhotoModule$ShutterCallback;,
        Lcom/android/camera/PhotoModule$CameraErrorCallback;,
        Lcom/android/camera/PhotoModule$ZoomChangeListener;,
        Lcom/android/camera/PhotoModule$MainHandler;,
        Lcom/android/camera/PhotoModule$CameraStartUpThread;
    }
.end annotation


# static fields
.field public static isNightshotSelect:Z

.field private static mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;


# instance fields
.field private afd:Landroid/content/res/AssetFileDescriptor;

.field private continuemodeTimer:Ljava/util/Timer;

.field private enterFocusSeek:Z

.field filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

.field private focusPositionInt:I

.field public isAutoForceLimited:Z

.field private isEffectOver:Z

.field private isKeyVolumeBeingTrigger:Z

.field private volatile isRegisterReceiver:Z

.field private isShowLeftBar:Z

.field private isTaskRunning:Z

.field limitedStrArray:[Ljava/lang/String;

.field private lowBatteryForFlashLight:Z

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAnimation:Z

.field private mAnimatorType:I

.field private final mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field private mAutoSwitchToBeautyShot:Z

.field private volatile mAutoTestRegister:Z

.field private mAwbLockSupported:Z

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

.field mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

.field private mCameraState:I

.field private volatile mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mCaptureStartTime:J

.field private mColorEffect:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mContinueCaptureCount:I

.field private final mContinuousShotModeCountdownMilliSec:J

.field private mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;

.field private mCropValue:Ljava/lang/String;

.field private mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

.field private mDelayClock:Landroid/widget/TextView;

.field private mDelaySwitchCaptureMode:Z

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewHeightOld:I

.field private mDesiredPreviewWidth:I

.field private mDesiredPreviewWidthOld:I

.field private mDiedTimes:I

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoContineCaptureRunnable:Ljava/lang/Runnable;

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private mEffectService:Landroid/media/ImageEffectService;

.field private mEnterNightshot:Ljava/lang/String;

.field private final mErrorCallback:Lcom/android/camera/PhotoModule$CameraErrorCallback;

.field private mFaceDetectionStarted:Z

.field private mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFirstTimeInitialized:Z

.field private mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

.field private mFocusAreaSupported:Z

.field private mFocusIndicatorContainer:Landroid/widget/RelativeLayout;

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mFocusSeekBar:Landroid/widget/SeekBar;

.field private mFocusStartTime:J

.field private final mFormatter:Ljava/util/Formatter;

.field private final mFormatterArgs:[Ljava/lang/Object;

.field private mFullScreenChange:Z

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mGesturesTouch:B

.field private mGifCapture:Lcom/android/camera/GifCapture;

.field private mGridLine:Lcom/android/camera/ui/GridLine;

.field private final mHandler:Landroid/os/Handler;

.field private mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

.field private mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

.field private mIndicatorBtn:Lcom/android/camera/ShutterButton;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsImageCaptureIntent:Z

.field private mIsImageSaving:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field private mModuleAction:B

.field private mMutablePostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

.field private mNSLBufferNeeded:I

.field private mNSLBurstCount:I

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPauseRecordButton:Lcom/android/camera/ShutterButton;

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPictureSizeForGifCapture:Ljava/lang/String;

.field mPictureSizeOverride:Ljava/lang/String;

.field private mPlugInMode:Ljava/lang/String;

.field private mPluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/ImageEffectProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mPopup:Lcom/android/camera/ui/AbstractSettingList;

.field private final mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPostponeNightshot:Z

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mPreviewFPSRange:[I

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordVideoBtn:Lcom/android/camera/ShutterButton;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewModuleLayout:Landroid/view/View;

.field private mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

.field private mRootView:Landroid/view/View;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Ljava/lang/String;

.field private mSelfCamera:Lcom/android/camera/SelfCamera;

.field private mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

.field mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

.field private final mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field private mShutterListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

.field public mShutterToPictureDisplayedTime:J

.field private mSnapshotOnIdle:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mStopRecordButton:Lcom/android/camera/ShutterButton;

.field private mSurfaceTexture:Ljava/lang/Object;

.field private mTakePhotoBtn:Lcom/android/camera/ShutterButton;

.field private mUpdateSet:I

.field private mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

.field private mWantStartPlayContinueSound:Z

.field private mWhiteBalance:Ljava/lang/String;

.field private mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

.field private mWhiteFrameLayout:Landroid/widget/FrameLayout;

.field private mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

.field private mZoomMax:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

.field private mZoomValue:I

.field private mbAntiShaking:Z

.field private mbPostCaptureAlertShowed:Z

.field private mbPreviewByPostView:Z

.field private mbacketCapture:Z

.field private mpreShot2ShotMode:Z

.field private oldCaptureMode:Ljava/lang/String;

.field private oldEffectModeStr:Ljava/lang/String;

.field private selfCameraHasStart:Z

.field private timeLastSmileShot:J

.field private timeSmileBegin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/PhotoModule;->isNightshotSelect:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x258

    const/4 v8, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z

    .line 250
    iput v7, p0, Lcom/android/camera/PhotoModule;->mAnimatorType:I

    .line 260
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    .line 262
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mbPreviewByPostView:Z

    .line 263
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mbPostCaptureAlertShowed:Z

    .line 271
    iput v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 274
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mWantStartPlayContinueSound:Z

    .line 285
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mbacketCapture:Z

    .line 308
    iput v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 311
    iput v7, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    .line 324
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->enterFocusSeek:Z

    .line 325
    iput v7, p0, Lcom/android/camera/PhotoModule;->focusPositionInt:I

    .line 331
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 336
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mFullScreenChange:Z

    .line 341
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mPreviewFPSRange:[I

    .line 352
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->isTaskRunning:Z

    .line 359
    new-instance v0, Lcom/android/camera/YLParametersHelper;

    invoke-direct {v0}, Lcom/android/camera/YLParametersHelper;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    .line 363
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    .line 365
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    .line 380
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mIsImageSaving:Z

    .line 385
    iput v1, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    .line 386
    iput v1, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    .line 387
    iput v1, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidthOld:I

    .line 388
    iput v1, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeightOld:I

    .line 389
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mPictureSizeForGifCapture:Ljava/lang/String;

    .line 393
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mAnimation:Z

    .line 394
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->timeLastSmileShot:J

    .line 395
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->timeSmileBegin:J

    .line 396
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->continuemodeTimer:Ljava/util/Timer;

    .line 397
    iput v7, p0, Lcom/android/camera/PhotoModule;->mDiedTimes:I

    .line 398
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mpreShot2ShotMode:Z

    .line 403
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;

    .line 411
    new-instance v0, Lcom/android/camera/PhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$1;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 417
    new-instance v0, Lcom/android/camera/PhotoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$2;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDoContineCaptureRunnable:Ljava/lang/Runnable;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    .line 424
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFormatter:Ljava/util/Formatter;

    .line 425
    new-array v0, v8, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFormatterArgs:[Ljava/lang/Object;

    .line 457
    iput v7, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 458
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 463
    const-string v0, "invalid"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mEnterNightshot:Ljava/lang/String;

    .line 464
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mPostponeNightshot:Z

    .line 466
    new-instance v0, Lcom/android/camera/PhotoModule$ShutterCallback;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/PhotoModule$ShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

    .line 467
    new-instance v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    .line 468
    new-instance v0, Lcom/android/camera/PhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    .line 469
    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    .line 470
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 473
    new-instance v0, Lcom/android/camera/PhotoModule$CameraErrorCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$CameraErrorCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/PhotoModule$CameraErrorCallback;

    .line 502
    new-instance v0, Lcom/android/camera/PhotoModule$MainHandler;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/PhotoModule$MainHandler;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    .line 507
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mAutoTestRegister:Z

    .line 508
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->isRegisterReceiver:Z

    .line 511
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 517
    iput v8, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    .line 521
    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownMilliSec:J

    .line 522
    new-instance v0, Lcom/android/camera/PhotoModule$MyCountDownTimer;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PhotoModule$MyCountDownTimer;-><init>(Lcom/android/camera/PhotoModule;JJ)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;

    .line 526
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMutablePostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    .line 535
    const/16 v0, 0x1f

    iput-byte v0, p0, Lcom/android/camera/PhotoModule;->mModuleAction:B

    .line 536
    iput-byte v8, p0, Lcom/android/camera/PhotoModule;->mGesturesTouch:B

    .line 537
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->isShowLeftBar:Z

    .line 538
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->isEffectOver:Z

    .line 539
    new-instance v0, Ljava/lang/String;

    const-string v1, "none"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    .line 541
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mAutoSwitchToBeautyShot:Z

    .line 542
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mDelaySwitchCaptureMode:Z

    .line 543
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPluginMap:Ljava/util/HashMap;

    .line 3216
    const-string v0, "4208x2368"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPictureSizeOverride:Ljava/lang/String;

    .line 3217
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->isAutoForceLimited:Z

    .line 3218
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "beautyshot"

    aput-object v1, v0, v7

    const-string v1, "nightshot"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "bestpick"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hdr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pickclear"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->limitedStrArray:[Ljava/lang/String;

    .line 3872
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4893
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->isKeyVolumeBeingTrigger:Z

    .line 6105
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    .line 6431
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->oldEffectModeStr:Ljava/lang/String;

    .line 6432
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->oldCaptureMode:Ljava/lang/String;

    .line 7535
    new-instance v0, Lcom/android/camera/PhotoModule$17;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$17;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    return-void

    :cond_0
    move-object v0, v6

    .line 470
    goto/16 :goto_0
.end method

.method private AutoSwitchToNightShot(Ljava/lang/String;)V
    .locals 9
    .parameter "AutoSwitch"

    .prologue
    const-wide/16 v2, 0x7d0

    const/4 v8, 0x1

    .line 6147
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_flashmode_key"

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0285

    invoke-virtual {v5, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6156
    .local v6, flashMode:Ljava/lang/String;
    const-string v0, "off"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6157
    const-string v0, "CAM_PhotoModule"

    const-string v1, ">>>>skip the AutoSwitchToNightShot while flash is not off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6193
    :cond_0
    :goto_0
    return-void

    .line 6161
    :cond_1
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e02f7

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getOrientationCompensation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/CameraActivity;->showToastView(Ljava/lang/String;JII)V

    .line 6164
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v8, v0, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    .line 6165
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "nightshot"

    iput-object v1, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 6166
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_capturemode_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    invoke-static {v0, v1, v2, v8}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6169
    const-string v0, "nightshot"

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->loadImageEffectPlugin(Ljava/lang/String;)V

    .line 6170
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByCaptureMode()V

    .line 6171
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_2

    .line 6174
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOverrideSetting()V

    .line 6175
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V

    goto :goto_0

    .line 6177
    :cond_3
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "nightshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/PhotoModule;->isNightshotSelect:Z

    if-nez v0, :cond_0

    .line 6179
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e02f8

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getOrientationCompensation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/CameraActivity;->showToastView(Ljava/lang/String;JII)V

    .line 6180
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v8, v0, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    .line 6181
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "none"

    iput-object v1, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 6182
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_capturemode_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    invoke-static {v0, v1, v2, v8}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6185
    const-string v0, "none"

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->loadImageEffectPlugin(Ljava/lang/String;)V

    .line 6186
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByCaptureMode()V

    .line 6187
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_4

    .line 6190
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOverrideSetting()V

    .line 6191
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V

    goto/16 :goto_0
.end method

.method private ForceUpdateShot2ShotThumb(Landroid/net/Uri;)V
    .locals 14
    .parameter "uri"

    .prologue
    .line 1854
    if-nez p1, :cond_0

    .line 1855
    const-string v10, "CAM_PhotoModule"

    const-string v11, ">>>>>invalid input for ForceUpdateShot2ShotThumb"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_0
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 1858
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    if-eqz v0, :cond_3

    .line 1859
    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/GalleryApp;->getJpegData(Landroid/net/Uri;)[B

    move-result-object v3

    .line 1862
    .local v3, jpegdata:[B
    if-nez v3, :cond_1

    .line 1863
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 1866
    :cond_1
    if-eqz v3, :cond_3

    .line 1868
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 1869
    .local v7, s:Landroid/hardware/Camera$Size;
    invoke-static {v3}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v5

    .line 1871
    .local v5, orientation:I
    iget v10, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    add-int/2addr v10, v5

    rem-int/lit16 v10, v10, 0xb4

    if-nez v10, :cond_4

    .line 1872
    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    .line 1873
    .local v9, width:I
    iget v1, v7, Landroid/hardware/Camera$Size;->height:I

    .line 1879
    .local v1, height:I
    :goto_0
    int-to-double v10, v9

    iget-object v12, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v12, v12, Lcom/android/camera/CameraActivity;->mThumbnailViewWidth:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    .line 1880
    .local v6, ratio:I
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    .line 1881
    .local v2, inSampleSize:I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1882
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1889
    const/4 v10, 0x0

    array-length v11, v3

    invoke-static {v3, v10, v11, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1891
    .local v8, shotcutThumb:Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v10, v10, Lcom/android/camera/CameraActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v10, :cond_2

    .line 1892
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v10, v10, Lcom/android/camera/CameraActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Lcom/android/camera/Thumbnail;->setShortcutBitmap(Landroid/graphics/Bitmap;I)V

    .line 1893
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->updateThumbnailView(Z)V

    .line 1898
    :cond_2
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v10, :cond_3

    .line 1899
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v10}, Lcom/android/camera/CameraEffectModule;->JpegAvailable()V

    .line 1904
    .end local v1           #height:I
    .end local v2           #inSampleSize:I
    .end local v3           #jpegdata:[B
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #orientation:I
    .end local v6           #ratio:I
    .end local v7           #s:Landroid/hardware/Camera$Size;
    .end local v8           #shotcutThumb:Landroid/graphics/Bitmap;
    .end local v9           #width:I
    :cond_3
    return-void

    .line 1875
    .restart local v3       #jpegdata:[B
    .restart local v5       #orientation:I
    .restart local v7       #s:Landroid/hardware/Camera$Size;
    :cond_4
    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    .line 1876
    .restart local v9       #width:I
    iget v1, v7, Landroid/hardware/Camera$Size;->width:I

    .restart local v1       #height:I
    goto :goto_0
.end method

.method private PlayDelaySound()V
    .locals 6

    .prologue
    .line 7189
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    .line 7190
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 7193
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_2

    .line 7196
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7197
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 7198
    const-string v3, "CAM_PhotoModule"

    const-string v4, "delay sound is playing, stop it."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7200
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 7201
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 7202
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v5, "android.resource://com.android.gallery3d/2131230722"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 7203
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7208
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object v0, v3

    check-cast v0, Landroid/media/AudioManager;

    .line 7210
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_2

    .line 7221
    const/4 v3, 0x7

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 7223
    .local v2, ringvolume:I
    if-eqz v2, :cond_2

    .line 7224
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 7225
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7236
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #ringvolume:I
    :cond_2
    :goto_1
    return-void

    .line 7204
    :catch_0
    move-exception v1

    .line 7205
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 7230
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :catch_1
    move-exception v1

    .line 7231
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v3, "CAM_PhotoModule"

    const-string v4, "captured exception: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7232
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private UpdateDelayTimer(I)V
    .locals 6
    .parameter "num"

    .prologue
    const/4 v5, 0x0

    .line 7239
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDelayClock:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 7254
    :goto_0
    return-void

    .line 7241
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    if-eqz v2, :cond_1

    .line 7242
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .line 7243
    .local v0, focusview:Lcom/android/camera/ui/FocusIndicator;
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 7245
    .end local v0           #focusview:Lcom/android/camera/ui/FocusIndicator;
    :cond_1
    if-nez p1, :cond_2

    .line 7246
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDelayClock:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7249
    :cond_2
    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7251
    .local v1, formatStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDelayClock:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7252
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDelayClock:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doAttach()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$10100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doShotToShotCapture()V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/camera/PhotoModule;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->ForceUpdateShot2ShotThumb(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$10400(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFullScreenChange:Z

    return v0
.end method

.method static synthetic access$10700(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z

    return v0
.end method

.method static synthetic access$10702(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z

    return p1
.end method

.method static synthetic access$10800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateFlashModeByCaptureMode()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isInDelayCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cancelShot2ShotSound()V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MyCountDownTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreviewGestures;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->restorePreferences()V

    return-void
.end method

.method static synthetic access$11602(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mpreShot2ShotMode:Z

    return p1
.end method

.method static synthetic access$11700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/BasicSettingGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mIndicatorBtn:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoModule;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/PhotoModule;->setNSLandBurstmodes(ZZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDiedTimes:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput p1, p0, Lcom/android/camera/PhotoModule;->mDiedTimes:I

    return p1
.end method

.method static synthetic access$2008(Lcom/android/camera/PhotoModule;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDiedTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mDiedTimes:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mIsImageSaving:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mEnterNightshot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/camera/PhotoModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mEnterNightshot:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPostponeNightshot:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mPostponeNightshot:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/PhotoModule;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->AutoSwitchToNightShot(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/GridLine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGridLine:Lcom/android/camera/ui/GridLine;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/PhotoModule;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PhotoModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->syncOpenPreview()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/PhotoModule;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setupPreview(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/PhotoModule;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCaptureMode()V

    return-void
.end method

.method static synthetic access$4502(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/CameraLeftBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/PhotoModule;)Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/camera/PhotoModule;Lcom/android/camera/CameraEffectModule;)Lcom/android/camera/CameraEffectModule;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GifCapture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/MyTextPreferenceButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/PhotoModule;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->showGifCapturingUI(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->enterFocusSeek:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/camera/PhotoModule;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOverrideSetting()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/SelfCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->isTaskRunning:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateFlash()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->isTaskRunning:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->hideFocusIndicator()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showFocusIndicator()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$6400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->timeLastSmileShot:J

    return-wide v0
.end method

.method static synthetic access$6502(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->timeLastSmileShot:J

    return-wide p1
.end method

.method static synthetic access$6600(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->timeSmileBegin:J

    return-wide v0
.end method

.method static synthetic access$6602(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->timeSmileBegin:J

    return-wide p1
.end method

.method static synthetic access$6700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onAfterEffectProcess()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/camera/PhotoModule;[BII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/PhotoModule;->saveImageData([BII)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/camera/PhotoModule;[BII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/PhotoModule;->previewCaptureImage([BII)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/PhotoModule;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/camera/PhotoModule;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-byte v0, p0, Lcom/android/camera/PhotoModule;->mGesturesTouch:B

    return v0
.end method

.method static synthetic access$7102(Lcom/android/camera/PhotoModule;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-byte p1, p0, Lcom/android/camera/PhotoModule;->mGesturesTouch:B

    return p1
.end method

.method static synthetic access$7400(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    return v0
.end method

.method static synthetic access$7402(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput p1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    return p1
.end method

.method static synthetic access$7500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/camera/PhotoModule;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/android/camera/PhotoModule;Landroid/media/ImageEffectService;)Landroid/media/ImageEffectService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/android/camera/PhotoModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$8202(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$8300(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$8302(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$8400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mbacketCapture:Z

    return v0
.end method

.method static synthetic access$8600(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$8700(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    return v0
.end method

.method static synthetic access$8800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/WhiteFrameView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$8902(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return v0
.end method

.method static synthetic access$9000(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$9102(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$9200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mbAntiShaking:Z

    return v0
.end method

.method static synthetic access$9300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mbPreviewByPostView:Z

    return v0
.end method

.method static synthetic access$9302(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mbPreviewByPostView:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    return v0
.end method

.method static synthetic access$9500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->checkContinueCapture()V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/camera/PhotoModule;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    return-object v0
.end method

.method static synthetic access$9602(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$9700(Lcom/android/camera/PhotoModule;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$9702(Lcom/android/camera/PhotoModule;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$9800(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$9900(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showPostCaptureAlert()V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 1447
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1448
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/PhotoModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$6;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1455
    return-void
.end method

.method private animateFlash()V
    .locals 4

    .prologue
    .line 2419
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2423
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 2425
    .local v0, globalPos:[I
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getTHumbnailView()Lcom/android/camera/ui/ThumbnailSwitcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/ThumbnailSwitcher;->getLocationOnScreen([I)V

    .line 2426
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2427
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2428
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2429
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getTHumbnailView()Lcom/android/camera/ui/ThumbnailSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ThumbnailSwitcher;->getWidth()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2430
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getTHumbnailView()Lcom/android/camera/ui/ThumbnailSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ThumbnailSwitcher;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2431
    iget v2, p0, Lcom/android/camera/PhotoModule;->mAnimatorType:I

    packed-switch v2, :pswitch_data_0

    .line 2457
    .end local v0           #globalPos:[I
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 2434
    .restart local v0       #globalPos:[I
    .restart local v1       #rect:Landroid/graphics/Rect;
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    rsub-int v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraScreenNail;->animateFlash(I)V

    goto :goto_0

    .line 2438
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->animateSlide()V

    goto :goto_0

    .line 2441
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->getCameraRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraScreenNail;->animateWave(I)V

    goto :goto_0

    .line 2445
    :pswitch_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->getCameraRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraScreenNail;->animateBoltting(I)V

    goto :goto_0

    .line 2449
    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->getCameraRotation()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/CameraScreenNail;->animateZoom(ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 2431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private autoSwitchBeautyShot()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 6778
    sget-boolean v3, Lcom/android/camera/ProductConfig;->isSupportImageEffect:Z

    if-nez v3, :cond_1

    .line 6820
    :cond_0
    :goto_0
    return-void

    .line 6781
    :cond_1
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v8, v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v4, "pickaction"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v4, "self_capture_1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v4, "self_capture_2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6785
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v8, v3, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    .line 6786
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mAutoSwitchToBeautyShot:Z

    .line 6787
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "beautyshot"

    iput-object v4, v3, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 6788
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, v5, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6789
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByCaptureMode()V

    .line 6807
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v4, "hdr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v4, "nightshot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6810
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6813
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/FilterSlidingDrawer;->setEnabled(Z)V

    goto/16 :goto_0

    .line 6790
    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mAutoSwitchToBeautyShot:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-nez v3, :cond_3

    .line 6791
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    invoke-static {v3, v4, v10, v8}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6792
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByCaptureMode()V

    .line 6793
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_continuemode_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e021c

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6797
    .local v0, contineCaptureStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_scenemode_key"

    const-string v6, "auto"

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6798
    .local v2, mSceneStr:Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6800
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_flashmode_key"

    invoke-static {v3, v4, v10, v8}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6804
    :goto_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 6805
    .local v1, listPref:Lcom/android/camera/ListPreference;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    goto/16 :goto_1

    .line 6802
    .end local v1           #listPref:Lcom/android/camera/ListPreference;
    :cond_6
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_flashmode_key"

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v9}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 6816
    .end local v0           #contineCaptureStr:Ljava/lang/String;
    .end local v2           #mSceneStr:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v3, :cond_0

    .line 6817
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v3, v9}, Lcom/android/camera/ui/FilterSlidingDrawer;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 4770
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelShot2ShotSound()V
    .locals 3

    .prologue
    .line 4423
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 4424
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4425
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 4427
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 4428
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4439
    :cond_1
    :goto_0
    return-void

    .line 4430
    :catch_0
    move-exception v0

    .line 4432
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "CAM_PhotoModule"

    const-string v2, ">>>>>>> cancel shot2shot sound failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 4434
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 4436
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkContinueCapture()V
    .locals 4

    .prologue
    .line 5115
    iget v0, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5116
    iget v0, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    .line 5118
    iget v0, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    if-nez v0, :cond_2

    .line 5119
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 5120
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 5129
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_1

    .line 5130
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5132
    :cond_1
    return-void

    .line 5123
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDoContineCaptureRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5124
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 5125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    goto :goto_0
.end method

.method private checkLimitPosition(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7599
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/Util;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 7600
    .local v0, size:[I
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7605
    if-lt p1, v5, :cond_0

    aget v3, v0, v1

    add-int/lit16 v3, v3, -0xfa

    if-le p1, v3, :cond_2

    .line 7614
    :cond_0
    :goto_0
    return v1

    .line 7609
    :cond_1
    if-lt p2, v5, :cond_0

    aget v3, v0, v2

    add-int/lit16 v3, v3, -0xfa

    if-gt p2, v3, :cond_0

    :cond_2
    move v1, v2

    .line 7614
    goto :goto_0
.end method

.method private cleanImageEffectPlugIn()V
    .locals 1

    .prologue
    .line 5995
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_0

    .line 5996
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->CloseEffect()V

    .line 5997
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    .line 5999
    :cond_0
    return-void
.end method

.method private cleanResourceAfterDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4034
    const-string v0, "CAM_PhotoModule"

    const-string v1, ">>>>>>>>>cleanResourceAfterDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    .line 4036
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    .line 4037
    return-void
.end method

.method private closeCamera()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4994
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 4995
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 4996
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v0, :cond_0

    .line 4997
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4999
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 5000
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 5001
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 5002
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 5003
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 5004
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 5006
    :cond_1
    return-void
.end method

.method private detectGPSSwitcher(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 6740
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 6741
    .local v0, conn:Landroid/net/ConnectivityManager;
    const-string v1, "pref_camera_recordlocation_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6752
    :cond_0
    return-void
.end method

.method private dismissPopup(ZZ)V
    .locals 2
    .parameter "topOnly"
    .parameter "fullScreen"

    .prologue
    .line 7176
    if-eqz p2, :cond_0

    .line 7177
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 7180
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/PhotoModule;->setShowMenu(Z)V

    .line 7181
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingList;

    if-eqz v0, :cond_1

    .line 7182
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingList;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 7183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingList;

    .line 7186
    :cond_1
    return-void
.end method

.method private doAttach()V
    .locals 17

    .prologue
    .line 3485
    const-string v13, "CAM_PhotoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "doAttach mPaused="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/PhotoModule;->mPaused:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v13, :cond_0

    .line 3590
    :goto_0
    return-void

    .line 3490
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 3491
    .local v3, data:[B
    const-string v13, "CAM_PhotoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "doAttach-----mCropValue = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mSaveUri = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    if-nez v13, :cond_3

    .line 3497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_2

    .line 3498
    const/4 v8, 0x0

    .line 3502
    .local v8, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 3508
    :goto_1
    if-eqz v8, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    if-eqz v13, :cond_1

    .line 3509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write([B)V

    .line 3510
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 3511
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 3516
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3517
    const-string v13, "CAM_PhotoModule"

    const-string v14, "doAttach----setResultEx---Activity.RESULT_OK "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3525
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 3526
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 3503
    :catch_0
    move-exception v4

    .line 3504
    .local v4, e:Ljava/io/IOException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 3505
    .local v10, path:Ljava/lang/String;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v8           #outputStream:Ljava/io/OutputStream;
    .local v9, outputStream:Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9           #outputStream:Ljava/io/OutputStream;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .line 3518
    .end local v4           #e:Ljava/io/IOException;
    .end local v10           #path:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 3522
    .local v5, ex:Ljava/io/IOException;
    :try_start_3
    const-string v13, "CAM_PhotoModule"

    const-string v14, "capture exception: "

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3525
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 3526
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 3525
    .end local v5           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 3526
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v14}, Lcom/android/camera/CameraActivity;->finish()V

    throw v13

    .line 3537
    .end local v8           #outputStream:Ljava/io/OutputStream;
    :cond_2
    invoke-static {v3}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v7

    .line 3538
    .local v7, orientation:I
    const v13, 0xc800

    invoke-static {v3, v13}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3539
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v7}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3540
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    new-instance v15, Landroid/content/Intent;

    const-string v16, "inline-data"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "data"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3542
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 3547
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #orientation:I
    :cond_3
    const/4 v12, 0x0

    .line 3548
    .local v12, tempUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 3550
    .local v11, tempStream:Ljava/io/FileOutputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 3551
    .local v10, path:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 3552
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 3553
    invoke-virtual {v11, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 3554
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 3555
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v12

    .line 3567
    invoke-static {v11}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 3570
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3571
    .local v6, newExtras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    const-string v14, "circle"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 3572
    const-string v13, "circleCrop"

    const-string v14, "true"

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_6

    .line 3575
    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3579
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 3580
    const-string v13, "showWhenLocked"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3582
    :cond_5
    const-string v13, "CAM_PhotoModule"

    const-string v14, "Start Activity by intent = com.android.camera.action.CROP"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    new-instance v2, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.CROP"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3585
    .local v2, cropIntent:Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3586
    invoke-virtual {v2, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3588
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v2, v14}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3556
    .end local v2           #cropIntent:Landroid/content/Intent;
    .end local v6           #newExtras:Landroid/os/Bundle;
    .end local v10           #path:Ljava/io/File;
    :catch_2
    move-exception v5

    .line 3557
    .local v5, ex:Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v13, "CAM_PhotoModule"

    const-string v14, "crop FileNotFoundException "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3559
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3567
    invoke-static {v11}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 3561
    .end local v5           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 3562
    .local v5, ex:Ljava/io/IOException;
    :try_start_6
    const-string v13, "CAM_PhotoModule"

    const-string v14, "crop IOException "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3567
    invoke-static {v11}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v5           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v13

    invoke-static {v11}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 3577
    .restart local v6       #newExtras:Landroid/os/Bundle;
    .restart local v10       #path:Ljava/io/File;
    :cond_6
    const-string v13, "return-data"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private doCancel()V
    .locals 3

    .prologue
    .line 3593
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3594
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3595
    return-void
.end method

.method private doEffectProcess(B)Z
    .locals 4
    .parameter "action"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3713
    const/4 v0, 0x1

    .line 3714
    .local v0, continueProcess:Z
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->filterEffectProcessUI(B)V

    .line 3715
    sparse-switch p1, :sswitch_data_0

    .line 3736
    const/4 v0, 0x1

    .line 3739
    :goto_0
    return v0

    .line 3717
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v1}, Lcom/android/camera/CameraEffectModule;->StartCapture()V

    .line 3718
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->isEffectOver:Z

    .line 3719
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1, v3}, Lcom/android/camera/FocusOverlayManager;->forceLockAAA(Z)V

    .line 3720
    const/4 v0, 0x0

    .line 3721
    goto :goto_0

    .line 3727
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v1}, Lcom/android/camera/CameraEffectModule;->StartCapture()V

    .line 3728
    const/4 v0, 0x1

    .line 3729
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->isEffectOver:Z

    goto :goto_0

    .line 3732
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->forceLockAAA(Z)V

    .line 3733
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->isEffectOver:Z

    goto :goto_0

    .line 3715
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x16 -> :sswitch_1
        0x23 -> :sswitch_2
        0x29 -> :sswitch_0
        0x32 -> :sswitch_1
        0x36 -> :sswitch_1
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method private doKeyVolumeDownAction()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4975
    .local v0, downTime:J
    const-wide/16 v6, 0x64

    add-long v2, v0, v6

    .line 4976
    .local v2, eventTime:J
    const-string v6, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downTime:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " eventTime:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    move v7, v4

    .line 4977
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 4980
    .local v8, downEvent:Landroid/view/MotionEvent;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4, v8}, Lcom/android/camera/ShutterButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4981
    return-void
.end method

.method private doKeyVolumeUpAction()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 4983
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4984
    .local v0, downTime:J
    const-wide/16 v6, 0x64

    add-long v2, v0, v6

    .line 4985
    .local v2, eventTime:J
    const/4 v4, 0x1

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 4987
    .local v8, upEvent:Landroid/view/MotionEvent;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4, v8}, Lcom/android/camera/ShutterButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4988
    return-void
.end method

.method private doShotToShotCapture()V
    .locals 4

    .prologue
    .line 7467
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    .line 7468
    .local v0, staus:J
    const-wide/32 v2, 0x989680

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 7469
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mDoContineCaptureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7470
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->playShot2ShotSound()V

    .line 7474
    :goto_0
    return-void

    .line 7472
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cancelShot2ShotSound()V

    goto :goto_0
.end method

.method private dynamicChangePreviewSize(Z)V
    .locals 6
    .parameter "blimited"

    .prologue
    const/4 v5, -0x1

    .line 7377
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v2, :cond_0

    .line 7378
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->getOptimizedPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 7380
    .local v1, previewsize:Landroid/hardware/Camera$Size;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 7382
    .local v0, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7384
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 7385
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 7389
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 7390
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 7391
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->syncOpenPreview()V

    .line 7393
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iput v2, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    .line 7394
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    .line 7395
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>dynamicChangePreviewSize to width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7397
    iget v2, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    if-eq v2, v5, :cond_0

    .line 7398
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    iget v4, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraActivity;->resizeForCameraSnail(II)V

    .line 7399
    iget v2, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/PhotoModule;->updateCameraScreenNailSize(II)V

    .line 7404
    .end local v0           #original:Landroid/hardware/Camera$Size;
    .end local v1           #previewsize:Landroid/hardware/Camera$Size;
    :cond_0
    return-void
.end method

.method private dynamiclimitedHdrArt(Ljava/lang/String;)V
    .locals 9
    .parameter "captureModeStr"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6660
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_continuemode_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0221

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6664
    .local v0, continueCaptureStr:Ljava/lang/String;
    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6665
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_scenemode_key"

    invoke-static {v1, v2, v8, v6}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6667
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6668
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_delay_key"

    invoke-static {v1, v2, v8, v6}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6671
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCurrentEffectModeOverried:Ljava/lang/String;

    const-string v2, "hdr_art"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6672
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_effect_key"

    const-string v3, "none"

    invoke-static {v1, v2, v3, v6}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6674
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_whitebalance_key"

    invoke-static {v1, v2, v8, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6681
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v1, :cond_2

    .line 6682
    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6683
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6684
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    if-nez v1, :cond_2

    .line 6685
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/FilterSlidingDrawer;->setEnabled(Z)V

    .line 6736
    :cond_2
    :goto_1
    return-void

    .line 6677
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_effect_key"

    invoke-static {v1, v2, v8, v6}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 6687
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v1, v7}, Lcom/android/camera/ui/FilterSlidingDrawer;->setEnabled(Z)V

    goto :goto_1

    .line 6691
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_scenemode_key"

    const-string v3, "auto"

    invoke-static {v1, v2, v3, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6693
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_delay_key"

    const-string v3, "0"

    invoke-static {v1, v2, v3, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6695
    const-string v1, "hdr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6696
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_effect_key"

    invoke-static {v1, v2, v8, v6}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6697
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v1, :cond_2

    .line 6698
    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6700
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/FilterSlidingDrawer;->setEnabled(Z)V

    goto :goto_1

    .line 6704
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/FilterSlidingDrawer;->setEnabled(Z)V

    goto :goto_1

    .line 6708
    :cond_7
    const-string v1, "nightshot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 6709
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCurrentEffectModeOverried:Ljava/lang/String;

    const-string v2, "hdr_art"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6710
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_effect_key"

    const-string v3, "none"

    invoke-static {v1, v2, v3, v6}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6712
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_whitebalance_key"

    invoke-static {v1, v2, v8, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6718
    :goto_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v1, :cond_2

    .line 6719
    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6721
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/FilterSlidingDrawer;->setEnabled(Z)V

    goto/16 :goto_1

    .line 6715
    :cond_8
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_effect_key"

    invoke-static {v1, v2, v8, v6}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 6723
    :cond_9
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v1, v7}, Lcom/android/camera/ui/FilterSlidingDrawer;->setEnabled(Z)V

    goto/16 :goto_1

    .line 6727
    :cond_a
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_effect_key"

    const-string v3, "none"

    invoke-static {v1, v2, v3, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6729
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_whitebalance_key"

    invoke-static {v1, v2, v8, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6731
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v1, :cond_2

    .line 6732
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v1, v7}, Lcom/android/camera/ui/FilterSlidingDrawer;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private enableCameraControls(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 2383
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v0, :cond_0

    .line 2384
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraLeftBar;->setEnabled(Z)V

    .line 2385
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    if-eqz v0, :cond_1

    .line 2386
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MyTextPreferenceButton;->setClickable(Z)V

    .line 2391
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v1, "nightshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2397
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2398
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    if-nez v0, :cond_4

    .line 2400
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v0, p1, v2}, Lcom/android/camera/ui/FilterSlidingDrawer;->setEnabled(ZZ)V

    .line 2406
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setCameraSwitcherEnabled(Z)V

    .line 2409
    return-void

    .line 2401
    :cond_4
    if-nez p1, :cond_3

    .line 2402
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v0, p1, v2}, Lcom/android/camera/ui/FilterSlidingDrawer;->setEnabled(ZZ)V

    goto :goto_0
.end method

.method private filterEffectProcessUI(B)V
    .locals 4
    .parameter "action"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x2c

    .line 3742
    sparse-switch p1, :sswitch_data_0

    .line 3778
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3744
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 3745
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3752
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 3753
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3756
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 3757
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3760
    :sswitch_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 3761
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3764
    :sswitch_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 3765
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 3766
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 3767
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3770
    :sswitch_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 3771
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 3772
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mbPostCaptureAlertShowed:Z

    if-nez v0, :cond_0

    .line 3773
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 3774
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3742
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x16 -> :sswitch_0
        0x1c -> :sswitch_4
        0x23 -> :sswitch_6
        0x29 -> :sswitch_3
        0x32 -> :sswitch_5
        0x36 -> :sswitch_0
        0x38 -> :sswitch_2
    .end sparse-switch
.end method

.method private forceLimitPictureSize(Ljava/lang/String;)V
    .locals 7
    .parameter "captureModeStr"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3222
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->limitedStrArray:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/android/camera/PhotoModule;->isLimitedCaptureMode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3223
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_picturesize_key"

    const-string v3, "4208x3120"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3225
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_picturesize_key"

    const-string v3, "4208x2368"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3227
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_picturesize_key"

    const-string v4, "4208x2368"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3230
    .local v0, picturesize:Ljava/lang/String;
    const-string v1, "4208x2368"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4208x3120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3232
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->isAutoForceLimited:Z

    .line 3233
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPictureSizeOverride:Ljava/lang/String;

    .line 3234
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_picturesize_key"

    const-string v3, "3264x2448"

    invoke-static {v1, v6, v2, v3}, Lcom/android/camera/CameraSettings;->setPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    .end local v0           #picturesize:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3237
    :cond_2
    const-string v1, "gifcapture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3239
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_picturesize_key"

    invoke-static {v1, v2, v6, v5}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3241
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_picturesize_key"

    const-string v3, "4208x3120"

    invoke-static {v1, v2, v3, v5}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3243
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_picturesize_key"

    const-string v3, "4208x2368"

    invoke-static {v1, v2, v3, v5}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 2412
    iget v0, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getOptimizedPreviewSize()Landroid/hardware/Camera$Size;
    .locals 20

    .prologue
    .line 5462
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_picturesize_key"

    const/16 v18, 0x0

    invoke-static/range {v15 .. v18}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5464
    .local v7, pictureSize:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mPictureSizeForGifCapture:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 5465
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule;->mPictureSizeForGifCapture:Ljava/lang/String;

    .line 5466
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v15}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 5467
    .local v5, optimalSize:Landroid/hardware/Camera$Size;
    if-eqz v7, :cond_1

    .line 5469
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v15, v15, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v16, "gifcapture"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 5471
    const/16 v15, 0x140

    iput v15, v5, Landroid/hardware/Camera$Size;->width:I

    .line 5472
    const/16 v15, 0xf0

    iput v15, v5, Landroid/hardware/Camera$Size;->height:I

    .line 5515
    :cond_1
    :goto_0
    return-object v5

    .line 5473
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v15, v15, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v16, "beautyshot"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    sget-boolean v15, Lcom/android/camera/ProductConfig;->isSupportImageEffect:Z

    if-eqz v15, :cond_5

    .line 5475
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v15}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v13

    .line 5476
    .local v13, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, 0x0

    .line 5477
    .local v2, find:Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 5478
    .local v11, size:Landroid/hardware/Camera$Size;
    iget v15, v11, Landroid/hardware/Camera$Size;->width:I

    const/16 v16, 0x500

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    iget v15, v11, Landroid/hardware/Camera$Size;->height:I

    const/16 v16, 0x2d0

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 5479
    const/16 v15, 0x500

    iput v15, v5, Landroid/hardware/Camera$Size;->width:I

    .line 5480
    const/16 v15, 0x2d0

    iput v15, v5, Landroid/hardware/Camera$Size;->height:I

    .line 5481
    const/4 v2, 0x1

    .line 5485
    .end local v11           #size:Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v2, :cond_1

    .line 5486
    const/16 v15, 0x78

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 5487
    .local v4, index:I
    const/4 v15, 0x0

    invoke-virtual {v7, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 5488
    .local v8, pictureWidth:I
    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5489
    .local v6, pictureHeight:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v15}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v12

    .line 5490
    .local v12, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    int-to-double v0, v8

    move-wide/from16 v16, v0

    int-to-double v0, v6

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v15, v12, v0, v1}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v5

    goto :goto_0

    .line 5494
    .end local v2           #find:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    .end local v6           #pictureHeight:I
    .end local v8           #pictureWidth:I
    .end local v12           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v13           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v15, v15, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v16, "pickaction"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 5495
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 5496
    .local v10, screenWidth:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 5497
    .local v9, screenHeight:I
    if-ge v10, v9, :cond_6

    .line 5498
    move v14, v9

    .line 5499
    .local v14, temp:I
    move v9, v10

    .line 5500
    move v10, v14

    .line 5502
    .end local v14           #temp:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v15}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v12

    .line 5503
    .restart local v12       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    int-to-double v0, v10

    move-wide/from16 v16, v0

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v15, v12, v0, v1}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 5506
    goto/16 :goto_0

    .line 5507
    .end local v9           #screenHeight:I
    .end local v10           #screenWidth:I
    .end local v12           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_7
    const/16 v15, 0x78

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 5508
    .restart local v4       #index:I
    const/4 v15, 0x0

    invoke-virtual {v7, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 5509
    .restart local v8       #pictureWidth:I
    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5510
    .restart local v6       #pictureHeight:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v15}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v12

    .line 5511
    .restart local v12       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    int-to-double v0, v8

    move-wide/from16 v16, v0

    int-to-double v0, v6

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v15, v12, v0, v1}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 2713
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 2714
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2719
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private hideFocusIndicator()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 7850
    const-string v0, "CAM_PhotoModule"

    const-string v1, "hide focus!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7851
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    if-eqz v0, :cond_0

    .line 7852
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusIndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7853
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setVisibility(I)V

    .line 7855
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    .line 7856
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 7858
    :cond_1
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 5950
    const-string v0, "CAM_PhotoModule"

    const-string v1, "hidePostCaptureAlert"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5951
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 5954
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5955
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5956
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5957
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5958
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewModuleLayout:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5966
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5969
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 5971
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5972
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 5973
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5974
    :cond_0
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 5976
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 5978
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5979
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5980
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5981
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v0, :cond_1

    .line 5982
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera;->resumeShutterGuide()V

    .line 5983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    .line 5986
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5987
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 5988
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5990
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mbPostCaptureAlertShowed:Z

    .line 5992
    :cond_3
    return-void
.end method

.method private initCaptureModeView()V
    .locals 4

    .prologue
    .line 4696
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getFilterSlidingDrawer()Lcom/android/camera/ui/FilterSlidingDrawer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    .line 4699
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    if-eqz v2, :cond_0

    .line 4700
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/MyTextPreferenceButton;->setBtnClickListener(Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;)V

    .line 4703
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v2, :cond_1

    .line 4704
    const-string v0, "pref_camera_capturemode_key"

    .line 4705
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, v0}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 4707
    .local v1, preference:Lcom/android/camera/IconListPreference;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/BasicSettingGridView;->setPreference(Lcom/android/camera/IconListPreference;)V

    .line 4708
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/BasicSettingGridView;->setPreferListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 4709
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/BasicSettingGridView;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 4710
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/BasicSettingGridView;->setOwnedBtn(Lcom/android/camera/ui/MyTextPreferenceButton;)V

    .line 4711
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/BasicSettingGridView;->setSettingShowListener(Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;)V

    .line 4712
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getFilterSlidingDrawer()Lcom/android/camera/ui/FilterSlidingDrawer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    .line 4713
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/FilterSlidingDrawer;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 4714
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/FilterSlidingDrawer;->setPreferListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 4715
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    new-instance v3, Lcom/android/camera/PhotoModule$15;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$15;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/FilterSlidingDrawer;->setDrawerShowListener(Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;)V

    .line 4742
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #preference:Lcom/android/camera/IconListPreference;
    :cond_1
    return-void
.end method

.method private initFaceEffectBtn()V
    .locals 3

    .prologue
    .line 4687
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getFaceEffectButton()Lcom/android/camera/ui/MyTextPreferenceButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    .line 4688
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingGridView()Lcom/android/camera/ui/BasicSettingGridView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    .line 4689
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_capturemode_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/MyTextPreferenceButton;->setDefaultIcon(Lcom/android/camera/ComboPreferences;Ljava/lang/String;)V

    .line 4691
    return-void
.end method

.method private initializeAfterCameraOpen()V
    .locals 4

    .prologue
    .line 1280
    const-string v0, "CAM_PhotoModule"

    const-string v1, "--initializeAfterCameraOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_0

    .line 1287
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_1

    .line 1291
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraModule;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 1293
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeRenderOverlay()V

    .line 1302
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    .line 1303
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 1305
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 1306
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 1308
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 1309
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1328
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getEnterOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setLockedOrientation(I)V

    .line 1329
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setRotateOrientation(I)V

    .line 1330
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 1331
    return-void
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 7093
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 7094
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 7095
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    .line 7096
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    .line 7097
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    .line 7098
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    .line 7099
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7100
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    .line 7103
    :cond_0
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 2

    .prologue
    .line 4248
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getTHumbnailView()Lcom/android/camera/ui/ThumbnailSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ThumbnailSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Lcom/android/camera/CameraActivity;->mThumbnailViewWidth:I

    .line 4250
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 4252
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 4253
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideThumbnail()V

    .line 4255
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->swapCaptureIntentMode()V

    .line 4260
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 4261
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 4262
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    .line 4264
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewImage:Landroid/widget/ImageView;

    .line 4266
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewModuleLayout:Landroid/view/View;

    .line 4270
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$9;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$9;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4276
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$10;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$10;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4283
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$11;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$11;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4293
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 4294
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 4297
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupCaptureParams()V

    .line 4299
    :cond_1
    return-void
.end method

.method private initializeFirstTime()V
    .locals 5

    .prologue
    .line 1364
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeFirstTime mFirstTimeInitialized="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 1433
    :goto_0
    return-void

    .line 1370
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v1

    .line 1372
    .local v1, recordLocation:Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->enabledNetWorkProvider()V

    .line 1373
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1376
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 1384
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initCaptureModeView()V

    .line 1390
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v2, :cond_1

    .line 1391
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 1394
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/CameraLeftBar;->setDefaultIconFromPreference(Lcom/android/camera/ComboPreferences;)V

    .line 1397
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 1406
    :cond_1
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeFirstTime mCameraLeftBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 1409
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 1421
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 1422
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    if-eqz v0, :cond_2

    .line 1423
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getImageSaver()Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    .line 1424
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->setCameraActivity(Lcom/android/camera/CameraActivity;)V

    .line 1425
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->setModuleHandler(Landroid/os/Handler;)V

    .line 1428
    :cond_2
    new-instance v2, Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$ImageNamer;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 1430
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    .line 1431
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addIdleHandler()V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 4306
    const-string v0, "CAM_PhotoModule"

    const-string v1, "initializeFocusManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4308
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusIndicatorContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f100098

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 4312
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusIndicatorContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f100095

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .line 4315
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v1, "tracksolid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4317
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4318
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v6, v6, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4323
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_2

    .line 4324
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 4344
    :cond_1
    :goto_0
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    .line 4345
    return-void

    .line 4325
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 4326
    const/4 v7, 0x0

    .line 4328
    .local v7, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    .line 4329
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v7, v0, v1

    .line 4332
    :cond_3
    const/4 v5, 0x0

    .line 4333
    .local v5, mirror:Z
    if-eqz v7, :cond_4

    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v8, :cond_4

    .line 4334
    const/4 v5, 0x1

    .line 4338
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 4340
    .local v2, defaultFocusModes:[Ljava/lang/String;
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 3

    .prologue
    .line 4469
    const-string v0, "CAM_PhotoModule"

    const-string v1, "initializeMiscControls"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 4474
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 4476
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f10010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 4477
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 4478
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 4479
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f10010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GridLine;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mGridLine:Lcom/android/camera/ui/GridLine;

    .line 4480
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f10010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDelayClock:Landroid/widget/TextView;

    .line 4482
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraLeftBar()Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    .line 4484
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f1000d7

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusSeekBar:Landroid/widget/SeekBar;

    .line 4485
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/camera/PhotoModule$13;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$13;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 4510
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWhiteFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mWhiteFrameLayout:Landroid/widget/FrameLayout;

    .line 4511
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWhiteFrameView()Lcom/android/camera/ui/WhiteFrameView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

    .line 4512
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WhiteFrameView;->setContinueAnimation(Lcom/android/camera/CameraActivity;)V

    .line 4513
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIndependenceShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    .line 4514
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 4515
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/PhotoModule$14;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$14;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4602
    new-instance v0, Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f040060

    invoke-direct {v0, v1, v2}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 4604
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 4605
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 4606
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 4615
    :cond_0
    return-void
.end method

.method private initializeRenderOverlay()V
    .locals 2

    .prologue
    .line 1231
    const-string v0, "CAM_PhotoModule"

    const-string v1, "initializeRenderOverlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFocusRenderer(Landroid/view/View;)V

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_9

    .line 1243
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/camera/PreviewGestures;->clearTouchReceivers()V

    .line 1244
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 1248
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1249
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_2

    .line 1250
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1252
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_3

    .line 1253
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1255
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_4

    .line 1256
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1258
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_5

    .line 1259
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1262
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v0, :cond_6

    .line 1263
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1264
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraLeftBar;->getSubRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1266
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraControl()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1267
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraControl()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1269
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->getDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1272
    :cond_8
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_9

    .line 1273
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1276
    :cond_9
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->requestLayout()V

    .line 1277
    return-void
.end method

.method private initializeSecondTime()V
    .locals 4

    .prologue
    .line 1460
    const-string v2, "CAM_PhotoModule"

    const-string v3, "initializeSecondTime"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v1

    .line 1464
    .local v1, recordLocation:Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1466
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 1467
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    if-eqz v0, :cond_0

    .line 1468
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getImageSaver()Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    .line 1469
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->setCameraActivity(Lcom/android/camera/CameraActivity;)V

    .line 1470
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->setModuleHandler(Landroid/os/Handler;)V

    .line 1472
    :cond_0
    new-instance v2, Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$ImageNamer;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 1474
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v2, :cond_1

    .line 1475
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 1476
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 1479
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initCaptureModeView()V

    .line 1480
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 1481
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 1482
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->hidePostCaptureAlert()V

    .line 1487
    return-void
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1542
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 1561
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1545
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/ui/ZoomRenderer;->mIsZoomSupported:Z

    .line 1550
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mZoomMax:I

    .line 1551
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    .line 1554
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ZoomRenderer;->setVisible(Z)V

    .line 1556
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 1557
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 1558
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 1559
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/PhotoModule$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/PhotoModule$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0

    .line 1547
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iput-boolean v2, v0, Lcom/android/camera/ui/ZoomRenderer;->mIsZoomSupported:Z

    goto :goto_0
.end method

.method private installAutoTestIntentFilter()V
    .locals 3

    .prologue
    .line 7342
    new-instance v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2, p0}, Lcom/android/autoTest/AutoTestBroadCastReceiver;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;)V

    sput-object v1, Lcom/android/camera/PhotoModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    .line 7343
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yulong.camera.action.ygtptest_capture"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7345
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.yulong.camera.action.ygtptest_openalbum"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7346
    const-string v1, "com.yulong.camera.action.ygtptest_switchCameraId"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7347
    const-string v1, "com.yulong.camera.action.ygtptest_switchMode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7348
    const-string v1, "com.yulong.camera.action.ygtptest_setting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7349
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    sget-object v2, Lcom/android/camera/PhotoModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7350
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mAutoTestRegister:Z

    .line 7351
    return-void
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5877
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 5883
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5884
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

.method private isInDelayCapture()Z
    .locals 7

    .prologue
    .line 5134
    const/4 v1, 0x0

    .line 5135
    .local v1, inDelayCapture:Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_delay_key"

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0221

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5138
    .local v0, delayCaptureStr:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5139
    const/4 v1, 0x1

    .line 5141
    :cond_0
    return v1
.end method

.method private isLimitedCaptureMode([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "limited"
    .parameter "captureStr"

    .prologue
    .line 3250
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 3251
    .local v2, item:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3252
    const/4 v4, 0x1

    .line 3255
    .end local v2           #item:Ljava/lang/String;
    :goto_1
    return v4

    .line 3250
    .restart local v2       #item:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3255
    .end local v2           #item:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1358
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 6979
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6980
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 6982
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6983
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3292
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraLeftBar()Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    .line 3293
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 3295
    .local v0, settings:Lcom/android/camera/CameraSettings;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 3296
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCameraPreferences mPreferenceGroup ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCameraLeftBar="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    sget-boolean v1, Lcom/android/camera/ProductConfig;->isSupportImageEffect:Z

    if-eqz v1, :cond_0

    .line 3299
    const-string v1, "8908"

    invoke-static {v1}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3300
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->autoSwitchBeautyShot()V

    .line 3303
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getFristPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 3306
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    if-eqz v1, :cond_1

    .line 3307
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_capturemode_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    invoke-static {v1, v2, v3, v5}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3309
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByCaptureMode()V

    .line 3312
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mEffectModeOverried:Z

    if-eqz v1, :cond_2

    .line 3313
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_effect_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v5}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3317
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mSecureBoxOverried:Z

    if-eqz v1, :cond_3

    .line 3318
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_secure_box_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCurrentSecureBoxValue:Ljava/lang/String;

    invoke-static {v1, v2, v3, v5}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3323
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v1, :cond_4

    .line 3324
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 3326
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initCaptureModeView()V

    .line 3333
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOverrideSetting()V

    .line 3334
    sget-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v1, :cond_5

    .line 3335
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-static {v1}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 3336
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setComboPreferences(Lcom/android/camera/ComboPreferences;)V

    .line 3338
    :cond_5
    return-void
.end method

.method private onAfterEffectProcess()V
    .locals 1

    .prologue
    .line 7870
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->doEffectProcess(B)Z

    .line 7871
    return-void
.end method

.method private overrideSceneSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "flashMode"
    .parameter "whiteBalance"
    .parameter "focusMode"
    .parameter "effect"

    .prologue
    const/4 v7, 0x0

    .line 3260
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->oldCaptureMode:Ljava/lang/String;

    const-string v3, "nightshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3261
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_capturemode_key"

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e01de

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3264
    .local v0, captureModeStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_continuemode_key"

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e021c

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3268
    .local v1, contineCaptureStr:Ljava/lang/String;
    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "hdr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bestpick"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio_image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "beautyshot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gifcapture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pickaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pickclear"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3277
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_flashmode_key"

    invoke-static {v2, v3, p1, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3279
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z

    if-eqz v2, :cond_1

    .line 3280
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_flashmode_key"

    const-string v4, "off"

    invoke-static {v2, v3, v4, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3283
    .end local v0           #captureModeStr:Ljava/lang/String;
    .end local v1           #contineCaptureStr:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_whitebalance_key"

    invoke-static {v2, v3, p2, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3285
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_focusmode_key"

    invoke-static {v2, v3, p3, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3287
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_effect_key"

    invoke-static {v2, v3, p4, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3289
    return-void
.end method

.method private playShot2ShotSound()V
    .locals 6

    .prologue
    .line 4403
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_shutter_sound_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0259

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4406
    .local v0, shutterSound:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4407
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 4408
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4409
    const-string v1, "CAM_PhotoModule"

    const-string v2, ">>>>>>if is in playing state ,do nothing "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    :cond_0
    :goto_0
    return-void

    .line 4412
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 4413
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method private previewCaptureImage([BII)V
    .locals 3
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3808
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 3826
    :cond_0
    :goto_0
    return-void

    .line 3809
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/PhotoModule;->saveImageData([BII)V

    .line 3810
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 3812
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 3813
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3815
    :cond_2
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3819
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    if-nez v1, :cond_3

    .line 3820
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 3821
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showPostCaptureAlert()V

    goto :goto_0

    .line 3816
    :catch_0
    move-exception v0

    .line 3817
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CAM_PhotoModule"

    const-string v2, ">>>>>>>BitmapFactory.decodeByteArray is fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3823
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doAttach()V

    goto :goto_0
.end method

.method private releaseMediaPlayer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4442
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 4444
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4445
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 4446
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 4448
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4453
    :goto_0
    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    .line 4455
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_2

    .line 4457
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4463
    iput-object v4, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;

    .line 4466
    :cond_2
    :goto_1
    return-void

    .line 4450
    :catch_0
    move-exception v0

    .line 4451
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------Mediaplayer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4459
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 4461
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----AssetFileDescriptor---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4463
    iput-object v4, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;

    throw v1
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 1336
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v2, :cond_1

    .line 1337
    const-string v2, "CAM_PhotoModule"

    const-string v3, "resetExposureCompensation-------but mPreferences=null,so return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1341
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1343
    .local v1, value:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1344
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1345
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 6973
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6974
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 6976
    return-void
.end method

.method private restorePreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7010
    const-string v0, "CAM_PhotoModule"

    const-string v1, "----restorePreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7014
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7015
    iput v4, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 7016
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    .line 7018
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 7019
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    .line 7020
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 7021
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 7027
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-nez v0, :cond_4

    .line 7028
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "none"

    iput-object v1, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 7043
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCaptureMode()V

    .line 7044
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 7046
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Storage;->hasRemovableSD(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7047
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_storage_path_key"

    const-string v2, "external"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7049
    sput-boolean v3, Lcom/android/camera/Storage;->mIsExternalSdPriority:Z

    .line 7056
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 7057
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v0, v3, :cond_2

    .line 7058
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_capturemode_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7059
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByCaptureMode()V

    .line 7061
    :cond_2
    invoke-virtual {p0, v5, v5}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 7063
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mIsSecuredBoxMode:Z

    if-eqz v0, :cond_3

    .line 7064
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->handleCameraSecureBox(Ljava/lang/String;)V

    .line 7066
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7067
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7069
    return-void

    .line 7029
    :cond_4
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v0, v3, :cond_1

    .line 7035
    const-string v0, "8970L"

    invoke-static {v0}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7036
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "beautyshot"

    iput-object v1, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    goto :goto_0

    .line 7038
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "none"

    iput-object v1, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    goto :goto_0

    .line 7051
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_storage_path_key"

    const-string v2, "internal"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7053
    sput-boolean v4, Lcom/android/camera/Storage;->mIsExternalSdPriority:Z

    goto :goto_1
.end method

.method private saveImageData([BII)V
    .locals 9
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3783
    if-nez p1, :cond_0

    .line 3784
    const-string v0, "CAM_PhotoModule"

    const-string v1, "saveImageData data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    :goto_0
    return-void

    .line 3787
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 3789
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/PhotoModule$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 3791
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 3792
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 3794
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v7, v1, Lcom/android/camera/CameraActivity;->mThumbnailViewWidth:I

    sget v8, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 3797
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mLatestUri:Landroid/net/Uri;

    .line 3799
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v0, :cond_1

    .line 3800
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {}, Lcom/android/camera/Thumbnail;->createEmptyThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/CameraActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 3802
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0, v2}, Lcom/android/camera/Thumbnail;->setShortCutUri(Landroid/net/Uri;)V

    .line 3803
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 3804
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mLatestUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->ForceUpdateShot2ShotThumb(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 5377
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 5378
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 5380
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 5384
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 5385
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 5387
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 5837
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 5838
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersInitialize()V

    .line 5841
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 5842
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersZoom()V

    .line 5845
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 5846
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V

    .line 5849
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    .line 5850
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5853
    :cond_3
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 5858
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 5859
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 5862
    iput v3, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 5874
    :cond_0
    :goto_0
    return-void

    .line 5864
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5865
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCameraIdle() true-----setCameraParametersWhenIdle mUpdateSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5866
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 5867
    iput v3, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    goto :goto_0

    .line 5869
    :cond_2
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCameraIdle()  false-----setCameraParametersWhenIdle mUpdateSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5870
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5871
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2356
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraState state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 2358
    packed-switch p1, :pswitch_data_0

    .line 2380
    :cond_0
    :goto_0
    return-void

    .line 2361
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 2362
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v3}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    goto :goto_0

    .line 2368
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_1

    .line 2369
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v3}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 2370
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/camera/PhotoModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 2373
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_2

    .line 2375
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v4}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 2377
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/camera/PhotoModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 2358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 5009
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    .line 5010
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    .line 5012
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    .line 5013
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 5014
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 5016
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 5017
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 5019
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_2

    .line 5020
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setOrientation(I)V

    .line 5027
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5028
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 5030
    :cond_3
    return-void
.end method

.method private setFlashModeByPlugin(Z)V
    .locals 7
    .parameter "blockFlashMode"

    .prologue
    const/4 v5, 0x0

    .line 6110
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z

    if-eqz v2, :cond_4

    .line 6111
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_flashmode_key"

    const-string v4, "off"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6122
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_flashmode_key"

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0285

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6126
    .local v0, flashMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v3, "gifcapture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v3, "pickaction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z

    if-eqz v2, :cond_2

    .line 6129
    :cond_1
    const-string v0, "off"

    .line 6132
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 6133
    .local v1, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6134
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6135
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFlashModeByPlugin()>>>>set flash-mode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6143
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v0, v2, Lcom/android/camera/CameraActivity;->mCurrendFlashMode:Ljava/lang/String;

    .line 6144
    return-void

    .line 6113
    .end local v0           #flashMode:Ljava/lang/String;
    .end local v1           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    if-eqz p1, :cond_5

    .line 6114
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_flashmode_key"

    const-string v4, "off"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 6117
    :cond_5
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->oldCaptureMode:Ljava/lang/String;

    const-string v3, "nightshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6118
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_flashmode_key"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 6137
    .restart local v0       #flashMode:Ljava/lang/String;
    .restart local v1       #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 6138
    if-nez v0, :cond_3

    .line 6139
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0286

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setFocusAreasIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 5391
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 5392
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 5394
    :cond_0
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 5398
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 5400
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 5402
    :cond_0
    return-void
.end method

.method private setNSLandBurstmodes(ZZZ)V
    .locals 8
    .parameter "open"
    .parameter "disablepreviewPause"
    .parameter "bFixedMaxFPS"

    .prologue
    const/16 v7, 0x7530

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5241
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNSLandBurstmodes open:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " disablepreviewPause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bFixedMaxFPS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5243
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---setNSLandBurstmodes---mActivity.mSupportNSL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v3, v3, Lcom/android/camera/CameraActivity;->mSupportNSL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5244
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mSupportNSL:Z

    if-eqz v1, :cond_3

    .line 5245
    invoke-static {}, Lcom/android/camera/ProductConfig;->isHaveNVCAMERA()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5246
    if-eqz p1, :cond_4

    .line 5247
    iput v6, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    .line 5252
    :goto_0
    if-eqz p2, :cond_5

    .line 5254
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "nv-disable-preview-pause"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5259
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/YLParametersHelper;->getNSLBurstCount(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    .line 5263
    .local v0, CurrentCount:I
    iget v1, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    if-eq v0, v1, :cond_3

    .line 5274
    iget v1, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    if-lez v1, :cond_0

    .line 5275
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mNSLBufferNeeded:I

    .line 5277
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/YLParametersHelper;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mNSLBufferNeeded:I

    if-eq v1, v2, :cond_0

    .line 5278
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mNSLBufferNeeded:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/YLParametersHelper;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    .line 5279
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5280
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5281
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 5284
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/YLParametersHelper;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    if-ge v1, v2, :cond_0

    .line 5285
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough NSL buffers able to be set. set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/YLParametersHelper;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5288
    iput v5, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    .line 5293
    :cond_0
    iget v1, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    if-nez v1, :cond_6

    .line 5294
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v6}, Lcom/android/camera/YLParametersHelper;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 5298
    :goto_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/YLParametersHelper;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 5299
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v5}, Lcom/android/camera/YLParametersHelper;->setNSLSkipCount(Landroid/hardware/Camera$Parameters;I)V

    .line 5300
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v5}, Lcom/android/camera/YLParametersHelper;->setSkipCount(Landroid/hardware/Camera$Parameters;I)V

    .line 5303
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFPSRange:[I

    if-nez v1, :cond_1

    .line 5304
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFPSRange:[I

    .line 5305
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewFPSRange:[I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 5308
    :cond_1
    if-eqz p3, :cond_7

    .line 5311
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v7, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 5318
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5321
    iget v1, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    if-nez v1, :cond_3

    .line 5322
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/YLParametersHelper;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    .line 5323
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5337
    .end local v0           #CurrentCount:I
    :cond_3
    :goto_4
    return-void

    .line 5249
    :cond_4
    iput v5, p0, Lcom/android/camera/PhotoModule;->mNSLBurstCount:I

    goto/16 :goto_0

    .line 5257
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "nv-disable-preview-pause"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5296
    .restart local v0       #CurrentCount:I
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v5}, Lcom/android/camera/YLParametersHelper;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_2

    .line 5314
    :cond_7
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFPSRange:[I

    if-eqz v1, :cond_2

    .line 5315
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewFPSRange:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreviewFPSRange:[I

    aget v3, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_3

    .line 5327
    .end local v0           #CurrentCount:I
    :cond_8
    if-eqz p1, :cond_9

    .line 5328
    const-string v1, "CAM_PhotoModule"

    const-string v2, "set zsl mode on!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5329
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "zsl"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5334
    :goto_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_4

    .line 5331
    :cond_9
    const-string v1, "CAM_PhotoModule"

    const-string v2, "set zsl mode off!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5332
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "zsl"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 3388
    const/4 v5, 0x4

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    aput-object v6, v3, v5

    .line 3390
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

    .line 3391
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    .line 3392
    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 3390
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3394
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 2736
    return-void
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 5889
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 5890
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 5891
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    .line 5892
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    .line 5894
    :cond_0
    return-void
.end method

.method private setupPreview(Z)V
    .locals 3
    .parameter "bRecovery"

    .prologue
    const/4 v2, 0x1

    .line 5034
    const-string v0, "CAM_PhotoModule"

    const-string v1, "setupPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    iget v0, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    if-gt v0, v2, :cond_0

    .line 5040
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 5043
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 5044
    iget v0, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    if-nez v0, :cond_2

    .line 5045
    if-eqz p1, :cond_1

    .line 5046
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 5048
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 5050
    :cond_2
    return-void
.end method

.method private setupShot2ShotSound()V
    .locals 7

    .prologue
    .line 4349
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 4351
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    .line 4352
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;

    if-nez v0, :cond_0

    .line 4353
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;

    .line 4357
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_2

    .line 4398
    :cond_1
    :goto_0
    return-void

    .line 4362
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 4363
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4364
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 4365
    const-string v0, "CAM_PhotoModule"

    const-string v1, "delay sound is playing, stop it."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4368
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4370
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->afd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 4373
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4383
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 4384
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShot2ShotSoundplayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/camera/PhotoModule$12;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$12;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_0

    .line 4375
    :catch_0
    move-exception v6

    .line 4376
    .local v6, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 4379
    .end local v6           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 4380
    .restart local v6       #ex:Ljava/lang/Exception;
    const-string v0, "CAM_PhotoModule"

    const-string v1, ">>>>>>>>>>>>>>>create mShot2ShotSoundplayer is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showFocusIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7860
    const-string v0, "CAM_PhotoModule"

    const-string v1, "show focus!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7861
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    if-eqz v0, :cond_0

    .line 7862
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusIndicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7863
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setVisibility(I)V

    .line 7865
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    .line 7866
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 7868
    :cond_1
    return-void
.end method

.method private showGifCapturingUI(Z)V
    .locals 2
    .parameter "gifCapturing"

    .prologue
    .line 2545
    if-eqz p1, :cond_0

    .line 2546
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2547
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2549
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2555
    :goto_0
    return-void

    .line 2551
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2552
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2553
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showPostCaptureAlert()V
    .locals 4

    .prologue
    .line 5901
    const-string v1, "CAM_PhotoModule"

    const-string v2, "showPostCaptureAlert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5902
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_1

    .line 5905
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mReviewModuleLayout:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5906
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5907
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5908
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5909
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 5911
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>view width<<<< :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mReviewModuleLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5912
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5914
    .local v0, color:I
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mReviewModuleLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5916
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mReviewImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5918
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGridLine:Lcom/android/camera/ui/GridLine;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GridLine;->setVisibility(I)V

    .line 5923
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v1, :cond_0

    .line 5924
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v1}, Lcom/android/camera/SelfCamera;->pauseShutterGuide()V

    .line 5925
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    .line 5932
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5934
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5937
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5939
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 5940
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5941
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mbPostCaptureAlertShowed:Z

    .line 5943
    .end local v0           #color:I
    :cond_1
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 5

    .prologue
    .line 7084
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0182

    iget v4, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 7087
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7088
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7089
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7090
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 3

    .prologue
    .line 1437
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 5

    .prologue
    .line 5147
    const-string v3, "CAM_PhotoModule"

    const-string v4, "startPreview"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->setCpuClientBeforeStartPreview()V

    .line 5150
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/PhotoModule$CameraErrorCallback;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 5155
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 5156
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 5158
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 5160
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v3, :cond_2

    .line 5163
    const-string v3, "continuous-picture"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5165
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 5167
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 5169
    :cond_2
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 5171
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_b

    .line 5172
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v3, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    .line 5173
    .local v1, screenNail:Lcom/android/camera/CameraScreenNail;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    if-nez v3, :cond_8

    .line 5174
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5175
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_7

    .line 5176
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 5180
    :goto_0
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 5181
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 5183
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->hasValidedScreenNail()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5184
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 5186
    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    .line 5199
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 5200
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 5206
    .end local v1           #screenNail:Lcom/android/camera/CameraScreenNail;
    :goto_2
    const-string v3, "CAM_PhotoModule"

    const-string v4, "startPreview"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5207
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v3, :cond_5

    .line 5208
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v3}, Lcom/android/camera/CameraEffectModule;->onResume()V

    .line 5210
    :cond_5
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v3, :cond_6

    .line 5211
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v3}, Lcom/android/camera/CameraEffectModule;->onResume()V

    .line 5213
    :cond_6
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 5215
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 5217
    return-void

    .line 5178
    .restart local v1       #screenNail:Lcom/android/camera/CameraScreenNail;
    .restart local v2       #size:Landroid/hardware/Camera$Size;
    :cond_7
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_0

    .line 5188
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_8
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 5189
    .local v0, Previewsize:Landroid/hardware/Camera$Size;
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, v4, :cond_9

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v3

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v3, v4, :cond_4

    .line 5191
    :cond_9
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_a

    .line 5192
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 5196
    :goto_3
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    goto :goto_1

    .line 5194
    :cond_a
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_3

    .line 5202
    .end local v0           #Previewsize:Landroid/hardware/Camera$Size;
    .end local v1           #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_b
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 5203
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    goto :goto_2
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5220
    const-string v0, "CAM_PhotoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5221
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_0

    .line 5222
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->onPause()V

    .line 5224
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_1

    .line 5225
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->onPause()V

    .line 5227
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_2

    .line 5228
    const-string v0, "CAM_PhotoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5229
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 5230
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->setCpuClientAfterStopPreview()V

    .line 5231
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 5233
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 5234
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_3

    .line 5235
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 5236
    :cond_3
    return-void
.end method

.method private switchCamera()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6822
    iget-boolean v6, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6823
    :cond_0
    sget-boolean v4, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v4, :cond_1

    .line 6824
    invoke-static {v10}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    .line 6936
    :cond_1
    :goto_0
    return-void

    .line 6829
    :cond_2
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v7, "switchCamera"

    const-string v8, "click"

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6830
    const-string v6, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start to switch camera. id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6831
    iget v6, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    iput v6, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 6832
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v7, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iput v7, v6, Lcom/android/camera/CameraActivity;->mCameraId:I

    .line 6833
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 6835
    iput-object v9, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 6836
    iget v6, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    iput v6, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidthOld:I

    .line 6837
    iget v6, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    iput v6, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeightOld:I

    .line 6839
    iget v6, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v4, v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v6, :cond_3

    .line 6840
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v6}, Lcom/android/camera/SelfCamera;->stopShutterGuide()V

    .line 6841
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    .line 6842
    iput-object v9, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    .line 6846
    :cond_3
    iget v6, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v6, v4, :cond_4

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v6, v6, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v7, "beautyshot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v6, v6, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v7, "pickaction"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v6, v6, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v7, "self_capture_2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v6, v6, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v7, "self_capture_1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6851
    :cond_5
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v7, "none"

    iput-object v7, v6, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 6854
    :cond_6
    const-string v6, "none"

    invoke-virtual {p0, v6}, Lcom/android/camera/PhotoModule;->loadImageEffectPlugin(Ljava/lang/String;)V

    .line 6855
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->unloadVendorStatisPlugin()V

    .line 6858
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 6859
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    .line 6860
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v6, :cond_7

    .line 6861
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v6}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 6862
    :cond_7
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v6, :cond_8

    .line 6863
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 6865
    :cond_8
    iput-object v9, p0, Lcom/android/camera/PhotoModule;->mPreviewFPSRange:[I

    .line 6867
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v8, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 6868
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v6}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 6870
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v7, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v6, v7}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 6871
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6879
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 6880
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v1, v6, v7

    .line 6881
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v4, :cond_d

    move v2, v4

    .line 6882
    .local v2, mirror:Z
    :goto_1
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v6, v2}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 6883
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6885
    invoke-direct {p0, v4, v4, v5}, Lcom/android/camera/PhotoModule;->setNSLandBurstmodes(ZZZ)V

    .line 6886
    iput-object v9, p0, Lcom/android/camera/PhotoModule;->mPictureSizeForGifCapture:Ljava/lang/String;

    .line 6889
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 6892
    invoke-direct {p0, v4}, Lcom/android/camera/PhotoModule;->setupPreview(Z)V

    .line 6903
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->getOptimizedPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 6904
    .local v3, optimalSize:Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidthOld:I

    if-ne v4, v6, :cond_9

    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeightOld:I

    if-eq v4, v6, :cond_a

    .line 6905
    :cond_9
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_a

    .line 6906
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1e

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6910
    :cond_a
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_b

    .line 6911
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6915
    :cond_b
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    .line 6919
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 6921
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 6923
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    .line 6924
    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v4, :cond_c

    .line 6925
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v5, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    iget v6, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/CameraActivity;->resizeForCameraSnail(II)V

    .line 6926
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mGridLine:Lcom/android/camera/ui/GridLine;

    iget v5, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    iget v6, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ui/GridLine;->setPreviewParameters(II)V

    .line 6930
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6932
    :cond_c
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6933
    sget-boolean v4, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v4, :cond_1

    .line 6934
    invoke-static {v10}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    goto/16 :goto_0

    .line 6872
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    .end local v3           #optimalSize:Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v0

    .line 6873
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e014c

    invoke-static {v4, v5}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 6875
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 6876
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e014d

    invoke-static {v4, v5}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .end local v0           #e:Lcom/android/camera/CameraDisabledException;
    .restart local v1       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_d
    move v2, v5

    .line 6881
    goto/16 :goto_1
.end method

.method private syncOpenPreview()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5054
    iget v0, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    if-gt v0, v1, :cond_0

    .line 5055
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 5058
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->syncStartPreview()V

    .line 5059
    iget v0, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    if-nez v0, :cond_1

    .line 5060
    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 5061
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 5063
    :cond_1
    return-void
.end method

.method private syncStartPreview()V
    .locals 5

    .prologue
    .line 5066
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->setCpuClientBeforeStartPreview()V

    .line 5067
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/PhotoModule$CameraErrorCallback;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 5069
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 5071
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_7

    .line 5072
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v3, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    .line 5073
    .local v1, screenNail:Lcom/android/camera/CameraScreenNail;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 5074
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5075
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_3

    .line 5076
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 5080
    :goto_0
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 5081
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 5082
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 5083
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    .line 5096
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 5097
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 5104
    .end local v1           #screenNail:Lcom/android/camera/CameraScreenNail;
    :goto_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v3, :cond_1

    .line 5105
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v3}, Lcom/android/camera/CameraEffectModule;->onResume()V

    .line 5108
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v3, :cond_2

    .line 5109
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v3}, Lcom/android/camera/CameraEffectModule;->onResume()V

    .line 5111
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewSync()V

    .line 5112
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 5113
    return-void

    .line 5078
    .restart local v1       #screenNail:Lcom/android/camera/CameraScreenNail;
    .restart local v2       #size:Landroid/hardware/Camera$Size;
    :cond_3
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_0

    .line 5085
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 5086
    .local v0, Previewsize:Landroid/hardware/Camera$Size;
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, v4, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v3

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v3, v4, :cond_0

    .line 5088
    :cond_5
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_6

    .line 5089
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 5093
    :goto_3
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    goto :goto_1

    .line 5091
    :cond_6
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_3

    .line 5099
    .end local v0           #Previewsize:Landroid/hardware/Camera$Size;
    .end local v1           #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_7
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 5100
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    goto :goto_2
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 5822
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 5823
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 5824
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5825
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 5831
    .end local v0           #mode:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 5828
    .restart local v0       #mode:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 6

    .prologue
    .line 5343
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 5344
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 5345
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 5346
    .local v1, max:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 5349
    .end local v1           #max:Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "recording-hint"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5353
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-stabilization-supported"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5354
    .local v2, vstabSupported:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5355
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-stabilization"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5366
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 29

    .prologue
    .line 5522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_picturesize_key"

    const/16 v27, 0x0

    invoke-static/range {v24 .. v27}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5524
    .local v14, pictureSize:Ljava/lang/String;
    if-nez v14, :cond_14

    .line 5525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 5535
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->getOptimizedPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 5538
    .local v12, optimalSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 5539
    .local v13, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v13, v12}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 5541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v25, "video-size"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "x"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 5544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 5545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/camera/CameraEffectModule;->onPause()V

    .line 5547
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 5548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/camera/CameraEffectModule;->onPause()V

    .line 5553
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5556
    :cond_2
    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    .line 5557
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    .line 5559
    const-string v24, "CAM_PhotoModule"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Preview size is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5561
    sget-boolean v24, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v24, :cond_4

    .line 5562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/camera/CameraScreenNail;

    .line 5563
    .local v18, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v24

    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v24

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 5565
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    move/from16 v24, v0

    move/from16 v0, v24

    rem-int/lit16 v0, v0, 0xb4

    move/from16 v24, v0

    if-nez v24, :cond_15

    .line 5566
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 5570
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 5576
    .end local v18           #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/PhotoModule;->mbAntiShaking:Z

    move/from16 v24, v0

    if-eqz v24, :cond_16

    .line 5577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 5578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 5597
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setFocusAreasIfSupported()V

    .line 5598
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setMeteringAreasIfSupported()V

    .line 5603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e0170

    invoke-virtual/range {v27 .. v28}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v27}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5608
    .local v6, hdr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "hdr"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 5610
    const-string v6, "on"

    .line 5614
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0162

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 5615
    const-string v24, "hdr"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5622
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 5623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 5624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 5629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5640
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_shutter_sound_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e0259

    invoke-virtual/range {v27 .. v28}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v27}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 5643
    .local v19, shutterSound:Ljava/lang/String;
    const-string v24, "1"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 5644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v25, "mute-shutter"

    const-string v26, "false"

    invoke-virtual/range {v24 .. v26}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/GifCapture;->getIsOn()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 5647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/GifCapture;->setNeedPlaySound(Z)V

    .line 5649
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/camera/CameraActivity;->mbShutterMuteed:Z

    .line 5661
    :goto_5
    const/4 v15, 0x0

    .line 5662
    .local v15, qualityvalue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_jpegquality_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e0269

    invoke-virtual/range {v27 .. v28}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v27}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 5665
    .local v20, strjpegQuality:Ljava/lang/String;
    const-string v24, "superfine"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 5666
    const/4 v15, 0x2

    .line 5672
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v15}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v9

    .line 5674
    .local v9, jpegQuality:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 5680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v23

    .line 5681
    .local v23, value:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v10

    .line 5682
    .local v10, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v11

    .line 5683
    .local v11, min:I
    move/from16 v0, v23

    if-lt v0, v11, :cond_1f

    move/from16 v0, v23

    if-gt v0, v10, :cond_1f

    .line 5684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 5690
    :goto_7
    const-string v24, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_24

    .line 5692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_flashmode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e0285

    invoke-virtual/range {v27 .. v28}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v27}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5696
    .local v5, flashMode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "gifcapture"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 5698
    :cond_8
    const-string v5, "off"

    .line 5701
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v22

    .line 5702
    .local v22, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 5703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5704
    const-string v24, "CAM_PhotoModule"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "update camera parameter>>>>set flash-mode :"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5712
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v5, v0, Lcom/android/camera/CameraActivity;->mCurrendFlashMode:Ljava/lang/String;

    .line 5718
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e01ff

    invoke-virtual/range {v27 .. v28}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v27}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    .line 5722
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_effect_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e0206

    invoke-virtual/range {v27 .. v28}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v27}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    .line 5725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "none"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "hdr"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "nightshot"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_21

    .line 5732
    :cond_b
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentEffectModeOverried:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "hdr_art"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "hdr"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 5734
    const-string v24, "none"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    .line 5737
    :cond_c
    const-string v24, "CAM_PhotoModule"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "--updateCameraParametersPreference()----------mColorEffect="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5739
    const-string v24, "CAM_PhotoModule"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "--updateCameraParametersPreference()----------mWhiteBalance="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v24

    if-eqz v24, :cond_22

    const-string v24, "none"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "hdr_art"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_22

    .line 5744
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 5745
    const-string v24, "CAM_PhotoModule"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mWhiteBalance="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5754
    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v24

    if-eqz v24, :cond_23

    const-string v24, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 5756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 5761
    :cond_f
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5763
    const-string v24, "CAM_PhotoModule"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ">>>set-focus-mode:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5774
    .end local v5           #flashMode:Ljava/lang/String;
    .end local v22           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_iso_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e022f

    invoke-virtual/range {v27 .. v28}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v27}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5779
    .local v8, isoStr:Ljava/lang/String;
    if-eqz v8, :cond_10

    .line 5780
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 5781
    .local v7, iso:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/YLParametersHelper;->YLsetIso(Landroid/hardware/Camera$Parameters;I)V

    .line 5785
    .end local v7           #iso:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_saturation_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e0236

    invoke-virtual/range {v27 .. v28}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v27}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 5789
    .local v17, saturationStr:Ljava/lang/String;
    if-eqz v17, :cond_11

    .line 5790
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 5791
    .local v16, saturation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/YLParametersHelper;->YLsetSaturation(Landroid/hardware/Camera$Parameters;I)V

    .line 5796
    .end local v16           #saturation:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_contrast_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e0244

    invoke-virtual/range {v27 .. v28}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v27}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5800
    .local v4, contrastStr:Ljava/lang/String;
    if-eqz v4, :cond_12

    .line 5801
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5802
    .local v3, contrast:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/YLParametersHelper;->YLsetContrast(Landroid/hardware/Camera$Parameters;I)V

    .line 5806
    .end local v3           #contrast:I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    sget-boolean v24, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v24, :cond_13

    .line 5807
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateAutoFocusMoveCallback()V

    .line 5812
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x10

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5818
    return-void

    .line 5528
    .end local v4           #contrastStr:Ljava/lang/String;
    .end local v6           #hdr:Ljava/lang/String;
    .end local v8           #isoStr:Ljava/lang/String;
    .end local v9           #jpegQuality:I
    .end local v10           #max:I
    .end local v11           #min:I
    .end local v12           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v13           #original:Landroid/hardware/Camera$Size;
    .end local v15           #qualityvalue:I
    .end local v17           #saturationStr:Ljava/lang/String;
    .end local v19           #shutterSound:Ljava/lang/String;
    .end local v20           #strjpegQuality:Ljava/lang/String;
    .end local v23           #value:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v21

    .line 5529
    .local v21, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_0

    .line 5568
    .end local v21           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v12       #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v13       #original:Landroid/hardware/Camera$Size;
    .restart local v18       #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_15
    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto/16 :goto_1

    .line 5580
    .end local v18           #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/PhotoModule;->mbacketCapture:Z

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 5581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 5582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    goto/16 :goto_2

    .line 5584
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 5585
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 5587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v23

    .line 5588
    .restart local v23       #value:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v10

    .line 5589
    .restart local v10       #max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v11

    .line 5590
    .restart local v11       #min:I
    move/from16 v0, v23

    if-lt v0, v11, :cond_18

    move/from16 v0, v23

    if-gt v0, v10, :cond_18

    .line 5591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto/16 :goto_2

    .line 5593
    :cond_18
    const-string v24, "CAM_PhotoModule"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "invalid exposure range: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5617
    .end local v10           #max:I
    .end local v11           #min:I
    .end local v23           #value:I
    .restart local v6       #hdr:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v25, v0

    const-string v26, "pref_camera_scenemode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e01ef

    invoke-virtual/range {v27 .. v28}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v27}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_3

    .line 5633
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_6

    .line 5635
    const-string v24, "auto"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_4

    .line 5651
    .restart local v19       #shutterSound:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v25, "mute-shutter"

    const-string v26, "true"

    invoke-virtual/range {v24 .. v26}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/GifCapture;->getIsOn()Z

    move-result v24

    if-eqz v24, :cond_1c

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 5654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/GifCapture;->setNeedPlaySound(Z)V

    .line 5656
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/camera/CameraActivity;->mbShutterMuteed:Z

    goto/16 :goto_5

    .line 5667
    .restart local v15       #qualityvalue:I
    .restart local v20       #strjpegQuality:Ljava/lang/String;
    :cond_1d
    const-string v24, "fine"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 5668
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 5670
    :cond_1e
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 5686
    .restart local v9       #jpegQuality:I
    .restart local v10       #max:I
    .restart local v11       #min:I
    .restart local v23       #value:I
    :cond_1f
    const-string v24, "CAM_PhotoModule"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "invalid exposure range: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 5706
    .restart local v5       #flashMode:Ljava/lang/String;
    .restart local v22       #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    .line 5707
    if-nez v5, :cond_a

    .line 5708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0e0286

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    .line 5730
    :cond_21
    const-string v24, "none"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    goto/16 :goto_9

    .line 5747
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    .line 5748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_e

    .line 5749
    const-string v24, "auto"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    goto/16 :goto_a

    .line 5757
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "hdr_art"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 5758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v25, "none"

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 5765
    .end local v5           #flashMode:Ljava/lang/String;
    .end local v22           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v25, "auto"

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 5767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v25, "none"

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 5769
    const-string v24, "CAM_PhotoModule"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "2222--------mParameters.getWhiteBalance()="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    const-string v24, "CAM_PhotoModule"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "2222---------mParameters.getColorEffect()="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 5370
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5371
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 5373
    :cond_0
    return-void
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 7117
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 7141
    :goto_0
    return-void

    .line 7118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    goto :goto_0
.end method

.method private updateCaptureMode()V
    .locals 4

    .prologue
    .line 5418
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v1, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 5419
    .local v0, captureModeStr:Ljava/lang/String;
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------------updateCaptureMode---captureModeStr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5425
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->loadImageEffectPlugin(Ljava/lang/String;)V

    .line 5427
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->handleSelfCatpure(Ljava/lang/String;)V

    .line 5429
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->handleGIFCatpure(Ljava/lang/String;)V

    .line 5431
    return-void
.end method

.method private updateCaptureModeByCameraId()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3024
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_continuemode_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e021c

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3029
    .local v0, contineCaptureStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_delay_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0221

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3032
    .local v1, delayCaptureStr:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3033
    .local v2, delaySeconds:I
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v3, v9, :cond_0

    .line 3035
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "self_capture_1"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3038
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "self_capture_2"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3043
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "pickaction"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3045
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "panorama"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3065
    :goto_0
    return-void

    .line 3049
    :cond_0
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 3050
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "self_capture_1"

    invoke-static {v3, v4, v5, v9}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3053
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "self_capture_2"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3057
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "pickaction"

    invoke-static {v3, v4, v5, v9}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3060
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "panorama"

    invoke-static {v3, v4, v5, v9}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateCaptureModeByIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3197
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 3199
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_capturemode_key"

    const-string v2, "panorama"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3202
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_continuemode_key"

    const-string v2, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3207
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_capturemode_key"

    const-string v2, "gifcapture"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3208
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_capturemode_key"

    const-string v2, "pickaction"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3209
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_capturemode_key"

    const-string v2, "pickclear"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3210
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_capturemode_key"

    const-string v2, "bestpick"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3211
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_capturemode_key"

    const-string v2, "audio_image"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3214
    :cond_0
    return-void
.end method

.method private updateFlashModeByCaptureMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3068
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_capturemode_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e01de

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3071
    .local v0, captureModeStr:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z

    if-nez v1, :cond_1

    .line 3072
    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bestpick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "beautyshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gifcapture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pickaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pickclear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v1, v6, :cond_2

    .line 3080
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_flashmode_key"

    const-string v3, "off"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3094
    :cond_1
    :goto_0
    return-void

    .line 3082
    :cond_2
    const-string v1, "nightshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3083
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_flashmode_key"

    const-string v3, "off"

    invoke-static {v1, v2, v3, v6}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3087
    :cond_3
    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->oldCaptureMode:Ljava/lang/String;

    const-string v2, "nightshot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3089
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_flashmode_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v6}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateOverrideSetting()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2868
    const-string v3, "CAM_PhotoModule"

    const-string v4, "-----updateOverrideSetting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_capturemode_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e01de

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2874
    .local v0, captureModeStr:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->dynamiclimitedHdrArt(Ljava/lang/String;)V

    .line 2875
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingBySceneMode()V

    .line 2879
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Storage;->hasRemovableSD(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2880
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_storage_path_key"

    const-string v5, "internal"

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2883
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByDelayCapture()V

    .line 2884
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCaptureModeByCameraId()V

    .line 2885
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCaptureModeByIntent()V

    .line 2887
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_continuemode_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0221

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2890
    .local v1, continueCaptureStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_delay_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e021c

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2893
    .local v2, delayCaptureStr:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2894
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_delay_key"

    const-string v5, "0"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2898
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v3, :cond_2

    .line 2899
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v3}, Lcom/android/camera/ui/CameraLeftBar;->notifyDataSetChanged()V

    .line 2901
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v3, :cond_3

    .line 2902
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v3}, Lcom/android/camera/ui/BasicSettingGridView;->notifyPreferenceChanged()V

    .line 2906
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "gifcapture"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2907
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "audio_image"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2908
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "self_capture_2"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2910
    return-void

    .line 2895
    :cond_4
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2896
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_continuemode_key"

    const-string v5, "0"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateSettingByCaptureMode()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3097
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_capturemode_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e01de

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3102
    .local v0, captureModeStr:Ljava/lang/String;
    const-string v3, "hdr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "self_capture_1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gifcapture"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "nightshot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "audio_image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "bestpick"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "self_capture_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3109
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_continuemode_key"

    const-string v5, "0"

    invoke-static {v3, v4, v5, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3111
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByDelayCapture()V

    .line 3125
    :goto_0
    const-string v3, "8908"

    invoke-static {v3}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3126
    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3127
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_continuemode_key"

    const-string v5, "0"

    invoke-static {v3, v4, v5, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3129
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByDelayCapture()V

    .line 3138
    :cond_1
    :goto_1
    const-string v3, "self_capture_1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "self_capture_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3140
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_shutter_sound_key"

    const-string v5, "1"

    invoke-static {v3, v4, v5, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3148
    :goto_2
    const-string v3, "gifcapture"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3150
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_recordlocation_key"

    const-string v5, "off"

    invoke-static {v3, v4, v5, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3152
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_picturesize_key"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3154
    .local v2, picturesize:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v3, "320x240"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3158
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mPictureSizeForGifCapture:Ljava/lang/String;

    .line 3160
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_picturesize_key"

    const-string v5, "320x240"

    invoke-static {v3, v4, v5, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3190
    .end local v2           #picturesize:Ljava/lang/String;
    :goto_3
    const-string v3, "8908"

    invoke-static {v3}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3191
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->forceLimitPictureSize(Ljava/lang/String;)V

    .line 3193
    :cond_4
    return-void

    .line 3113
    :cond_5
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_delay_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0221

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3116
    .local v1, delayCaptureStr:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_6

    .line 3118
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_continuemode_key"

    invoke-static {v3, v4, v8, v9}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3121
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByDelayCapture()V

    goto/16 :goto_0

    .line 3131
    .end local v1           #delayCaptureStr:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_continuemode_key"

    invoke-static {v3, v4, v8, v9}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3133
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByDelayCapture()V

    goto/16 :goto_1

    .line 3143
    :cond_8
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_shutter_sound_key"

    invoke-static {v3, v4, v8, v9}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 3163
    :cond_9
    const-string v3, "pickaction"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3164
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_picturesize_key"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3166
    .restart local v2       #picturesize:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_picturesize_key"

    invoke-static {v3, v4, v2, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3167
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_iso_key"

    const-string v5, "3"

    invoke-static {v3, v4, v5, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 3170
    .end local v2           #picturesize:Ljava/lang/String;
    :cond_a
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_recordlocation_key"

    invoke-static {v3, v4, v8, v9}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3171
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPictureSizeForGifCapture:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 3172
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_picturesize_key"

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mPictureSizeForGifCapture:Ljava/lang/String;

    invoke-static {v3, v4, v5, v9}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3173
    iput-object v8, p0, Lcom/android/camera/PhotoModule;->mPictureSizeForGifCapture:Ljava/lang/String;

    goto/16 :goto_3

    .line 3179
    :cond_b
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_picturesize_key"

    invoke-static {v3, v4, v8, v9}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3181
    const-string v3, "8908"

    invoke-static {v3}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3182
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_picturesize_key"

    const-string v6, "4208x2368"

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3185
    .restart local v2       #picturesize:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_picturesize_key"

    invoke-static {v3, v4, v2, v9}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3187
    .end local v2           #picturesize:Ljava/lang/String;
    :cond_c
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_iso_key"

    invoke-static {v3, v4, v8, v9}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3
.end method

.method private updateSettingByDelayCapture()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2963
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_continuemode_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e021c

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2968
    .local v0, contineCaptureStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_delay_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0221

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2971
    .local v1, delayCaptureStr:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2974
    .local v2, delaySeconds:I
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_2

    .line 2975
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "self_capture_1"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2977
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "self_capture_2"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2996
    :cond_1
    :goto_0
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3000
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v9, v3, :cond_3

    .line 3001
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "hdr"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3010
    :goto_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "nightshot"

    invoke-static {v3, v4, v5, v9}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3019
    :goto_2
    return-void

    .line 2984
    :cond_2
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-nez v3, :cond_1

    .line 2985
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "self_capture_1"

    invoke-static {v3, v4, v5, v9}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2987
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "self_capture_2"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3005
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "hdr"

    invoke-static {v3, v4, v5, v9}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3013
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "hdr"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3015
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "nightshot"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private updateSettingBySceneMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2914
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_scenemode_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e01ef

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2918
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2919
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/PhotoModule;->overrideSceneSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1111---------mParameters.getWhiteBalance()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1111---------mParameters.getColorEffect()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :cond_0
    :goto_0
    return-void

    .line 2933
    :cond_1
    invoke-direct {p0, v5, v5, v5, v5}, Lcom/android/camera/PhotoModule;->overrideSceneSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_whitebalance_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e01ff

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    .line 2937
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_effect_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0206

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    .line 2941
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--updateOverrideSetting()----------mColorEffect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--updateOverrideSetting()----------mWhiteBalance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2947
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v5, v5, v0}, Lcom/android/camera/PhotoModule;->overrideSceneSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2948
    :cond_2
    const-string v0, "none"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2949
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0, v5, v5}, Lcom/android/camera/PhotoModule;->overrideSceneSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public CoverStateChange(Z)V
    .locals 2
    .parameter "open"

    .prologue
    .line 7994
    if-eqz p1, :cond_1

    .line 7995
    const-string v0, "CAM_PhotoModule"

    const-string v1, ">>>>>>>>>open the preview while cover is open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7997
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onResumeBeforeSuper()V

    .line 7998
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onResumeAfterSuper()V

    .line 8005
    :cond_0
    :goto_0
    return-void

    .line 7999
    :cond_1
    if-nez p1, :cond_0

    .line 8000
    const-string v0, "CAM_PhotoModule"

    const-string v1, ">>>>>>>>>open the preview while cover is close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8002
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onPauseBeforeSuper()V

    .line 8003
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onPauseAfterSuper()V

    goto :goto_0
.end method

.method public adviceChangeStoragePath()V
    .locals 11

    .prologue
    .line 7950
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v8, "pref_camera_storage_path_key"

    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e025e

    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7953
    .local v4, storagePath:Ljava/lang/String;
    const-string v6, "external"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7955
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e02bc

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 7956
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e02bd

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7958
    .local v3, message:Ljava/lang/String;
    new-instance v2, Lcom/android/camera/PhotoModule$18;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$18;-><init>(Lcom/android/camera/PhotoModule;)V

    .line 7975
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7976
    .local v1, DlgBuilder:Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_0

    .line 7977
    const v6, 0x1080027

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 7978
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7979
    const v6, 0x104000a

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7980
    const/high16 v6, 0x104

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7981
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7982
    .local v0, Dlg:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 7983
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 7987
    .end local v0           #Dlg:Landroid/app/AlertDialog;
    .end local v1           #DlgBuilder:Landroid/app/AlertDialog$Builder;
    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public animationCapture()V
    .locals 4

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PhotoModule$8;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$8;-><init>(Lcom/android/camera/PhotoModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2703
    return-void
.end method

.method public autoFocus()V
    .locals 2

    .prologue
    .line 4776
    const-string v0, "CAM_PhotoModule"

    const-string v1, "autoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    .line 4779
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 4780
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 4782
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 4786
    const-string v0, "CAM_PhotoModule"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4788
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4789
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 4790
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 4792
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 2577
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v0, v14, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_2

    .line 2579
    :cond_0
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v0, :cond_1

    .line 2580
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    :cond_1
    move v0, v13

    .line 2689
    :goto_0
    return v0

    .line 2584
    :cond_2
    const-string v0, "CAM_PhotoModule"

    const-string v1, "capture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2586
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_shutter_sound_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0259

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2589
    .local v9, shutterSound:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v13, v0, Lcom/android/camera/CameraActivity;->needUpdateView:Z

    .line 2590
    const-string v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2594
    .end local v9           #shutterSound:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mWhiteFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2595
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

    invoke-virtual {v0, v13}, Lcom/android/camera/ui/WhiteFrameView;->setVisibility(I)V

    .line 2597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 2598
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 2599
    iput-object v11, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 2602
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    if-ne v0, v1, :cond_a

    .line 2603
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v13}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    .line 2606
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2607
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 2608
    .local v8, loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v8}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2610
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v0, v12, :cond_4

    .line 2614
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2619
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v0, :cond_5

    .line 2620
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera;->unregisterCallback()V

    .line 2623
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2625
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v0

    if-ne v0, v12, :cond_b

    move-object v0, v11

    :goto_2
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMutablePostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    .line 2629
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->setCpuClientAfterStopPreview()V

    .line 2642
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMutablePostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    invoke-direct {v4, p0, v8}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->getFocusState()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture2(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V

    .line 2646
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v0, :cond_6

    .line 2647
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera;->pauseShutterGuide()V

    .line 2649
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mbacketCapture:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mbAntiShaking:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2650
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_7

    .line 2651
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateFlash()V

    .line 2664
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 2667
    .local v10, size:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    iget v4, v10, Landroid/hardware/Camera$Size;->width:I

    iget v5, v10, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/PhotoModule$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 2673
    iput-boolean v13, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2674
    invoke-direct {p0, v14}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2675
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v1, "bestpick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v1, "nightshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v1, "pickeraction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v1, "pickclear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2681
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/WhiteFrameView;->requestRenderer(Landroid/graphics/Rect;Lcom/android/camera/CameraModule;)V

    .line 2685
    :cond_8
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/app/GalleryApp;

    .line 2686
    .local v7, app:Lcom/android/gallery3d/app/GalleryApp;
    if-eqz v7, :cond_9

    .line 2687
    invoke-interface {v7, v11}, Lcom/android/gallery3d/app/GalleryApp;->setShortCutBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    move v0, v12

    .line 2689
    goto/16 :goto_0

    .line 2605
    .end local v7           #app:Lcom/android/gallery3d/app/GalleryApp;
    .end local v8           #loc:Landroid/location/Location;
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_a
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    goto/16 :goto_1

    .line 2625
    .restart local v8       #loc:Landroid/location/Location;
    :cond_b
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    goto/16 :goto_2
.end method

.method public captureGif()Z
    .locals 14

    .prologue
    const/4 v4, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 2461
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-ne v0, v4, :cond_2

    .line 2463
    :cond_0
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v0, :cond_1

    .line 2464
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    :cond_1
    move v0, v13

    .line 2541
    :goto_0
    return v0

    .line 2469
    :cond_2
    const-string v0, "CAM_PhotoModule"

    const-string v2, "capture"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 2471
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 2472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 2475
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {v0, v2}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    .line 2476
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2477
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    .line 2478
    .local v10, loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v10}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2481
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2483
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v0, :cond_3

    .line 2484
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera;->pauseShutterGuide()V

    .line 2493
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v0}, Lcom/android/camera/GifCapture;->getIsOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2494
    const-string v0, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture-----mGifCapture.getIsOn() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v3}, Lcom/android/camera/GifCapture;->getIsOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v0}, Lcom/android/camera/GifCapture;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2496
    const-string v0, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture-----mGifCapture.isRunning() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v3}, Lcom/android/camera/GifCapture;->isRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 2498
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 2499
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/MyTextPreferenceButton;->setVisibility(I)V

    .line 2500
    invoke-direct {p0, v12}, Lcom/android/camera/PhotoModule;->showGifCapturingUI(Z)V

    .line 2502
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideThumbnail()V

    .line 2503
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v12}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setBlockFocus(Z)V

    .line 2504
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 2505
    .local v11, size:Landroid/hardware/Camera$Size;
    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 2506
    .local v1, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    iget v4, v11, Landroid/hardware/Camera$Size;->width:I

    iget v5, v11, Landroid/hardware/Camera$Size;->height:I

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Storage;->newGifImage(Landroid/content/ContentResolver;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object v7

    .line 2508
    .local v7, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v0, p0}, Lcom/android/camera/GifCapture;->setOperationListener(Lcom/android/camera/GifCapture$OperationListener;)V

    .line 2509
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v4, v0, Lcom/android/camera/CameraActivity;->mThumbnailViewWidth:I

    iget v5, v11, Landroid/hardware/Camera$Size;->width:I

    iget v6, v11, Landroid/hardware/Camera$Size;->height:I

    iget v9, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    move-object v8, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/GifCapture;->setGifParameter(Landroid/location/Location;IIILandroid/net/Uri;Ljava/lang/String;I)V

    .line 2511
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v0}, Lcom/android/camera/GifCapture;->start()V

    .line 2531
    .end local v1           #title:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v11           #size:Landroid/hardware/Camera$Size;
    :cond_4
    :goto_1
    iput-boolean v13, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2535
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v13}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2538
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v12

    .line 2541
    goto/16 :goto_0

    .line 2513
    :cond_5
    const-string v0, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture-----mGifCapture.isRunning() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v3}, Lcom/android/camera/GifCapture;->isRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v13}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setBlockFocus(Z)V

    .line 2515
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 2516
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, v13}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 2517
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v0, v13}, Lcom/android/camera/ui/MyTextPreferenceButton;->setVisibility(I)V

    .line 2519
    invoke-direct {p0, v13}, Lcom/android/camera/PhotoModule;->showGifCapturingUI(Z)V

    .line 2520
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2521
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v12}, Lcom/android/camera/CameraActivity;->updateThumbnailView(Z)V

    .line 2524
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v0}, Lcom/android/camera/GifCapture;->stop()V

    goto :goto_1
.end method

.method public collapseCameraControls()Z
    .locals 1

    .prologue
    .line 3344
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v0, 0x1

    .line 1622
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->isKeyVolumeBeingTrigger:Z

    if-eqz v1, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return v0

    .line 1628
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 1629
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1630
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cancelShot2ShotSound()V

    .line 1631
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;

    #calls: Lcom/android/camera/PhotoModule$MyCountDownTimer;->setFinishedState(Z)V
    invoke-static {v1, v0}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->access$7800(Lcom/android/camera/PhotoModule$MyCountDownTimer;Z)V

    .line 1632
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->enterNormalShotMode()V

    .line 1633
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setupPreview(Z)V

    .line 1634
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mLatestUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->ForceUpdateShot2ShotThumb(Landroid/net/Uri;)V

    .line 1647
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1648
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1636
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1637
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->cancel()V

    .line 1638
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1639
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cancelShot2ShotSound()V

    .line 1640
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;

    #calls: Lcom/android/camera/PhotoModule$MyCountDownTimer;->setFinishedState(Z)V
    invoke-static {v1, v0}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->access$7800(Lcom/android/camera/PhotoModule$MyCountDownTimer;Z)V

    .line 1641
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->enterNormalShotMode()V

    .line 1642
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setupPreview(Z)V

    .line 1643
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mLatestUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->ForceUpdateShot2ShotThumb(Landroid/net/Uri;)V

    goto :goto_1

    .line 1650
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraLeftBar;->isListShowed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1652
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1653
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_9

    .line 1654
    iget-byte v0, p0, Lcom/android/camera/PhotoModule;->mGesturesTouch:B

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 1655
    :cond_8
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 1657
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public doCapture()V
    .locals 1

    .prologue
    .line 7337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick(Lcom/android/camera/ShutterButton;)V

    .line 7338
    return-void
.end method

.method public enterContinuousShotMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7488
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 7489
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 7492
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/YLParametersHelper;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    if-nez v0, :cond_1

    .line 7493
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/YLParametersHelper;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 7494
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/YLParametersHelper;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 7500
    :goto_0
    const-string v0, "shot2shot"

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/PhotoModule;->setShotMode(Ljava/lang/String;Z)Z

    .line 7501
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->muteNormalshutterSound(Z)V

    .line 7502
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 7504
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v0, :cond_0

    .line 7505
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera;->pauseShutterGuide()V

    .line 7508
    :cond_0
    return-void

    .line 7496
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/YLParametersHelper;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 7497
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/YLParametersHelper;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_0
.end method

.method public enterNormalShotMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7477
    const-string v0, "normal"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PhotoModule;->setShotMode(Ljava/lang/String;Z)Z

    .line 7478
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->muteNormalshutterSound(Z)V

    .line 7479
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDoContineCaptureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7480
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDoContineCaptureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7481
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 7482
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v0, :cond_1

    .line 7483
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera;->resumeShutterGuide()V

    .line 7485
    :cond_1
    return-void
.end method

.method public getModuleHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 7768
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public handleGIFCatpure(Ljava/lang/String;)V
    .locals 5
    .parameter "captureMode"

    .prologue
    .line 6027
    const-string v0, "gifcapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6028
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    if-nez v0, :cond_0

    .line 6029
    new-instance v1, Lcom/android/camera/GifCapture;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/camera/GifCapture;-><init>(Lcom/android/camera/CameraActivity;Landroid/content/ContentResolver;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    .line 6032
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/GifCapture;->setGifSize(II)V

    .line 6034
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    if-eqz v0, :cond_1

    .line 6035
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/GifCapture;->setIsOn(Z)V

    .line 6045
    :cond_1
    :goto_0
    return-void

    .line 6038
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    if-eqz v0, :cond_1

    .line 6039
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/GifCapture;->setIsOn(Z)V

    .line 6040
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v0}, Lcom/android/camera/GifCapture;->release()V

    .line 6041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    goto :goto_0
.end method

.method public handleSelfCatpure(Ljava/lang/String;)V
    .locals 8
    .parameter "person"

    .prologue
    .line 6050
    const/4 v6, 0x0

    .line 6051
    .local v6, personCount:I
    const-string v0, "self_capture_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6052
    const/4 v6, 0x2

    .line 6060
    :cond_0
    :goto_0
    if-nez v6, :cond_3

    .line 6061
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v0, :cond_1

    .line 6062
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera;->stopShutterGuide()V

    .line 6063
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    .line 6064
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    .line 6080
    :cond_1
    :goto_1
    return-void

    .line 6054
    :cond_2
    const-string v0, "self_capture_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6055
    const/4 v6, 0x1

    goto :goto_0

    .line 6068
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera;->getMode()I

    move-result v0

    if-eq v0, v6, :cond_1

    :cond_4
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-nez v0, :cond_1

    .line 6070
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 6071
    .local v7, previewSize:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-nez v0, :cond_5

    .line 6072
    new-instance v0, Lcom/android/camera/SelfCamera;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, v7, Landroid/hardware/Camera$Size;->width:I

    iget v4, v7, Landroid/hardware/Camera$Size;->height:I

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/SelfCamera;-><init>(Landroid/content/Context;Lcom/android/camera/SelfCamera$Listener;IILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    .line 6075
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    invoke-virtual {v0, v6, v1}, Lcom/android/camera/SelfCamera;->startShutterGuide(II)Z

    .line 6076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    goto :goto_1
.end method

.method public hideDelayClock()V
    .locals 2

    .prologue
    .line 7320
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDelayClock:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7321
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDelayClock:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7322
    :cond_0
    return-void
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x0

    .line 1682
    const-string v0, "CAM_PhotoModule"

    const-string v1, "hideGpsOnScreenIndicator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1684
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1687
    return-void
.end method

.method public inContinuousShotMode()Z
    .locals 3

    .prologue
    .line 7512
    const/4 v0, 0x0

    .line 7513
    .local v0, rv:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 7514
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/YLParametersHelper;->inContinuousShotMode(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    .line 7515
    .end local v0           #rv:Z
    :cond_0
    return v0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;ZZ)V
    .locals 5
    .parameter "activity"
    .parameter "parent"
    .parameter "reuseNail"
    .parameter "openCamera"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1099
    const-string v0, "CAM_PhotoModule"

    const-string v3, "init"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1102
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraActivity;->setStartupTime(J)V

    .line 1103
    iput-object p2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    .line 1104
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v3}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 1105
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 1106
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 1107
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iput v3, v0, Lcom/android/camera/CameraActivity;->mCameraId:I

    .line 1113
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1114
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1115
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initFaceEffectBtn()V

    .line 1116
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getFilterSlidingDrawer()Lcom/android/camera/ui/FilterSlidingDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    .line 1117
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 1120
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04003f

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1122
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getFocusIndicatorContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusIndicatorContainer:Landroid/widget/RelativeLayout;

    .line 1124
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIndependenceShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    .line 1125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRecordVedioButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRecordVideoBtn:Lcom/android/camera/ShutterButton;

    .line 1126
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraLeftBar()Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    .line 1128
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getPauseRecordButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    .line 1129
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStopRecordButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    .line 1131
    if-eqz p4, :cond_0

    .line 1132
    new-instance v0, Lcom/android/camera/PhotoModule$CameraStartUpThread;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 1133
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1143
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    .line 1144
    if-eqz p3, :cond_5

    .line 1145
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(ZZ)Lcom/android/gallery3d/ui/ScreenNail;

    .line 1152
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetExposureCompensation()V

    .line 1157
    if-eqz p4, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1160
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 1161
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    .line 1163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeMiscControls()V

    .line 1165
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCurrentLocation()Lcom/android/camera/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 1172
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1175
    invoke-static {}, Lcom/android/camera/ProductConfig;->getOperationsName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/ProductConfig;->isCurrentNetMode()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_7

    .line 1181
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ThumbnailSwitcher;->onShowAnimation(I)V

    .line 1183
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->installAutoTestIntentFilter()V

    .line 1184
    return-void

    :cond_4
    move v0, v2

    .line 1145
    goto :goto_0

    .line 1147
    :cond_5
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0, v1}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(ZZ)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3

    .line 1179
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->setBrightness()V

    goto :goto_2
.end method

.method public installIntentFilter()V
    .locals 3

    .prologue
    .line 3865
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3866
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3867
    new-instance v1, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3868
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3869
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->isRegisterReceiver:Z

    .line 3870
    return-void
.end method

.method public isCanGotoGallery()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 7284
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mpreShot2ShotMode:Z

    if-eqz v1, :cond_1

    .line 7285
    const-string v1, "CAM_PhotoModule"

    const-string v2, "return true in shot2shot mode isCanGotoGallery"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7293
    :cond_0
    :goto_0
    return v0

    .line 7288
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 7278
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method public isModuleIdle()Z
    .locals 1

    .prologue
    .line 7756
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    return v0
.end method

.method public isNightShotSelected()Z
    .locals 1

    .prologue
    .line 6196
    sget-boolean v0, Lcom/android/camera/PhotoModule;->isNightshotSelect:Z

    return v0
.end method

.method public loadImageEffectPlugin(Ljava/lang/String;)V
    .locals 14
    .parameter "pluginName"

    .prologue
    const/16 v13, 0x140

    const/16 v12, 0xf0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 6221
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>loading new plugin :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "old plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6222
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByCaptureMode()V

    .line 6224
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateFlashModeByCaptureMode()V

    .line 6226
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/ProductConfig;->isSupportImageEffect:Z

    if-nez v0, :cond_1

    .line 6227
    :cond_0
    invoke-direct {p0, v11}, Lcom/android/camera/PhotoModule;->dynamicChangePreviewSize(Z)V

    .line 6410
    :goto_0
    return-void

    .line 6238
    :cond_1
    iput-boolean v11, p0, Lcom/android/camera/PhotoModule;->mbacketCapture:Z

    .line 6239
    const/16 v0, 0x25

    iput-byte v0, p0, Lcom/android/camera/PhotoModule;->mModuleAction:B

    .line 6240
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6241
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "bestpick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "pickclear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6243
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v13, v12}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 6245
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "nightshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "bestpick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "audio_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "pickclear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "pickaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "beautyshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6252
    :cond_4
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-nez v0, :cond_6

    .line 6253
    invoke-direct {p0, v11}, Lcom/android/camera/PhotoModule;->setFlashModeByPlugin(Z)V

    .line 6258
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "nv-process-mode"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6259
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6260
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cleanImageEffectPlugIn()V

    .line 6261
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    .line 6262
    invoke-direct {p0, v10, v10, v11}, Lcom/android/camera/PhotoModule;->setNSLandBurstmodes(ZZZ)V

    .line 6264
    invoke-direct {p0, v11}, Lcom/android/camera/PhotoModule;->dynamicChangePreviewSize(Z)V

    goto/16 :goto_0

    .line 6255
    :cond_6
    invoke-direct {p0, v10}, Lcom/android/camera/PhotoModule;->setFlashModeByPlugin(Z)V

    goto :goto_1

    .line 6268
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    if-nez v0, :cond_8

    .line 6269
    new-instance v0, Landroid/media/ImageEffectService;

    invoke-direct {v0}, Landroid/media/ImageEffectService;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    .line 6271
    :cond_8
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    .line 6273
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cleanImageEffectPlugIn()V

    .line 6275
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "nv-process-mode"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6276
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6278
    invoke-direct {p0, v11}, Lcom/android/camera/PhotoModule;->dynamicChangePreviewSize(Z)V

    .line 6279
    const-string v0, "gifcapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "beautyshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6283
    :cond_9
    invoke-direct {p0, v10}, Lcom/android/camera/PhotoModule;->setFlashModeByPlugin(Z)V

    .line 6284
    const-string v0, "pickaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v10

    :goto_2
    invoke-direct {p0, v10, v11, v0}, Lcom/android/camera/PhotoModule;->setNSLandBurstmodes(ZZZ)V

    .line 6304
    :goto_3
    const-string v0, "beautyshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6306
    new-instance v0, Lcom/android/camera/EffectBeautyShot;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/EffectBeautyShot;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    .line 6308
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->OpenEffect()V

    .line 6378
    :cond_a
    :goto_4
    const-string v0, "bestpick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "pickclear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6380
    :cond_b
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v11, v11}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 6385
    :goto_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_23

    .line 6386
    const-string v0, "smileshutter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "pickaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6388
    :cond_c
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "nv-process-mode"

    const-string v2, "preview-mode"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6397
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6406
    :goto_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_picturesize_key"

    const-string v3, "4208x2368"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6407
    .local v8, picSize:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v9

    .line 6408
    .local v9, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8, v9, v0}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_0

    .end local v8           #picSize:Ljava/lang/String;
    .end local v9           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_e
    move v0, v11

    .line 6284
    goto :goto_2

    .line 6286
    :cond_f
    const-string v0, "pickaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6288
    :cond_10
    invoke-direct {p0, v10}, Lcom/android/camera/PhotoModule;->setFlashModeByPlugin(Z)V

    .line 6289
    const-string v0, "pickaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v10

    :goto_8
    invoke-direct {p0, v11, v11, v0}, Lcom/android/camera/PhotoModule;->setNSLandBurstmodes(ZZZ)V

    goto/16 :goto_3

    :cond_11
    move v0, v11

    goto :goto_8

    .line 6290
    :cond_12
    const-string v0, "pickclear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "audio_image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "bestpick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6293
    :cond_13
    invoke-direct {p0, v10}, Lcom/android/camera/PhotoModule;->setFlashModeByPlugin(Z)V

    .line 6294
    const-string v0, "pickaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v10

    :goto_9
    invoke-direct {p0, v11, v11, v0}, Lcom/android/camera/PhotoModule;->setNSLandBurstmodes(ZZZ)V

    goto/16 :goto_3

    :cond_14
    move v0, v11

    goto :goto_9

    .line 6297
    :cond_15
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-nez v0, :cond_16

    .line 6298
    invoke-direct {p0, v11}, Lcom/android/camera/PhotoModule;->setFlashModeByPlugin(Z)V

    goto/16 :goto_3

    .line 6300
    :cond_16
    invoke-direct {p0, v10}, Lcom/android/camera/PhotoModule;->setFlashModeByPlugin(Z)V

    goto/16 :goto_3

    .line 6311
    :cond_17
    const-string v0, "nightshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6314
    new-instance v0, Lcom/android/camera/EffectNightShot;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getDynamicRootView()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/EffectNightShot;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    .line 6317
    iput-boolean v10, p0, Lcom/android/camera/PhotoModule;->mbacketCapture:Z

    .line 6318
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->OpenEffect()V

    .line 6319
    const/16 v0, 0x36

    iput-byte v0, p0, Lcom/android/camera/PhotoModule;->mModuleAction:B

    .line 6320
    const-string v0, "pickaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :goto_a
    invoke-direct {p0, v11, v11, v10}, Lcom/android/camera/PhotoModule;->setNSLandBurstmodes(ZZZ)V

    goto/16 :goto_4

    :cond_18
    move v10, v11

    goto :goto_a

    .line 6322
    :cond_19
    const-string v0, "bestpick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6325
    new-instance v0, Lcom/android/camera/EffectBestPic;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getDynamicRootView()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/EffectBestPic;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    .line 6327
    iput-boolean v10, p0, Lcom/android/camera/PhotoModule;->mbacketCapture:Z

    .line 6328
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->OpenEffect()V

    .line 6329
    const/16 v0, 0x9

    iput-byte v0, p0, Lcom/android/camera/PhotoModule;->mModuleAction:B

    goto/16 :goto_4

    .line 6331
    :cond_1a
    const-string v0, "hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6332
    new-instance v0, Lcom/android/camera/EffectArcsoftHdr;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getDynamicRootView()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/EffectArcsoftHdr;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    .line 6335
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_effect_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0206

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6338
    .local v6, effect:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->GetEffectParameter()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;

    .line 6339
    .local v7, hdrPara:Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;
    const-string v0, "hdr_art"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;->bArt:Z

    .line 6341
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0, v7}, Lcom/android/camera/CameraEffectModule;->SetEffectParameter(Ljava/lang/Object;)V

    .line 6343
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->OpenEffect()V

    .line 6344
    const/16 v0, 0x16

    iput-byte v0, p0, Lcom/android/camera/PhotoModule;->mModuleAction:B

    .line 6345
    iput-boolean v10, p0, Lcom/android/camera/PhotoModule;->mbacketCapture:Z

    goto/16 :goto_4

    .line 6347
    .end local v6           #effect:Ljava/lang/String;
    .end local v7           #hdrPara:Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;
    :cond_1b
    const-string v0, "smileshutter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6349
    new-instance v0, Lcom/android/camera/EffectSmileShot;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/EffectSmileShot;-><init>(Landroid/os/Handler;Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    .line 6350
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->OpenEffect()V

    .line 6351
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/FaceView;->setSmileMode(Z)V

    goto/16 :goto_4

    .line 6353
    :cond_1c
    const-string v0, "pickaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6354
    new-instance v0, Lcom/android/camera/EffectPickAction;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getDynamicRootView()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/EffectPickAction;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    .line 6356
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->OpenEffect()V

    .line 6357
    const/16 v0, 0x29

    iput-byte v0, p0, Lcom/android/camera/PhotoModule;->mModuleAction:B

    goto/16 :goto_4

    .line 6358
    :cond_1d
    const-string v0, "pickclear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6359
    new-instance v0, Lcom/android/camera/EffectPickClear;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getDynamicRootView()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/EffectPickClear;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    .line 6361
    iput-boolean v10, p0, Lcom/android/camera/PhotoModule;->mbacketCapture:Z

    .line 6362
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->OpenEffect()V

    .line 6363
    const/16 v0, 0x38

    iput-byte v0, p0, Lcom/android/camera/PhotoModule;->mModuleAction:B

    goto/16 :goto_4

    .line 6364
    :cond_1e
    const-string v0, "perfect365"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6365
    new-instance v0, Lcom/android/camera/EffectPerfect365Action;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/EffectPerfect365Action;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    .line 6367
    const/16 v0, 0x1c

    iput-byte v0, p0, Lcom/android/camera/PhotoModule;->mModuleAction:B

    goto/16 :goto_4

    .line 6368
    :cond_1f
    const-string v0, "audio_image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6369
    const-string v0, "CAM_PhotoModule"

    const-string v1, "load plugin audio_image!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6372
    new-instance v0, Lcom/android/camera/EffectAudioImage;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getDynamicRootView()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/EffectAudioImage;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    .line 6374
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->OpenEffect()V

    .line 6375
    const/16 v0, 0x32

    iput-byte v0, p0, Lcom/android/camera/PhotoModule;->mModuleAction:B

    goto/16 :goto_4

    .line 6382
    :cond_20
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v13, v12}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    goto/16 :goto_5

    .line 6389
    :cond_21
    const-string v0, "pickclear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6390
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "nv-process-mode"

    const-string v2, "raw-multi-mode"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 6391
    :cond_22
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "perfect365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v1, "audio_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6393
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set plugin mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6394
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "nv-process-mode"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 6401
    :cond_23
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "nv-process-mode"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6402
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_7
.end method

.method public loadVendorStatisPlugin()V
    .locals 5

    .prologue
    .line 6201
    sget-boolean v0, Lcom/android/camera/ProductConfig;->isSupportImageEffect:Z

    if-eqz v0, :cond_1

    .line 6202
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    if-nez v0, :cond_0

    .line 6203
    new-instance v0, Lcom/android/camera/EffectVendorStatis;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/EffectVendorStatis;-><init>(Landroid/os/Handler;Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    .line 6205
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_1

    .line 6206
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->OpenEffect()V

    .line 6209
    :cond_1
    return-void
.end method

.method public muteNormalshutterSound(Z)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 7423
    if-eqz p1, :cond_0

    .line 7424
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "mute-shutter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7429
    :goto_0
    return-void

    .line 7426
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "mute-shutter"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 7154
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 4747
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult requestCode ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    packed-switch p1, :pswitch_data_0

    .line 4767
    :goto_0
    return-void

    .line 4751
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4752
    .local v1, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 4753
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4754
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 4755
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4758
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, p2, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 4759
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V

    .line 4761
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "crop-temp"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4762
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 4749
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 7722
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_0

    .line 7723
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->onAnimationEnd()V

    .line 7725
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAnimation:Z

    .line 7726
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 7763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAnimation:Z

    .line 7764
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4871
    const-string v1, "CAM_PhotoModule"

    const-string v2, "onBackPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_1

    .line 4873
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4875
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doCancel()V

    .line 4889
    :cond_0
    :goto_0
    return v0

    .line 4878
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v1}, Lcom/android/camera/CameraEffectModule;->isProcessOver()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4880
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->onBackPressed()Z

    move-result v0

    goto :goto_0

    .line 4881
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4883
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_3

    .line 4884
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->cancelDelayCapture()V

    .line 4885
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    goto :goto_0

    .line 4889
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v3, 0x4

    .line 6756
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6758
    :cond_0
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v0, :cond_1

    .line 6759
    invoke-static {v3}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    .line 6775
    :cond_1
    :goto_0
    return-void

    .line 6764
    :cond_2
    iput p1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 6765
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_3

    .line 6766
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6769
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 6771
    invoke-direct {p0, v3}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    goto :goto_0

    .line 6773
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 6964
    return-void
.end method

.method public onClick(Landroid/view/View;Lcom/android/camera/IconListPreference;)V
    .locals 3
    .parameter "view"
    .parameter "pref"

    .prologue
    const/4 v2, 0x4

    .line 7701
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->dismissPop()V

    .line 7702
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v0, :cond_0

    .line 7703
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraLeftBar;->dismissPupup()Z

    .line 7706
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 7707
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 7708
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->showPopupWindow()V

    .line 7709
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FilterSlidingDrawer;->setVisibility(I)V

    .line 7717
    :goto_0
    return-void

    .line 7712
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 7713
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow()Z

    .line 7714
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;Lcom/android/camera/PreferenceGroup;)V
    .locals 0
    .parameter "view"
    .parameter "group"

    .prologue
    .line 7695
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4619
    const-string v2, "CAM_PhotoModule"

    const-string v5, "onConfigurationChanged"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4621
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 4623
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4624
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4625
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04003f

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4628
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 4630
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    .line 4631
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeMiscControls()V

    .line 4634
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIndependenceShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    .line 4635
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraLeftBar()Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    .line 4646
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initFaceEffectBtn()V

    .line 4648
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 4658
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 4659
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 4663
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v2, :cond_0

    .line 4664
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 4665
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 4666
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v5, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 4667
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v1, v2, v5

    .line 4668
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 4669
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 4670
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v2, :cond_0

    .line 4671
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 4673
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeRenderOverlay()V

    .line 4674
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->onFullScreenChanged(Z)V

    .line 4676
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mbPostCaptureAlertShowed:Z

    if-eqz v2, :cond_3

    .line 4677
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showPostCaptureAlert()V

    .line 4680
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 4681
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4683
    :cond_1
    return-void

    .restart local v1       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_2
    move v2, v4

    .line 4668
    goto :goto_0

    .line 4679
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7886
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cleanResourceAfterDestroy()V

    .line 7887
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 7888
    :cond_0
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>do close camera ondestroy with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7889
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    .line 7890
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 7893
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_3

    .line 7894
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    if-eqz v0, :cond_2

    .line 7895
    const-string v0, "CAM_PhotoModule"

    const-string v1, "imagesaver. finish >>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7897
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    .line 7899
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    if-eqz v0, :cond_3

    .line 7900
    const-string v0, "CAM_PhotoModule"

    const-string v1, "mImageNamer. finish >>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7901
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$ImageNamer;->finish()V

    .line 7902
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 7903
    const-string v0, "CAM_PhotoModule"

    const-string v1, " finish >>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7906
    :cond_3
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/16 v4, 0x16

    const/16 v3, 0x15

    const/4 v1, 0x0

    .line 2740
    const-string v0, "CAM_PhotoModule"

    const-string v2, "onFullScreenChanged"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mFullScreenChange:Z

    .line 2742
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2743
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 2745
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingList;

    if-eqz v0, :cond_1

    .line 2746
    invoke-direct {p0, v1, p1}, Lcom/android/camera/PhotoModule;->dismissPopup(ZZ)V

    .line 2749
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_2

    .line 2750
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow()Z

    .line 2752
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_3

    .line 2753
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 2755
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_4

    .line 2757
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_a

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 2760
    :cond_4
    if-eqz p1, :cond_b

    .line 2761
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2762
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_5

    .line 2763
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->onResume()V

    .line 2771
    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 2772
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 2779
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setShowMenu(Z)V

    .line 2783
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_d

    .line 2784
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_7

    .line 2785
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 2787
    :cond_7
    if-eqz p1, :cond_c

    .line 2788
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 2789
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2834
    :cond_8
    :goto_3
    return-void

    :cond_9
    move v0, v1

    .line 2743
    goto :goto_0

    .line 2757
    :cond_a
    const/16 v1, 0x8

    goto :goto_1

    .line 2766
    :cond_b
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2767
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_5

    .line 2768
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->onPause()V

    goto :goto_2

    .line 2794
    :cond_c
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 2795
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 2802
    :cond_d
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_e

    .line 2803
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/StaticBitmapScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/StaticBitmapScreenNail;->setFullScreen(Z)V

    .line 2808
    :cond_e
    if-eqz p1, :cond_f

    .line 2816
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->expand()V

    .line 2817
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 2818
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 2823
    :cond_f
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 2824
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 4896
    sparse-switch p1, :sswitch_data_0

    .line 4942
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 4898
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4899
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 4903
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4904
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonClick(Lcom/android/camera/ShutterButton;)V

    goto :goto_0

    .line 4910
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4914
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4916
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 4917
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4918
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 4922
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 4920
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 4926
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v1}, Lcom/android/camera/GifCapture;->getIsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v1}, Lcom/android/camera/GifCapture;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4935
    :sswitch_4
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->isKeyVolumeBeingTrigger:Z

    .line 4936
    const-string v1, "CAM_PhotoModule"

    const-string v2, "on key down!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4937
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4938
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doKeyVolumeDownAction()V

    goto :goto_0

    .line 4896
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_2
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4947
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 4970
    :cond_1
    :goto_0
    return v0

    .line 4949
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    .line 4950
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 4954
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v2}, Lcom/android/camera/GifCapture;->getIsOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v2}, Lcom/android/camera/GifCapture;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4956
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonClick(Lcom/android/camera/ShutterButton;)V

    goto :goto_0

    .line 4962
    :sswitch_2
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->isKeyVolumeBeingTrigger:Z

    .line 4963
    const-string v1, "CAM_PhotoModule"

    const-string v2, "on key up!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4965
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doKeyVolumeUpAction()V

    goto :goto_0

    .line 4947
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 7114
    return-void
.end method

.method public onMenuHide()V
    .locals 2

    .prologue
    .line 7368
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v0, :cond_0

    .line 7369
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->dismissPop()V

    .line 7370
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->setVisibility(I)V

    .line 7372
    :cond_0
    return-void
.end method

.method public onMenuShowed()V
    .locals 2

    .prologue
    .line 7356
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v0, :cond_0

    .line 7357
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->dismissPop()V

    .line 7358
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->setVisibility(I)V

    .line 7362
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3401
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 3441
    :cond_0
    :goto_0
    return-void

    .line 3403
    :cond_1
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 3406
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 3408
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 3409
    iput v0, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    .line 3410
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v1, :cond_2

    .line 3411
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/FaceView;->setOrientation(IZ)V

    .line 3412
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FaceView;->setRotateOrientation(I)V

    .line 3414
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v1, :cond_3

    .line 3415
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/SelfCamera;->setOrientation(I)V

    .line 3417
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    if-eqz v1, :cond_4

    .line 3418
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v1, v0, v3}, Lcom/android/camera/RotateDialogController;->setOrientation(IZ)V

    .line 3420
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v1, :cond_5

    .line 3421
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v1, v0, v4}, Lcom/android/camera/ui/BasicSettingGridView;->setDisplayOrientation(IZ)V

    .line 3423
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v1, :cond_6

    .line 3424
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v1, v0, v4}, Lcom/android/camera/ui/FilterSlidingDrawer;->refreshOrientation(IZ)V

    .line 3427
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDelayClock:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRotation(F)V

    .line 3429
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 3430
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 3431
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    invoke-direct {p0, v1, v3}, Lcom/android/camera/PhotoModule;->setOrientationIndicator(IZ)V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4061
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onPauseAfterSuper >>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->releaseMediaPlayer()V

    .line 4063
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 4064
    const-string v0, "CAM_PhotoModule"

    const-string v1, ">>>>>>>already pause in onPauseBeforeSuper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    :goto_0
    return-void

    .line 4067
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 4071
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->waitCameraStartUpThread()V

    .line 4079
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v0, :cond_2

    .line 4080
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const v1, 0x1e240

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4081
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera;->cancleFaceDetect()V

    .line 4083
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v0}, Lcom/android/camera/SelfCamera;->stopShutterGuide()V

    .line 4084
    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    .line 4085
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    .line 4088
    :cond_2
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4089
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    if-eqz v0, :cond_4

    .line 4090
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v0}, Lcom/android/camera/GifCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4091
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v0}, Lcom/android/camera/GifCapture;->stop()V

    .line 4092
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 4093
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 4094
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/MyTextPreferenceButton;->setVisibility(I)V

    .line 4095
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setBlockFocus(Z)V

    .line 4096
    invoke-direct {p0, v3}, Lcom/android/camera/PhotoModule;->showGifCapturingUI(Z)V

    .line 4098
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    iget-object v0, v0, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/GuageIndicatorContainer;->setVisibility(I)V

    .line 4099
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v0}, Lcom/android/camera/GifCapture;->release()V

    .line 4102
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v1}, Lcom/android/camera/GifCapture;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 4105
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 4107
    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    .line 4114
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/ActivityBase;->isFirstStartAfterScreenOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4116
    invoke-static {}, Lcom/android/camera/ActivityBase;->resetFirstStartAfterScreenOn()V

    .line 4117
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->keep(I)V

    .line 4122
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_6

    .line 4123
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4126
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_7

    .line 4127
    const-string v0, "CAM_PhotoModule"

    const-string v1, "-----effect pause!!!---->"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->onPause()V

    .line 4129
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showFocusIndicator()V

    .line 4130
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onAfterEffectProcess()V

    .line 4131
    iput-byte v2, p0, Lcom/android/camera/PhotoModule;->mGesturesTouch:B

    .line 4133
    :cond_7
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-ne v0, v1, :cond_12

    .line 4134
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cleanImageEffectPlugIn()V

    .line 4135
    const/16 v0, 0x25

    iput-byte v0, p0, Lcom/android/camera/PhotoModule;->mModuleAction:B

    .line 4136
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mbacketCapture:Z

    .line 4137
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    .line 4142
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->unloadVendorStatisPlugin()V

    .line 4143
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4144
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;

    #calls: Lcom/android/camera/PhotoModule$MyCountDownTimer;->setFinishedState(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->access$7800(Lcom/android/camera/PhotoModule$MyCountDownTimer;Z)V

    .line 4145
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->enterNormalShotMode()V

    .line 4148
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 4150
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    if-nez v0, :cond_9

    .line 4151
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 4154
    :cond_9
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_b

    .line 4155
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-eqz v0, :cond_a

    .line 4156
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 4158
    :cond_a
    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    .line 4160
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetScreenOn()V

    .line 4162
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 4165
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    .line 4166
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_c

    .line 4167
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 4168
    :cond_c
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGridLine:Lcom/android/camera/ui/GridLine;

    if-eqz v0, :cond_d

    .line 4169
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGridLine:Lcom/android/camera/ui/GridLine;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/GridLine;->setVisibility(I)V

    .line 4173
    :cond_d
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4174
    const-string v0, "CAM_PhotoModule"

    const-string v1, ">>>>>>>>>HAS UPDATE_THUMBNAIL while onpause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4176
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4182
    :goto_2
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_f

    .line 4183
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    if-eqz v0, :cond_e

    .line 4187
    :cond_e
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    if-eqz v0, :cond_f

    .line 4188
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$ImageNamer;->finish()V

    .line 4189
    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 4195
    :cond_f
    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 4201
    iput v3, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    .line 4203
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 4204
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_10

    .line 4206
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 4207
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 4208
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->cancelDelayCapture()V

    .line 4209
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    .line 4213
    :cond_10
    invoke-direct {p0, v3}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 4215
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.gallery3d.camera.pause"

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.permission.CAMERA_PAUSE"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4218
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onPauseAfterSuper <<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 4223
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->saveModeEnable()V

    .line 4224
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->removeAllCallBack()V

    .line 4225
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideToastView()V

    .line 4232
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->cover:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 4233
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->cover:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4235
    :cond_11
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 4139
    :cond_12
    const-string v0, "none"

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->loadImageEffectPlugin(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4179
    :cond_13
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public onPauseBeforeSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4042
    const-string v0, "CAM_PhotoModule"

    const-string v1, "on pause before!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->isRegisterReceiver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 4044
    const-string v0, "CAM_PhotoModule"

    const-string v1, "unregister receiver!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4046
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4047
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->isRegisterReceiver:Z

    .line 4049
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAutoTestRegister:Z

    if-eqz v0, :cond_2

    .line 4050
    sget-object v0, Lcom/android/camera/PhotoModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    if-eqz v0, :cond_1

    .line 4051
    const-string v0, "CAM_PhotoModule"

    const-string v1, "unregister auto test receiver!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    sget-object v1, Lcom/android/camera/PhotoModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4053
    sput-object v3, Lcom/android/camera/PhotoModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    .line 4055
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mAutoTestRegister:Z

    .line 4057
    :cond_2
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 12
    .parameter "data"
    .parameter "arg1"

    .prologue
    .line 7774
    const-string v9, "CAM_PhotoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">>>>>>>>>>>>onPreviewFrame with len "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7775
    const/4 v8, 0x1

    .line 7776
    .local v8, ret:Z
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 7777
    .local v7, preview:Landroid/hardware/Camera$Size;
    const/4 v4, 0x0

    .line 7778
    .local v4, nThumbRotateDegree:I
    if-eqz p1, :cond_4

    .line 7779
    array-length v9, p1

    shr-int/lit8 v3, v9, 0x2

    .line 7780
    .local v3, len:I
    new-array v5, v3, [I

    .line 7781
    .local v5, pixel:[I
    if-nez v5, :cond_0

    .line 7782
    const-string v9, "CAM_PhotoModule"

    const-string v10, ">>>>>SetPreviewThumb is failed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7820
    .end local v3           #len:I
    .end local v5           #pixel:[I
    :goto_0
    return-void

    .line 7787
    .restart local v3       #len:I
    .restart local v5       #pixel:[I
    :cond_0
    const/4 v6, 0x0

    .line 7788
    .local v6, pos:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 7789
    shl-int/lit8 v6, v2, 0x2

    .line 7790
    aget-byte v9, p1, v6

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v5, v2

    .line 7788
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7795
    :cond_1
    const/4 v0, 0x0

    .line 7797
    .local v0, LastPictureThumb:Landroid/graphics/Bitmap;
    :try_start_0
    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7803
    :goto_2
    if-eqz v0, :cond_2

    .line 7804
    iget v9, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-static {v0, v9}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7807
    :cond_2
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v9, v9, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_3

    .line 7808
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v9, v9, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v9, Lcom/android/camera/StaticBitmapScreenNail;

    invoke-virtual {v9, v0}, Lcom/android/camera/StaticBitmapScreenNail;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 7809
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->setCandrawFlag(Z)V

    .line 7816
    .end local v0           #LastPictureThumb:Landroid/graphics/Bitmap;
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v5           #pixel:[I
    .end local v6           #pos:I
    :cond_3
    :goto_3
    const-string v9, "CAM_PhotoModule"

    const-string v10, ">>>>>>>>>onPreviewFrame"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7817
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 7818
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v9, v9, Lcom/android/camera/CameraActivity;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v9}, Lcom/android/camera/ui/PreviewSurfaceView;->shrink()V

    goto :goto_0

    .line 7798
    .restart local v0       #LastPictureThumb:Landroid/graphics/Bitmap;
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v5       #pixel:[I
    .restart local v6       #pos:I
    :catch_0
    move-exception v1

    .line 7799
    .local v1, ex:Ljava/lang/Exception;
    const-string v9, "CAM_PhotoModule"

    const-string v10, ">>>>>>>decodeByteArray IS FAILED"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7813
    .end local v0           #LastPictureThumb:Landroid/graphics/Bitmap;
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v5           #pixel:[I
    .end local v6           #pos:I
    :cond_4
    const-string v9, "CAM_PhotoModule"

    const-string v10, "the preview frame is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 6959
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6960
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 6988
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 7007
    :cond_0
    :goto_0
    return-void

    .line 6990
    :cond_1
    new-instance v4, Lcom/android/camera/PhotoModule$16;

    invoke-direct {v4, p0}, Lcom/android/camera/PhotoModule$16;-><init>(Lcom/android/camera/PhotoModule;)V

    .line 6997
    .local v4, runnable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    if-nez v0, :cond_2

    .line 6998
    new-instance v0, Lcom/android/camera/RotateDialogController;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f040060

    invoke-direct {v0, v2, v3}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 7001
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    if-eqz v0, :cond_0

    .line 7002
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e02c0

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x104000a

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/high16 v6, 0x104

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResumeAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3963
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onResumeAfterSuper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 4010
    :cond_0
    :goto_0
    return-void

    .line 3967
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupShot2ShotSound()V

    .line 3968
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 3971
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 3974
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 3975
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    if-nez v0, :cond_5

    .line 3976
    new-instance v0, Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 3977
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 3987
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_6

    .line 3988
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3992
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 3996
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 4001
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mbPostCaptureAlertShowed:Z

    if-nez v0, :cond_3

    .line 4002
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 4006
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 4007
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4009
    :cond_4
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageSaving:Z

    goto :goto_0

    .line 3979
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setupPreview(Z)V

    .line 3980
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3990
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeSecondTime()V

    goto :goto_2
.end method

.method public onResumeBeforeSuper()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3941
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 3942
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->installIntentFilter()V

    .line 3943
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mpreShot2ShotMode:Z

    .line 3945
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_storage_path_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e025e

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3948
    .local v0, storagePath:Ljava/lang/String;
    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3949
    sput-boolean v6, Lcom/android/camera/Storage;->mIsExternalSdPriority:Z

    .line 3959
    :goto_0
    return-void

    .line 3951
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Storage;->hasRemovableSD(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3952
    sput-boolean v7, Lcom/android/camera/Storage;->mIsExternalSdPriority:Z

    goto :goto_0

    .line 3954
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_storage_path_key"

    const-string v3, "internal"

    invoke-static {v1, v2, v3, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3956
    sput-boolean v6, Lcom/android/camera/Storage;->mIsExternalSdPriority:Z

    goto :goto_0
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3469
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onReviewCancelClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doCancel()V

    .line 3471
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3462
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onReviewDoneClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doAttach()V

    .line 3464
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 3476
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReviewRetakeClicked mPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3482
    :goto_0
    return-void

    .line 3479
    :cond_0
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onReviewRetakeClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->hidePostCaptureAlert()V

    .line 3481
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setupPreview(Z)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 6436
    iget-boolean v7, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 6656
    :cond_0
    :goto_0
    return-void

    .line 6438
    :cond_1
    const-string v7, "CAM_PhotoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-----onSharedPreferenceChanged key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6439
    if-eqz p1, :cond_1f

    .line 6440
    const-string v7, "pref_camera_flashmode_key"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6441
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, v7, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v8, "nightshot"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6442
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_capturemode_key"

    const-string v9, "none"

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6444
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    .line 6445
    const-string v7, "nightshot"

    iput-object v7, p0, Lcom/android/camera/PhotoModule;->oldCaptureMode:Ljava/lang/String;

    .line 6446
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v8, "none"

    iput-object v8, v7, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 6447
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCaptureMode()V

    .line 6453
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PhotoModule;->detectGPSSwitcher(Ljava/lang/String;Ljava/lang/String;)V

    .line 6454
    const-string v7, "pref_camera_scene_detect_key"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6455
    const-string v7, "on"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 6456
    const-string v7, "CAM_PhotoModule"

    const-string v8, ">>>>>>>>open secen detect"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6457
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_3

    .line 6458
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x15b3

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mEnterNightshot:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 6462
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6476
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    :goto_1
    const-string v7, "pref_camera_storage_path_key"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6477
    const-string v7, "external"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 6478
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/Storage;->hasRemovableSD(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 6479
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/camera/Storage;->mIsExternalSdPriority:Z

    .line 6493
    :cond_4
    :goto_2
    const-string v7, "pref_camera_effect_key"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6494
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/camera/CameraActivity;->mEffectModeOverried:Z

    .line 6495
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object p2, v7, Lcom/android/camera/CameraActivity;->mCurrentEffectModeOverried:Ljava/lang/String;

    .line 6496
    const-string v7, "hdr_art"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 6497
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    .line 6498
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v8, "hdr"

    iput-object v8, v7, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 6499
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_capturemode_key"

    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v9, v9, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6501
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByCaptureMode()V

    .line 6503
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v8, "hdr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 6504
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v7}, Lcom/android/camera/CameraEffectModule;->GetEffectParameter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;

    .line 6505
    .local v0, hdrPara:Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;->bArt:Z

    .line 6506
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v7, v0}, Lcom/android/camera/CameraEffectModule;->SetEffectParameter(Ljava/lang/Object;)V

    .line 6528
    .end local v0           #hdrPara:Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCaptureMode()V

    .line 6529
    iput-object p2, p0, Lcom/android/camera/PhotoModule;->oldEffectModeStr:Ljava/lang/String;

    .line 6532
    :cond_6
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v8, "click"

    invoke-static {v7, p1, v8}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6534
    const-string v7, "pref_camera_capturemode_key"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 6535
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mAutoSwitchToBeautyShot:Z

    .line 6537
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, v7, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v8, "hdr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "hdr"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 6539
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mColorEffect:Ljava/lang/String;

    const-string v8, "hdr_art"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 6540
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v7, :cond_7

    .line 6541
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_effect_key"

    invoke-virtual {v7, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 6542
    .local v2, mPref:Lcom/android/camera/ListPreference;
    const-string v7, "none"

    invoke-virtual {v2, v7}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 6547
    .end local v2           #mPref:Lcom/android/camera/ListPreference;
    :cond_7
    const-string v7, "smileshutter"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 6548
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/FaceView;->setSmileMode(Z)V

    .line 6556
    :goto_4
    const-string v7, "nightshot"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 6557
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/camera/PhotoModule;->isNightshotSelect:Z

    .line 6561
    :goto_5
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    .line 6562
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object p2, v7, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 6563
    const-string v7, "panorama"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 6564
    const-string v7, "none"

    iput-object v7, p0, Lcom/android/camera/PhotoModule;->oldCaptureMode:Ljava/lang/String;

    .line 6568
    :goto_6
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_capturemode_key"

    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v9, v9, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6570
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByCaptureMode()V

    .line 6571
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCaptureMode()V

    .line 6574
    :cond_8
    const-string v7, "pref_camera_secure_box_key"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 6575
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/camera/CameraActivity;->mSecureBoxOverried:Z

    .line 6576
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object p2, v7, Lcom/android/camera/CameraActivity;->mCurrentSecureBoxValue:Ljava/lang/String;

    .line 6580
    :cond_9
    const-string v7, "pref_camera_capturemode_key"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "panorama"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 6582
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, v7, Lcom/android/camera/CameraActivity;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 6583
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->onCameraSelected(I)Z

    goto/16 :goto_0

    .line 6464
    :cond_a
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, v7, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v8, "none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, v7, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v8, "nightshot"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6469
    :cond_b
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_capturemode_key"

    const-string v9, "none"

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6471
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    .line 6472
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v8, "none"

    iput-object v8, v7, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 6473
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCaptureMode()V

    goto/16 :goto_1

    .line 6481
    :cond_c
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_storage_path_key"

    const-string v9, "internal"

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6483
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/camera/Storage;->mIsExternalSdPriority:Z

    .line 6485
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e0179

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 6488
    :cond_d
    const-string v7, "internal"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6489
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/camera/Storage;->mIsExternalSdPriority:Z

    goto/16 :goto_2

    .line 6509
    :cond_e
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->oldEffectModeStr:Ljava/lang/String;

    const-string v8, "hdr_art"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 6510
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_capturemode_key"

    iget-object v9, p0, Lcom/android/camera/PhotoModule;->oldCaptureMode:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6512
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByCaptureMode()V

    .line 6513
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    .line 6514
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v8, p0, Lcom/android/camera/PhotoModule;->oldCaptureMode:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 6519
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;

    const-string v8, "hdr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 6520
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v7}, Lcom/android/camera/CameraEffectModule;->GetEffectParameter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;

    .line 6521
    .restart local v0       #hdrPara:Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;->bArt:Z

    .line 6522
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v7, v0}, Lcom/android/camera/CameraEffectModule;->SetEffectParameter(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 6550
    .end local v0           #hdrPara:Lcom/android/camera/EffectArcsoftHdr$EffectHdrParameter;
    :cond_f
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/FaceView;->setSmileMode(Z)V

    goto/16 :goto_4

    .line 6559
    :cond_10
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/camera/PhotoModule;->isNightshotSelect:Z

    goto/16 :goto_5

    .line 6566
    :cond_11
    iput-object p2, p0, Lcom/android/camera/PhotoModule;->oldCaptureMode:Ljava/lang/String;

    goto/16 :goto_6

    .line 6584
    :cond_12
    const-string v7, "pref_camera_grid_line_key"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 6585
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 6586
    :cond_13
    const-string v7, "pref_camera_delay_key"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 6587
    iget-boolean v7, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v7, :cond_14

    .line 6588
    const-string v7, "0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 6589
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_continuemode_key"

    const-string v9, "0"

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6594
    :cond_14
    :goto_7
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByDelayCapture()V

    goto/16 :goto_0

    .line 6591
    :cond_15
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_continuemode_key"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    .line 6595
    :cond_16
    const-string v7, "pref_camera_continuemode_key"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 6596
    iget-boolean v7, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v7, :cond_17

    .line 6597
    const-string v7, "0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 6598
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_flashmode_key"

    const-string v9, "off"

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6599
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_delay_key"

    const-string v9, "0"

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6608
    :cond_17
    :goto_8
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSettingByDelayCapture()V

    .line 6609
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v7, :cond_18

    .line 6610
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v7}, Lcom/android/camera/ui/CameraLeftBar;->notifyDataSetChanged()V

    .line 6612
    :cond_18
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v7, :cond_19

    .line 6613
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v7}, Lcom/android/camera/ui/BasicSettingGridView;->notifyPreferenceChanged()V

    .line 6615
    :cond_19
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    goto/16 :goto_0

    .line 6601
    :cond_1a
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_delay_key"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6602
    iget v7, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-nez v7, :cond_17

    .line 6603
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_flashmode_key"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8

    .line 6617
    :cond_1b
    const-string v7, "pref_camera_secure_box_key"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 6618
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7, p2}, Lcom/android/camera/CameraActivity;->handleCameraSecureBox(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6619
    :cond_1c
    const-string v7, "pref_camera_picturesize_key"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 6620
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->isAutoForceLimited:Z

    .line 6621
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->getOptimizedPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 6622
    .local v4, optimalSize:Landroid/hardware/Camera$Size;
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 6623
    .local v5, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6624
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 6625
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    if-eqz v7, :cond_1d

    .line 6626
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    invoke-virtual {v7}, Lcom/android/camera/SelfCamera;->stopShutterGuide()V

    .line 6627
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    .line 6629
    :cond_1d
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 6631
    .local v1, m:Landroid/os/Message;
    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iput v7, v1, Landroid/os/Message;->arg1:I

    .line 6632
    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    iput v7, v1, Landroid/os/Message;->arg2:I

    .line 6633
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6634
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x1e

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 6638
    .end local v1           #m:Landroid/os/Message;
    .end local v4           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v5           #original:Landroid/hardware/Camera$Size;
    :cond_1e
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v8, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v7, v8}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v6

    .line 6640
    .local v6, recordLocation:Z
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v7, v6}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 6641
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOverrideSetting()V

    .line 6642
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    .line 6643
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    goto/16 :goto_0

    .line 6647
    .end local v6           #recordLocation:Z
    :cond_1f
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v8, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v7, v8}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v6

    .line 6649
    .restart local v6       #recordLocation:Z
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v7, v6}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 6651
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    .line 6652
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    goto/16 :goto_0
.end method

.method public onShow(Z)V
    .locals 4
    .parameter "needShowGridView"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 7825
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->dismissPop()V

    .line 7826
    if-nez p1, :cond_2

    .line 7827
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->setVisibility(I)V

    .line 7832
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraLeftBar;->getVisibility()I

    move-result v0

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraLeftBar;->getVisibility()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 7833
    :cond_0
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>>>>>>>>>>mCameraLeftBar visible :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v2}, Lcom/android/camera/ui/CameraLeftBar;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7834
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 7848
    :cond_1
    :goto_0
    return-void

    .line 7839
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->getDrawer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7840
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_3

    .line 7841
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->showPopupWindow()V

    .line 7844
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraLeftBar;->getVisibility()I

    move-result v0

    if-eq v2, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraLeftBar;->getVisibility()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 7845
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 9
    .parameter "b"

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 3633
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->isDelaySnaping()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v3, :cond_2

    .line 3637
    :cond_0
    sget-boolean v3, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v3, :cond_1

    .line 3638
    invoke-static {v7}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    .line 3711
    :cond_1
    :goto_0
    return-void

    .line 3645
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v3

    const-wide/32 v5, 0x989680

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 3646
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough space or storage not ready. remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    sget-boolean v3, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v3, :cond_1

    .line 3649
    invoke-static {v7}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    goto :goto_0

    .line 3660
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->isDelaySnaping()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3662
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mbacketCapture:Z

    if-nez v3, :cond_5

    .line 3663
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 3664
    :cond_5
    sget-boolean v3, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v3, :cond_1

    .line 3665
    invoke-static {v7}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    goto :goto_0

    .line 3669
    :cond_6
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v3, :cond_7

    .line 3670
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v3}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow()Z

    .line 3674
    :cond_7
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v3}, Lcom/android/camera/GifCapture;->getIsOn()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3677
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopFaceDetection()V

    .line 3679
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->captureGif()Z

    goto :goto_0

    .line 3686
    :cond_8
    iget-byte v3, p0, Lcom/android/camera/PhotoModule;->mModuleAction:B

    invoke-direct {p0, v3}, Lcom/android/camera/PhotoModule;->doEffectProcess(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3688
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_delay_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0221

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3691
    .local v1, delayCaptureStr:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3694
    .local v2, delaySeconds:I
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_continuemode_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e021c

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3698
    .local v0, contineCaptureStr:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I

    .line 3700
    if-nez v2, :cond_9

    .line 3701
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 3702
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    .line 3710
    :goto_1
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mpreShot2ShotMode:Z

    goto/16 :goto_0

    .line 3704
    :cond_9
    invoke-direct {p0, v8}, Lcom/android/camera/PhotoModule;->enableCameraControls(Z)V

    .line 3705
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 3707
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3, v2}, Lcom/android/camera/FocusOverlayManager;->doSnapDelay(I)V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    const/4 v2, 0x0

    .line 3599
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 3600
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 3629
    :cond_0
    :goto_0
    return-void

    .line 3611
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3614
    :cond_2
    if-eqz p1, :cond_5

    .line 3615
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_4

    .line 3616
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 3617
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 3625
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterDown()V

    goto :goto_0

    .line 3620
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;

    invoke-virtual {v0}, Lcom/android/camera/GifCapture;->getIsOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3622
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    goto :goto_1

    .line 3627
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 6
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 4797
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v1, :cond_1

    .line 4858
    :cond_0
    :goto_0
    return-void

    .line 4802
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->isShowLeftBar:Z

    .line 4806
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4809
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v1, :cond_2

    .line 4810
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v1}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow()Z

    .line 4813
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v1, :cond_3

    .line 4814
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->dismissPop()V

    .line 4816
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraLeftBar;->getVisibility()I

    move-result v1

    if-eq v5, v1, :cond_4

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v2}, Lcom/android/camera/ui/CameraLeftBar;->getVisibility()I

    move-result v2

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v2, "gifcapture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4819
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->isShowLeftBar:Z

    .line 4826
    :cond_5
    if-nez p1, :cond_6

    if-ne p2, v3, :cond_6

    if-ne p3, v3, :cond_6

    .line 4827
    const-string v1, "CAM_PhotoModule"

    const-string v2, "simulate the tap up from activity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4833
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_0

    .line 4836
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/android/camera/PhotoModule;->checkLimitPosition(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4841
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-eq v4, v1, :cond_0

    .line 4847
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_capturemode_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e01de

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4853
    .local v0, captureModeStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    .line 4854
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->isShowLeftBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 7108
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 7109
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 7110
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 3445
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 3447
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 3448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 3452
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_1

    .line 3453
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->forceStopBaiduLoation()V

    .line 3457
    :cond_1
    return-void
.end method

.method public reStartSelfCameraIfPreviewSizeChange()V
    .locals 4

    .prologue
    .line 6413
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v2, "self_capture_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v2, "self_capture_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6415
    :cond_0
    const/4 v0, 0x0

    .line 6416
    .local v0, personCount:I
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v2, "self_capture_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6417
    const/4 v0, 0x2

    .line 6422
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    if-nez v1, :cond_2

    .line 6423
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/SelfCamera;->resetPreviewSize(II)V

    .line 6424
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientationCompensation:I

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/SelfCamera;->startShutterGuide(II)Z

    .line 6425
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->selfCameraHasStart:Z

    .line 6429
    .end local v0           #personCount:I
    :cond_2
    return-void

    .line 6419
    .restart local v0       #personCount:I
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v2, "self_capture_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6420
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerOneShotPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 7329
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 7330
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7332
    :cond_0
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    .line 3350
    const/4 v0, 0x0

    .line 3351
    .local v0, ret:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->isShowLeftBar:Z

    .line 3353
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    if-eqz v1, :cond_0

    .line 3354
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->filterdrawer:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->dismissPop()V

    .line 3360
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v1, :cond_1

    .line 3375
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v1, :cond_1

    .line 3376
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraLeftBar;->dismissPupup()Z

    move-result v1

    or-int/2addr v0, v1

    .line 3384
    :cond_1
    return v0
.end method

.method public setCaptureState(Z)V
    .locals 1
    .parameter "isDelay"

    .prologue
    .line 7311
    if-eqz p1, :cond_0

    .line 7312
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 7315
    :goto_0
    return-void

    .line 7314
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 2709
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2710
    return-void
.end method

.method public setFocusRect(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7874
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 7875
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/camera/FocusOverlayManager;->setFocusRect(IIII)V

    .line 7877
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v1, :cond_1

    .line 7878
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7879
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FaceView;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 7881
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method setPreviewFrameLayoutAspectRatio()V
    .locals 7

    .prologue
    .line 7145
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 7146
    .local v1, size:Landroid/hardware/Camera$Size;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 7148
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 7149
    .local v0, presize:Landroid/hardware/Camera$Size;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mGridLine:Lcom/android/camera/ui/GridLine;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/GridLine;->setPreviewParameters(II)V

    .line 7150
    return-void
.end method

.method public setShotMode(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "shotMode"
    .parameter "enable"

    .prologue
    .line 7521
    const/4 v0, 0x0

    .line 7522
    .local v0, rv:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7524
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/camera/YLParametersHelper;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Landroid/hardware/Camera;Z)Z

    move-result v0

    .line 7525
    .end local v0           #rv:Z
    :cond_1
    return v0
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 6
    .parameter "hasSignal"

    .prologue
    const/16 v5, 0xd

    .line 1673
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGpsOnScreenIndicator hasSignal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1675
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v0, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1678
    return-void

    .line 1675
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public startFaceDetection()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1566
    const-string v3, "CAM_PhotoModule"

    const-string v4, "startFaceDetection"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v3, :cond_1

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_2

    .line 1575
    const-string v1, "CAM_PhotoModule"

    const-string v2, "startFaceDetection-----but mParameters = null, so return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1579
    :cond_2
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v3, :cond_0

    .line 1581
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_0

    .line 1582
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1583
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1584
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1585
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1586
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v3, v4

    .line 1587
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_4

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 1588
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1589
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_3

    .line 1590
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 1591
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/PhotoModule$7;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$7;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1598
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1587
    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1605
    const-string v0, "CAM_PhotoModule"

    const-string v1, "stopFaceDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v0, :cond_1

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 1611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1612
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1613
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 1614
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2839
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 2845
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2848
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_1

    .line 2858
    :cond_0
    :goto_0
    return-void

    .line 2851
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 2854
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_0

    .line 2855
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setupPreview(Z)V

    .line 2856
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 2862
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2864
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2865
    return-void
.end method

.method public unloadVendorStatisPlugin()V
    .locals 1

    .prologue
    .line 6212
    sget-boolean v0, Lcom/android/camera/ProductConfig;->isSupportImageEffect:Z

    if-eqz v0, :cond_0

    .line 6213
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    if-eqz v0, :cond_0

    .line 6214
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    invoke-interface {v0}, Lcom/android/camera/CameraEffectModule;->CloseEffect()V

    .line 6215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mVendorStatisModule:Lcom/android/camera/CameraEffectModule;

    .line 6218
    :cond_0
    return-void
.end method

.method public updateCameraAppView()V
    .locals 0

    .prologue
    .line 3937
    return-void
.end method

.method public updateDelayCaptureClock(I)V
    .locals 6
    .parameter "currentTime"

    .prologue
    .line 7300
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->UpdateDelayTimer(I)V

    .line 7301
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_shutter_sound_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0259

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7304
    .local v0, shutterSound:Ljava/lang/String;
    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    if-lez p1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7305
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->PlayDelaySound()V

    .line 7306
    :cond_0
    return-void
.end method

.method waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 4014
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 4015
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->cancel()V

    .line 4016
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->join()V

    .line 4017
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 4018
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4024
    :cond_0
    :goto_0
    return-void

    .line 4021
    :catch_0
    move-exception v0

    goto :goto_0
.end method
