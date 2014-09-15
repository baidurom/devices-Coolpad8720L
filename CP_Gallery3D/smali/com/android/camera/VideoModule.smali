.class public Lcom/android/camera/VideoModule;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/EffectsRecorder$EffectsListener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoModule$AutoFocusCallback;,
        Lcom/android/camera/VideoModule$SurfaceViewCallback;,
        Lcom/android/camera/VideoModule$CameraErrorCallback;,
        Lcom/android/camera/VideoModule$VideoNamer;,
        Lcom/android/camera/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/VideoModule$ZoomChangeListener;,
        Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;,
        Lcom/android/camera/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/VideoModule$MainHandler;,
        Lcom/android/camera/VideoModule$CameraOpenThread;,
        Lcom/android/camera/VideoModule$ImageSaver;,
        Lcom/android/camera/VideoModule$SaveRequest;,
        Lcom/android/camera/VideoModule$ShutterCallback;
    }
.end annotation


# static fields
.field private static mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;


# instance fields
.field private isConfigChanged:Z

.field private lowBatteryForFlashLight:Z

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAnimation:Z

.field private final mAutoFocusCallback:Lcom/android/camera/VideoModule$AutoFocusCallback;

.field private mAutoTestRegister:Z

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBgLearningMessageFrame:Landroid/view/View;

.field private mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

.field private mCallingquality:I

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

.field private mCaptureTimeLapse:Z

.field private mColorEffect:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectType:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mEffectsDisplayResult:Z

.field private mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

.field private final mErrorCallback:Lcom/android/camera/VideoModule$CameraErrorCallback;

.field private mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private final mHandler:Landroid/os/Handler;

.field private mImageSaver:Lcom/android/camera/VideoModule$ImageSaver;

.field private mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

.field private mIsVideoCaptureIntent:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderPausing:Z

.field private mMediaRecorderRecording:Z

.field private mModuleInitTime:J

.field private mNSLBurstCount:I

.field private mOnResumeTime:J

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationCompensationAtRecordStart:I

.field private mOrientationResetNeeded:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPauseRecordButton:Lcom/android/camera/ShutterButton;

.field private mPaused:Z

.field private mPendingSwitchCameraId:I

.field private mPopup:Lcom/android/camera/ui/AbstractSettingList;

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordPauseDuration:Z

.field private mRecordVideoSwitcher:Landroid/widget/FrameLayout;

.field private mRecordingPauseTime:J

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mResetEffect:Z

.field private mRestoreFlash:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewControl:Landroid/view/View;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewModuleLayout:Landroid/view/View;

.field private mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

.field private mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewbitmap:Landroid/graphics/Bitmap;

.field private mRootView:Landroid/view/View;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mRotationJpg:I

.field private mSceneMode:Ljava/lang/String;

.field private final mShutterCallback:Lcom/android/camera/VideoModule$ShutterCallback;

.field private mSnapshotInProgress:Z

.field private mStopRecordButton:Lcom/android/camera/ShutterButton;

.field private mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceViewReady:Z

.field private mSwitchingCamera:Z

.field private mThumbnailViewWidth:I

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLapseLabel:Landroid/view/View;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

.field private mVideoTakeOnShutterListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

.field private mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

.field private mWhiteBalance:Ljava/lang/String;

.field private mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

.field private mWholeRecordingStartTime:J

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

.field private mbPreviewShowing:Z

.field private mcoolpadSys:Lcom/yulong/android/server/systeminterface/SystemManager;

.field private needOpenVideoStabilization:Z

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->lowBatteryForFlashLight:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 160
    new-instance v0, Lcom/android/camera/VideoModule$CameraErrorCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$CameraErrorCallback;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/VideoModule$CameraErrorCallback;

    .line 172
    new-instance v0, Lcom/android/camera/VideoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoModule$AutoFocusCallback;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mAutoFocusCallback:Lcom/android/camera/VideoModule$AutoFocusCallback;

    .line 201
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mbPreviewShowing:Z

    .line 214
    iput v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 215
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 216
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 228
    iput-wide v3, p0, Lcom/android/camera/VideoModule;->mRecordingPauseTime:J

    .line 229
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mRecordPauseDuration:Z

    .line 230
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 246
    iput v1, p0, Lcom/android/camera/VideoModule;->mCallingquality:I

    .line 251
    iput-wide v3, p0, Lcom/android/camera/VideoModule;->mModuleInitTime:J

    .line 258
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 260
    iput v1, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 266
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 287
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mAutoTestRegister:Z

    .line 295
    new-instance v0, Lcom/android/camera/VideoModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    .line 297
    new-instance v0, Lcom/android/camera/YLParametersHelper;

    invoke-direct {v0}, Lcom/android/camera/YLParametersHelper;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 303
    iput v1, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    .line 320
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->needOpenVideoStabilization:Z

    .line 321
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->isConfigChanged:Z

    .line 324
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mcoolpadSys:Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 325
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mAnimation:Z

    .line 326
    iput v1, p0, Lcom/android/camera/VideoModule;->mNSLBurstCount:I

    .line 327
    new-instance v0, Lcom/android/camera/VideoModule$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoModule$ShutterCallback;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mShutterCallback:Lcom/android/camera/VideoModule$ShutterCallback;

    .line 329
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mImageSaver:Lcom/android/camera/VideoModule$ImageSaver;

    .line 332
    iput v1, p0, Lcom/android/camera/VideoModule;->mRotationJpg:I

    .line 466
    new-instance v0, Lcom/android/camera/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$1;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakeOnShutterListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 636
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 666
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 4610
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoModule;)Lcom/android/camera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoModule$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterCallback:Lcom/android/camera/VideoModule$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/VideoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/android/camera/VideoModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/CameraLeftBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOverrideSetting()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/VideoModule;)Lcom/android/camera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCpuClientAfterStopPreview()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->lowBatteryForFlashLight:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->lowBatteryForFlashLight:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->restorePreferences()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoModule;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/camera/VideoModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/VideoModule;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoModule$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mImageSaver:Lcom/android/camera/VideoModule$ImageSaver;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$4802(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/VideoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    return v0
.end method

.method private addVideoToMediaStore()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2349
    const/4 v5, 0x0

    .line 2350
    .local v5, fail:Z
    const-wide/16 v2, 0x0

    .line 2351
    .local v2, duration:J
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v7, :cond_3

    .line 2352
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_size"

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2354
    iget-boolean v7, p0, Lcom/android/camera/VideoModule;->mRecordPauseDuration:Z

    if-eqz v7, :cond_4

    .line 2355
    iget-wide v2, p0, Lcom/android/camera/VideoModule;->mRecordingPauseTime:J

    .line 2356
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/VideoModule;->mRecordPauseDuration:Z

    .line 2360
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_5

    .line 2361
    iget-boolean v7, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v7, :cond_0

    .line 2362
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v2

    .line 2365
    :cond_0
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2367
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v7, v7, Lcom/android/camera/CameraActivity;->isHasImageNum:Z

    if-eqz v7, :cond_1

    .line 2368
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v8, v7, Lcom/android/camera/CameraActivity;->ImageNum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/camera/CameraActivity;->ImageNum:I

    .line 2369
    const-string v7, "CAM_VideoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveVideo---------VideoNum = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v9, v9, Lcom/android/camera/CameraActivity;->ImageNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "image_number"

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v9, v9, Lcom/android/camera/CameraActivity;->ImageNum:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2378
    :cond_1
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    invoke-virtual {v7}, Lcom/android/camera/VideoModule$VideoNamer;->getUri()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2379
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iput-object v8, v7, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    .line 2380
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/ActivityBase;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 2386
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_data"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2388
    .local v6, finalName:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2389
    iput-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2391
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2392
    .local v0, dateTaken:J
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2394
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2396
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.hardware.action.NEW_VIDEO"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2406
    const-string v7, "CAM_VideoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current video URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    .end local v0           #dateTaken:J
    .end local v6           #finalName:Ljava/lang/String;
    :cond_3
    :goto_2
    iput-object v12, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2410
    return v5

    .line 2358
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v7, v9

    iget-wide v9, p0, Lcom/android/camera/VideoModule;->mRecordingPauseTime:J

    add-long v2, v7, v9

    goto/16 :goto_0

    .line 2375
    :cond_5
    const-string v7, "CAM_VideoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Video duration <= 0 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2398
    :catch_0
    move-exception v4

    .line 2401
    .local v4, e:Ljava/lang/Exception;
    :try_start_1
    const-string v7, "CAM_VideoModule"

    const-string v8, "failed to add video to media store"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2402
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2403
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2404
    const/4 v5, 0x1

    .line 2406
    const-string v7, "CAM_VideoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current video URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    const-string v8, "CAM_VideoModule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current video URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v7
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 3877
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 3878
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 3879
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3880
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 3882
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3885
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 3886
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 2006
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2007
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2008
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2009
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 2013
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private clearVideoNamer()V
    .locals 1

    .prologue
    .line 4203
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    if-eqz v0, :cond_0

    .line 4204
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule$VideoNamer;->finish()V

    .line 4205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    .line 4207
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    .line 1784
    const-string v0, "CAM_VideoModule"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->closeCamera(Z)V

    .line 1786
    return-void
.end method

.method private closeCamera(Z)V
    .locals 4
    .parameter "closeEffectsAlso"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1800
    const-string v0, "CAM_VideoModule"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1802
    const-string v0, "CAM_VideoModule"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :goto_0
    return-void

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 1809
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectCamera()V

    .line 1811
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeEffects()V

    .line 1812
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1813
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1814
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1815
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v2, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1816
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1817
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private closeEffects()V
    .locals 2

    .prologue
    .line 1770
    const-string v0, "CAM_VideoModule"

    const-string v1, "Closing effects"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 1772
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_0

    .line 1773
    const-string v0, "CAM_VideoModule"

    const-string v1, "Effects are already closed. Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :goto_0
    return-void

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_0
.end method

.method private closeNSLandBurstmodes()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3036
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mSupportNSL:Z

    if-eqz v1, :cond_0

    .line 3040
    iput v4, p0, Lcom/android/camera/VideoModule;->mNSLBurstCount:I

    .line 3042
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/YLParametersHelper;->getNSLBurstCount(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    .line 3045
    .local v0, CurrentCount:I
    iget v1, p0, Lcom/android/camera/VideoModule;->mNSLBurstCount:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/camera/VideoModule;->mNSLBurstCount:I

    if-eq v0, v1, :cond_0

    .line 3047
    iget v1, p0, Lcom/android/camera/VideoModule;->mNSLBurstCount:I

    if-nez v1, :cond_1

    .line 3048
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/YLParametersHelper;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 3052
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/VideoModule;->mNSLBurstCount:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/YLParametersHelper;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 3054
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/VideoModule;->mNSLBurstCount:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/YLParametersHelper;->setNSLSkipCount(Landroid/hardware/Camera$Parameters;I)V

    .line 3055
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/YLParametersHelper;->setSkipCount(Landroid/hardware/Camera$Parameters;I)V

    .line 3058
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3061
    iget v1, p0, Lcom/android/camera/VideoModule;->mNSLBurstCount:I

    if-nez v1, :cond_0

    .line 3062
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/VideoModule;->mNSLBurstCount:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/YLParametersHelper;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    .line 3063
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3068
    .end local v0           #CurrentCount:I
    :cond_0
    return-void

    .line 3050
    .restart local v0       #CurrentCount:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mYLParametersHelper:Lcom/android/camera/YLParametersHelper;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/YLParametersHelper;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 4183
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 4185
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4189
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 4191
    :cond_0
    return-void

    .line 4186
    :catch_0
    move-exception v0

    .line 4187
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CAM_VideoModule"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 4176
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4177
    const-string v0, ".mp4"

    .line 4179
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 4169
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4170
    const-string v0, "video/mp4"

    .line 4172
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 4
    .parameter "dateTaken"

    .prologue
    .line 716
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 717
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0176

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 720
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2415
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2416
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2417
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2418
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2420
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2423
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->updateStorageSpaceAndHint()V

    .line 2424
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 2427
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2429
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2430
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1993
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1995
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1996
    const/4 v0, -0x1

    .line 1997
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2001
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ActivityBase;->setResultEx(ILandroid/content/Intent;)V

    .line 2002
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 2003
    return-void

    .line 1999
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 3691
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1034
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCameraControls ebable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 1041
    :cond_0
    return-void

    .line 1036
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .parameter "screen"

    .prologue
    .line 2436
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2437
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2438
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 2442
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2443
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 2446
    :cond_1
    return-object p1
.end method

.method private generateVideoFilename(I)V
    .locals 12
    .parameter "outputFileFormat"

    .prologue
    .line 2319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2320
    .local v0, dateTaken:J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 2322
    .local v6, title:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2323
    .local v2, filename:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 2324
    .local v4, mime:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Storage;->getCameraStoragePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2325
    .local v5, path:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2326
    .local v7, tmpPath:Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    const/16 v9, 0x9

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2327
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "date_modified"

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2333
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "mime_type"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 2339
    .local v3, loc:Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 2340
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2341
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2343
    :cond_0
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/VideoModule$VideoNamer;->prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 2344
    iput-object v7, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 2345
    const-string v8, "CAM_VideoModule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    return-void
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 1262
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getDesiredPreviewSize()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1560
    const-string v6, "CAM_VideoModule"

    const-string v7, "getDesiredPreviewSize"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1562
    sget-boolean v6, Lcom/android/gallery3d/common/ApiHelper;->HAS_GET_SUPPORTED_VIDEO_SIZE:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v6, :cond_6

    .line 1563
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1564
    :cond_0
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1565
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    .line 1598
    :cond_1
    :goto_0
    const-string v6, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDesiredPreviewWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". mDesiredPreviewHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return-void

    .line 1567
    :cond_2
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 1568
    .local v5, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1569
    .local v2, preferred:Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    .line 1570
    .local v3, product:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1572
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 1574
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_3

    goto :goto_1

    .line 1581
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_4
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v7, v7

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-static {v6, v5, v7, v8}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1583
    .local v1, optimalSize:Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1584
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    .line 1585
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_5

    .line 1586
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1589
    :cond_5
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v6, v6, Lcom/android/camera/CameraActivity;->mSupportIndependentOutput:Z

    if-nez v6, :cond_1

    .line 1590
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1591
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto/16 :goto_0

    .line 1595
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v1           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v2           #preferred:Landroid/hardware/Camera$Size;
    .end local v3           #product:I
    .end local v5           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_6
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1596
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto/16 :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 724
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 725
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 730
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getThumbnail()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1265
    const-string v3, "CAM_VideoModule"

    const-string v4, "getThumbnail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 1267
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getTHumbnailView()Lcom/android/camera/ui/ThumbnailSwitcher;

    move-result-object v2

    .line 1268
    .local v2, view:Lcom/android/camera/ui/ThumbnailSwitcher;
    if-eqz v2, :cond_0

    .line 1269
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget v4, p0, Lcom/android/camera/VideoModule;->mThumbnailViewWidth:I

    invoke-static {v3, v4}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1271
    .local v1, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1272
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v0

    .line 1273
    .local v0, t:Lcom/android/camera/Thumbnail;
    invoke-virtual {v0, v5}, Lcom/android/camera/Thumbnail;->setVideoThumbnail(Z)V

    .line 1274
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v0, v5}, Lcom/android/camera/CameraActivity;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 1278
    .end local v0           #t:Lcom/android/camera/Thumbnail;
    .end local v1           #videoFrame:Landroid/graphics/Bitmap;
    .end local v2           #view:Lcom/android/camera/ui/ThumbnailSwitcher;
    :cond_0
    return-void
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 2972
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2973
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private hideAlert()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2779
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2783
    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 2785
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2786
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2787
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2789
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2790
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2791
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewModuleLayout:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2793
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 2794
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2800
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2802
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2803
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewbitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2804
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2805
    :cond_1
    iput-object v3, p0, Lcom/android/camera/VideoModule;->mReviewbitmap:Landroid/graphics/Bitmap;

    .line 2807
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_2

    .line 2808
    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 2811
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 2813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mbPreviewShowing:Z

    .line 2814
    return-void
.end method

.method private hideVideoUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 3477
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3478
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3480
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 3481
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3483
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_2

    .line 3484
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3486
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_3

    .line 3487
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3490
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_4

    .line 3491
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3493
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 3494
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3497
    :cond_5
    return-void
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 4602
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 4603
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4604
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mContinousFocusSupported:Z

    .line 4608
    :cond_0
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3415
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getTHumbnailView()Lcom/android/camera/ui/ThumbnailSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mThumbnailViewWidth:I

    .line 3417
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 3418
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 3419
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideThumbnail()V

    .line 3420
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3421
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3423
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getTakePicuteButtonInVideoModule()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_1

    .line 3424
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 3425
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 3430
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 3431
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    .line 3432
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 3433
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    .line 3435
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewModuleLayout:Landroid/view/View;

    .line 3438
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$5;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3445
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$6;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3452
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$7;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3459
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    new-instance v1, Lcom/android/camera/VideoModule$8;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$8;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3470
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_2

    .line 3471
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 3474
    :cond_2
    return-void
.end method

.method private initializeEffectsPreview()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 2200
    const-string v5, "CAM_VideoModule"

    const-string v6, "initializeEffectsPreview"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, v5, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v5, :cond_1

    .line 2244
    :cond_0
    :goto_0
    return-void

    .line 2204
    :cond_1
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v8, :cond_3

    const/4 v0, 0x1

    .line 2207
    .local v0, inLandscape:Z
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v1, v5, v6

    .line 2209
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 2210
    new-instance v4, Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v4, v5}, Lcom/android/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 2214
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v5, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 2215
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, v5, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setCamera(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 2216
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 2217
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 2218
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v4, p0}, Lcom/android/camera/EffectsRecorder;->setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V

    .line 2219
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v4, p0}, Lcom/android/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2220
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v4, p0}, Lcom/android/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2226
    const/4 v2, 0x0

    .line 2227
    .local v2, orientation:I
    iget v4, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 2228
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 2230
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v4, v2}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 2232
    iget v4, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    iput v4, p0, Lcom/android/camera/VideoModule;->mOrientationCompensationAtRecordStart:I

    .line 2234
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v4, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v3, Lcom/android/camera/CameraScreenNail;

    .line 2235
    .local v3, screenNail:Lcom/android/camera/CameraScreenNail;
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 2238
    iget v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-ne v4, v8, :cond_4

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "gallery"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2240
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v5, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .end local v0           #inLandscape:Z
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v2           #orientation:I
    .end local v3           #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_3
    move v0, v4

    .line 2204
    goto/16 :goto_1

    .line 2242
    .restart local v0       #inLandscape:Z
    .restart local v1       #info:Landroid/hardware/Camera$CameraInfo;
    .restart local v2       #orientation:I
    .restart local v3       #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_4
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v5, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 13

    .prologue
    .line 2247
    const-string v8, "CAM_VideoModule"

    const-string v9, "initializeEffectsRecording"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2250
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 2252
    .local v4, myExtras:Landroid/os/Bundle;
    const-wide/16 v5, 0x0

    .line 2253
    .local v5, requestedSizeLimit:J
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 2254
    iget-boolean v8, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_1

    if-eqz v4, :cond_1

    .line 2255
    const-string v8, "output"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 2256
    .local v7, saveUri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 2258
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "rw"

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2260
    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    :cond_0
    :goto_0
    const-string v8, "android.intent.extra.sizeLimit"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2269
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_1
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v8, v9}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 2273
    iget-boolean v8, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v8, :cond_3

    .line 2274
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide v9, 0x408f400000000000L

    iget v11, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 2280
    :goto_1
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_4

    .line 2281
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 2288
    :goto_2
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/ActivityBase;->getStorageSpace()J

    move-result-wide v8

    const-wide/32 v10, 0x989680

    sub-long v2, v8, v10

    .line 2289
    .local v2, maxFileSize:J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_2

    cmp-long v8, v5, v2

    if-gez v8, :cond_2

    .line 2290
    move-wide v2, v5

    .line 2292
    :cond_2
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v8, v2, v3}, Lcom/android/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 2293
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v8, v9}, Lcom/android/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 2294
    return-void

    .line 2261
    .end local v2           #maxFileSize:J
    .restart local v7       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 2263
    .local v0, ex:Ljava/io/FileNotFoundException;
    const-string v8, "CAM_VideoModule"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2276
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_3
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_1

    .line 2283
    :cond_4
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v8}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 2284
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 3550
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 3551
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 3552
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 3553
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getFilterSlidingDrawer()Lcom/android/camera/ui/FilterSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3554
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getFilterSlidingDrawer()Lcom/android/camera/ui/FilterSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->hideDrawer()V

    .line 3556
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    .line 3559
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraLeftBar()Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    .line 3560
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRecordVideoSwitcher()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    .line 3561
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3562
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordVideoSwitcher:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3569
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->swapCaptureVideoMode()V

    .line 3574
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v0, :cond_2

    .line 3575
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 3576
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 3577
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraLeftBar;->setDefaultIconFromPreference(Lcom/android/camera/ComboPreferences;)V

    .line 3592
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3596
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    .line 3597
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 3598
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    .line 3601
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 3603
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    .line 3604
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    .line 3605
    return-void
.end method

.method private initializeOverlay()V
    .locals 4

    .prologue
    .line 757
    const-string v0, "CAM_VideoModule"

    const-string v1, "initializeOverlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 769
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 773
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_1

    .line 774
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraModule;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 777
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/camera/PreviewGestures;->clearTouchReceivers()V

    .line 781
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 782
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_2

    .line 783
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_3

    .line 786
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 788
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_4

    .line 789
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 791
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    .line 792
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 795
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v0, :cond_6

    .line 796
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 797
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraLeftBar;->getSubRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 799
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraControl()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 800
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraControl()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 803
    :cond_7
    return-void
.end method

.method private initializeRecorder()V
    .locals 19

    .prologue
    .line 2041
    const-string v15, "CAM_VideoModule"

    const-string v16, "initializeRecorder"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v15, v15, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v15, v15, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v15}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v15

    if-nez v15, :cond_1

    .line 2178
    :cond_0
    :goto_0
    return-void

    .line 2046
    :cond_1
    sget-boolean v15, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v15, :cond_2

    sget-boolean v15, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v15, :cond_2

    .line 2051
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v15, v15, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2052
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z

    if-eqz v15, :cond_0

    .line 2055
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 2056
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 2058
    .local v10, myExtras:Landroid/os/Bundle;
    const-wide/16 v11, 0x0

    .line 2059
    .local v11, requestedSizeLimit:J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 2060
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v15, :cond_4

    if-eqz v10, :cond_4

    .line 2061
    const-string v15, "output"

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 2062
    .local v14, saveUri:Landroid/net/Uri;
    if-eqz v14, :cond_3

    .line 2064
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "rw"

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2066
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2072
    :cond_3
    :goto_1
    const-string v15, "android.intent.extra.sizeLimit"

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 2074
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-lez v15, :cond_4

    const-wide/32 v15, 0x19000

    cmp-long v15, v11, v15

    if-gtz v15, :cond_4

    .line 2075
    const-string v15, "CAM_VideoModule"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ">>>>>the file size limit is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e02bf

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2067
    :catch_0
    move-exception v3

    .line 2069
    .local v3, ex:Ljava/io/FileNotFoundException;
    const-string v15, "CAM_VideoModule"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2084
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    .end local v14           #saveUri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v15, v15, Lcom/android/camera/CameraActivity;->mCallingVideoRecorderCloseAudio:Z

    if-eqz v15, :cond_5

    .line 2085
    const-string v15, "CAM_VideoModule"

    const-string v16, "isPhoneCalling 11--55"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    const-string v15, "CAM_VideoModule"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "isPhoneCalling 11--55  mProfile.quality="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    const-string v15, "CAM_VideoModule"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "isPhoneCalling 11--55--mCallingquality="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mCallingquality:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2092
    :cond_5
    new-instance v15, Landroid/media/MediaRecorder;

    invoke-direct {v15}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2094
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setupMediaRecorderPreviewDisplay()V

    .line 2096
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v15, v15, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v15}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 2097
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 2099
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v15, v15, Lcom/android/camera/CameraActivity;->mCallingVideoRecorderCloseAudio:Z

    if-eqz v15, :cond_a

    .line 2101
    const-string v15, "CAM_VideoModule"

    const-string v16, "isPhoneCalling 11--66"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/camera/CameraActivity;->mCallingVideoRecorderCloseAudio:Z

    .line 2103
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/camera/VideoModule;->mCallingquality:I

    .line 2114
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 2115
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 2116
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2117
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v15, :cond_7

    .line 2118
    const-wide v15, 0x408f400000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v4, v15, v17

    .line 2119
    .local v4, fps:D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v15, v4, v5}, Lcom/android/camera/VideoModule;->setCaptureRate(Landroid/media/MediaRecorder;D)V

    .line 2122
    .end local v4           #fps:D
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setRecordLocation()V

    .line 2127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v15, :cond_b

    .line 2128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 2136
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Lcom/android/camera/ActivityBase;->getStorageSpace()J

    move-result-wide v15

    const-wide/32 v17, 0x989680

    sub-long v15, v15, v17

    const-wide/32 v17, 0x3d0900

    add-long v8, v15, v17

    .line 2137
    .local v8, maxFileSize:J
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-lez v15, :cond_8

    cmp-long v15, v11, v8

    if-gez v15, :cond_8

    .line 2138
    move-wide v8, v11

    .line 2142
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v15, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 2143
    const-string v15, "CAM_VideoModule"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "-----set video recording maxFileSize="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2156
    :goto_4
    const/4 v13, 0x0

    .line 2157
    .local v13, rotation:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mOrientation:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 2158
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    move/from16 v16, v0

    aget-object v6, v15, v16

    .line 2159
    .local v6, info:Landroid/hardware/Camera$CameraInfo;
    iget v15, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 2160
    iget v15, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mOrientation:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/lit16 v15, v15, 0x168

    rem-int/lit16 v13, v15, 0x168

    .line 2165
    .end local v6           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v15, v13}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2166
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/camera/VideoModule;->mOrientationCompensationAtRecordStart:I

    .line 2169
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v15}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 2107
    .end local v8           #maxFileSize:J
    .end local v13           #rotation:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v15, :cond_6

    .line 2109
    const-string v15, "CAM_VideoModule"

    const-string v16, "isPhoneCalling 2222"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto/16 :goto_2

    .line 2130
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->fileFormat:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 2131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2162
    .restart local v6       #info:Landroid/hardware/Camera$CameraInfo;
    .restart local v8       #maxFileSize:J
    .restart local v13       #rotation:I
    :cond_c
    iget v15, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mOrientation:I

    move/from16 v16, v0

    add-int v15, v15, v16

    rem-int/lit16 v13, v15, 0x168

    goto :goto_5

    .line 2170
    .end local v6           #info:Landroid/hardware/Camera$CameraInfo;
    :catch_1
    move-exception v2

    .line 2171
    .local v2, e:Ljava/io/IOException;
    const-string v15, "CAM_VideoModule"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "prepare failed for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2172
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 2173
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 2144
    .end local v2           #e:Ljava/io/IOException;
    .end local v13           #rotation:I
    :catch_2
    move-exception v15

    goto/16 :goto_4
.end method

.method private initializeSurfaceView()V
    .locals 2

    .prologue
    .line 735
    const-string v0, "CAM_VideoModule"

    const-string v1, "initializeSurfaceView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_0

    .line 738
    new-instance v0, Lcom/android/camera/VideoModule$SurfaceViewCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$SurfaceViewCallback;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 741
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 754
    :cond_1
    :goto_0
    return-void

    .line 742
    :cond_2
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_3

    .line 744
    new-instance v0, Lcom/android/camera/VideoModule$SurfaceViewCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$SurfaceViewCallback;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    .line 745
    new-instance v0, Lcom/android/camera/VideoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$2;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 752
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method private initializeVideoControl()V
    .locals 2

    .prologue
    .line 1044
    const-string v0, "CAM_VideoModule"

    const-string v1, "initializeVideoControl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->loadCameraPreferences()V

    .line 1054
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 1056
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 1059
    :cond_0
    return-void
.end method

.method private initializeVideoSnapshot()V
    .locals 4

    .prologue
    .line 3972
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3973
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setSingleTapUpListener(Landroid/view/View;)V

    .line 3975
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3978
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3984
    :cond_0
    :goto_0
    return-void

    .line 3982
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setSingleTapUpListener(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3933
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 3954
    :cond_0
    :goto_0
    return-void

    .line 3935
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3936
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/ui/ZoomRenderer;->mIsZoomSupported:Z

    .line 3941
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mZoomMax:I

    .line 3942
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    .line 3945
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    .line 3947
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/OverlayRenderer;->setVisible(Z)V

    .line 3949
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 3950
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 3951
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 3952
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/VideoModule$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$ZoomChangeListener;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0

    .line 3938
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iput-boolean v2, v0, Lcom/android/camera/ui/ZoomRenderer;->mIsZoomSupported:Z

    goto :goto_0
.end method

.method private installAutoTestIntentFilter()V
    .locals 3

    .prologue
    .line 4472
    new-instance v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2, p0}, Lcom/android/autoTest/AutoTestBroadCastReceiver;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;)V

    sput-object v1, Lcom/android/camera/VideoModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    .line 4473
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yulong.camera.action.ygtptest_capture"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4475
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.yulong.camera.action.ygtptest_openalbum"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4476
    const-string v1, "com.yulong.camera.action.ygtptest_switchCameraId"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4477
    const-string v1, "com.yulong.camera.action.ygtptest_switchMode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4478
    const-string v1, "com.yulong.camera.action.ygtptest_setting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4479
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    sget-object v2, Lcom/android/camera/VideoModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4480
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mAutoTestRegister:Z

    .line 4482
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-static {v1}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 4483
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3030
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1983
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1984
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1986
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.camera.VideoCamera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2921
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2922
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2914
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2915
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2916
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2917
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 998
    const-string v1, "CAM_VideoModule"

    const-string v2, "loadCameraPreferences"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 1002
    .local v0, settings:Lcom/android/camera/CameraSettings;
    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 1006
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    if-eqz v1, :cond_0

    .line 1007
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_capturemode_key"

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    invoke-static {v1, v2, v3, v5}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1009
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mSecureBoxOverried:Z

    if-eqz v1, :cond_1

    .line 1010
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_secure_box_key"

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCurrentSecureBoxValue:Ljava/lang/String;

    invoke-static {v1, v2, v3, v5}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1013
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v1, :cond_2

    .line 1014
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 1017
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOverrideSetting()V

    .line 1018
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 2925
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 2926
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 2927
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 2928
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 2929
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 2931
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2934
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 2935
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 2936
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2938
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2940
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2944
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 2945
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2947
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2948
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2951
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 2952
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2954
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2957
    if-eqz p2, :cond_5

    .line 2958
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2959
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 2960
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 2961
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2963
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2966
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onStopVideoRecording()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1195
    const-string v1, "CAM_VideoModule"

    const-string v3, "onStopVideoRecording"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 1207
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    .line 1208
    .local v0, recordFail:Z
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCpuClientAfterStopRecord()V

    .line 1209
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    .line 1210
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1211
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v1, :cond_2

    .line 1212
    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 1231
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->hideVideoUI()V

    .line 1232
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_5

    .line 1259
    :goto_2
    return-void

    .line 1212
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1213
    :cond_2
    if-nez v0, :cond_0

    .line 1214
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showReview()V

    goto :goto_1

    .line 1218
    :cond_3
    if-nez v0, :cond_4

    .line 1220
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_4

    .line 1229
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->getThumbnail()V

    goto :goto_1

    .line 1235
    :cond_5
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 1240
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_6

    .line 1241
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/VideoModule$4;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoModule$4;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1256
    :cond_6
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getLastShutterMode()Lcom/android/camera/ShutterButton$ShutterMode;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/CameraActivity;->showCameraModule(Lcom/android/camera/ShutterButton$ShutterMode;Z)V

    goto :goto_2
.end method

.method private openCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 525
    :try_start_0
    const-string v1, "CAM_VideoModule"

    const-string v2, "openCamera"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 527
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 528
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeCapabilities()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 534
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v4, v1, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    goto :goto_0

    .line 531
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 532
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v4, v1, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    goto :goto_0
.end method

.method private openVideoStabilization(Z)V
    .locals 3
    .parameter "stab"

    .prologue
    .line 3958
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openVideoStabilization---- = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3960
    const-string v0, "CAM_VideoModule"

    const-string v1, "----video is Supported Stabilization!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 3963
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3964
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3968
    :goto_0
    return-void

    .line 3966
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "video is not Supported Stabilization!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private overrideSceneSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "flashMode"
    .parameter "whiteBalance"
    .parameter "focusMode"
    .parameter "effect"

    .prologue
    const/4 v3, 0x0

    .line 985
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->lowBatteryForFlashLight:Z

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_video_flashmode_key"

    const-string v2, "off"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 991
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_whitebalance_key"

    invoke-static {v0, v1, p2, v3}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 992
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_focusmode_key"

    invoke-static {v0, v1, p3, v3}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 993
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_effect_key"

    invoke-static {v0, v1, p4, v3}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 995
    return-void

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_video_flashmode_key"

    invoke-static {v0, v1, p1, v3}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 2483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2484
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2486
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2487
    return-void
.end method

.method private readVideoPreferences()V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1388
    const-string v13, "CAM_VideoModule"

    const-string v14, "readVideoPreferences"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const/4 v9, 0x0

    .line 1401
    .local v9, quality:I
    const/4 v11, 0x0

    .line 1402
    .local v11, videoFrameHeight:I
    const/4 v12, 0x0

    .line 1403
    .local v12, videoFramwWidth:I
    const/4 v7, 0x0

    .line 1405
    .local v7, mOutputFormat:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1406
    .local v6, intent:Landroid/content/Intent;
    const-string v13, "android.intent.extra.videoQuality"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1407
    const-string v13, "android.intent.extra.videoQuality"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1409
    .local v3, extraVideoQuality:I
    if-lez v3, :cond_4

    .line 1410
    const/4 v9, 0x1

    .line 1471
    .end local v3           #extraVideoQuality:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v15, "pref_camera_outputformat_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e029e

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1475
    .local v8, outputFormat:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1479
    const-string v13, "android.intent.extra.durationLimit"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1480
    const-string v13, "android.intent.extra.durationLimit"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1482
    .local v10, seconds:I
    mul-int/lit16 v13, v10, 0x3e8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 1496
    .end local v10           #seconds:I
    :goto_1
    sget-boolean v13, Lcom/android/gallery3d/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    if-eqz v13, :cond_1

    .line 1497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v14, "pref_video_time_lapse_frame_interval_key"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e016b

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1500
    .local v4, frameIntervalStr:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 1501
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 1506
    .end local v4           #frameIntervalStr:Ljava/lang/String;
    :cond_1
    const-string v13, "CAM_VideoModule"

    const-string v14, "isPhoneCalling 11--4444--000"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v13, v13, Lcom/android/camera/CameraActivity;->mCallingVideoRecorderCloseAudio:Z

    if-eqz v13, :cond_c

    .line 1509
    const-string v13, "CAM_VideoModule"

    const-string v14, "isPhoneCalling 11--4444"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    const/4 v13, -0x2

    if-ne v13, v9, :cond_a

    .line 1514
    const/4 v9, 0x4

    .line 1525
    :cond_2
    :goto_3
    add-int/lit16 v9, v9, 0x3e8

    .line 1528
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/camera/VideoModule;->mCallingquality:I

    .line 1536
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v13, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1537
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v13, v9}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 1547
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iput v7, v13, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 1548
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->getDesiredPreviewSize()V

    .line 1549
    return-void

    .line 1412
    .end local v8           #outputFormat:Ljava/lang/String;
    .restart local v3       #extraVideoQuality:I
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1418
    .end local v3           #extraVideoQuality:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v15, "pref_camera_videosize_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e0291

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1421
    .local v1, VideoSize:Ljava/lang/String;
    const/16 v13, 0x78

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1422
    .local v5, index:I
    const/4 v13, -0x1

    if-eq v5, v13, :cond_6

    .line 1423
    const/4 v13, 0x0

    invoke-virtual {v1, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1424
    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1426
    :cond_6
    sparse-switch v11, :sswitch_data_0

    .line 1467
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1428
    :sswitch_0
    const/4 v9, 0x6

    .line 1429
    goto/16 :goto_0

    .line 1431
    :sswitch_1
    const/4 v9, 0x5

    .line 1432
    goto/16 :goto_0

    .line 1434
    :sswitch_2
    const/16 v13, 0x280

    if-ne v13, v12, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    if-nez v13, :cond_7

    .line 1435
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 1437
    :cond_7
    const/4 v9, -0x2

    .line 1440
    goto/16 :goto_0

    .line 1442
    :sswitch_3
    const/4 v9, 0x3

    .line 1443
    goto/16 :goto_0

    .line 1445
    :sswitch_4
    const/4 v9, 0x7

    .line 1448
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v13, v13, Lcom/android/camera/CameraActivity;->mCallingVideoRecorderCloseAudio:Z

    if-eqz v13, :cond_0

    .line 1450
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    if-ne v13, v14, :cond_0

    .line 1451
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1456
    :sswitch_5
    const/4 v9, 0x2

    .line 1459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v13, v13, Lcom/android/camera/CameraActivity;->mCallingVideoRecorderCloseAudio:Z

    if-eqz v13, :cond_0

    .line 1461
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    if-nez v13, :cond_0

    .line 1462
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1485
    .end local v1           #VideoSize:Ljava/lang/String;
    .end local v5           #index:I
    .restart local v8       #outputFormat:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v15, "pref_camera_video_duration_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0e02a3

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1489
    .local v2, durationMinus:Ljava/lang/String;
    const v13, 0xea60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    mul-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 1501
    .end local v2           #durationMinus:Ljava/lang/String;
    .restart local v4       #frameIntervalStr:Ljava/lang/String;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1516
    .end local v4           #frameIntervalStr:Ljava/lang/String;
    :cond_a
    const/4 v13, -0x1

    if-ne v13, v9, :cond_b

    .line 1518
    const/4 v9, 0x4

    goto/16 :goto_3

    .line 1519
    :cond_b
    const/4 v13, 0x1

    if-ne v13, v9, :cond_2

    .line 1521
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 1530
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v13, :cond_3

    .line 1532
    add-int/lit16 v9, v9, 0x3e8

    goto/16 :goto_4

    .line 1538
    :cond_d
    const/4 v13, -0x2

    if-eq v13, v9, :cond_e

    const/4 v13, -0x1

    if-ne v13, v9, :cond_f

    .line 1539
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v14, 0x4

    invoke-static {v13, v14}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 1540
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iput v12, v13, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1541
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iput v11, v13, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto/16 :goto_5

    .line 1543
    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 1544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iput v12, v13, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iput v11, v13, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto/16 :goto_5

    .line 1426
    nop

    :sswitch_data_0
    .sparse-switch
        0x90 -> :sswitch_5
        0xf0 -> :sswitch_4
        0x120 -> :sswitch_3
        0x1e0 -> :sswitch_2
        0x2d0 -> :sswitch_1
        0x438 -> :sswitch_0
    .end sparse-switch
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2308
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 2310
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 2311
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 2312
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 2314
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 2315
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 2316
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2297
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 2299
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 2300
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 2301
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2302
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2304
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 2305
    return-void
.end method

.method private releasePreviewResources()V
    .locals 3

    .prologue
    .line 1821
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_2

    .line 1822
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v1, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 1823
    .local v0, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1824
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1826
    :cond_1
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v1, :cond_2

    .line 1827
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1828
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1831
    .end local v0           #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_2
    return-void
.end method

.method private resetEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 4156
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    if-eqz v2, :cond_0

    .line 4157
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_video_effect_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4159
    .local v0, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4160
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 4165
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    .line 4164
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    .line 4165
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2909
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2910
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2911
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 1603
    const-string v0, "CAM_VideoModule"

    const-string v1, "resizeForPreviewAspectRatio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1606
    return-void
.end method

.method private restorePreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3668
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3669
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 3671
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 3672
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 3673
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    .line 3674
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 3675
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 3679
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 3681
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 3682
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 3684
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mIsVideoSupportSecureBoxMode:Z

    if-eqz v0, :cond_1

    .line 3685
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->handleCameraSecureBox(Ljava/lang/String;)V

    .line 3688
    :cond_1
    return-void
.end method

.method private setCameraParameters()V
    .locals 22

    .prologue
    .line 3071
    sget-boolean v17, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v17, :cond_1

    .line 3072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v12, Lcom/android/camera/CameraScreenNail;

    .line 3073
    .local v12, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v5

    .line 3074
    .local v5, a:I
    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v6

    .line 3075
    .local v6, b:I
    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 3076
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    move/from16 v17, v0

    move/from16 v0, v17

    rem-int/lit16 v0, v0, 0xb4

    move/from16 v17, v0

    if-nez v17, :cond_e

    .line 3077
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 3081
    :goto_0
    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 3084
    .end local v5           #a:I
    .end local v6           #b:I
    .end local v12           #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->closeNSLandBurstmodes()V

    .line 3086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 3089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    .line 3090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    .line 3091
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3093
    .local v11, recordSize:Ljava/lang/String;
    const-string v17, "CAM_VideoModule"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Video dimension in App->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    const-string v18, "video-size"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    const-string v17, "auto"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    .line 3101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_scenemode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0e01ef

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v17 .. v20}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    .line 3104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 3105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 3106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3123
    :cond_2
    :goto_1
    const-string v17, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 3126
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/VideoModule;->overrideSceneSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_effect_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0e0206

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v17 .. v20}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    .line 3132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0e01ff

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v17 .. v20}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    .line 3136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "hdr_art"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3137
    const-string v17, "none"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    .line 3140
    :cond_3
    const-string v17, "none"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 3141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 3143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 3156
    :cond_4
    :goto_2
    const-string v17, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 3157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 3158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 3178
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    .line 3179
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v17, v0

    if-nez v17, :cond_15

    .line 3180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/camera/CameraActivity;->mCurrendFlashMode:Ljava/lang/String;

    .line 3187
    .local v7, flashMode:Ljava/lang/String;
    :goto_4
    const-string v17, "on"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "torch"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 3189
    :cond_6
    const-string v7, "torch"

    .line 3193
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->lowBatteryForFlashLight:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 3194
    const-string v7, "off"

    .line 3202
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v14

    .line 3203
    .local v14, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v7, v14}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 3204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3205
    const-string v17, "CAM_VideoModule"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">>>>>>set flash-mode :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 3216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mZoomValue:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 3220
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v15

    .line 3221
    .local v15, supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "continuous-video"

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 3222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    const-string v18, "continuous-video"

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3225
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    const-string v18, "recording-hint"

    const-string v19, "true"

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v13

    .line 3239
    .local v13, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    invoke-static {v13, v0, v1}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 3241
    .local v9, optimalSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 3242
    .local v10, original:Landroid/hardware/Camera$Size;
    if-eqz v10, :cond_b

    invoke-virtual {v10, v9}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 3243
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3245
    :cond_c
    const-string v17, "CAM_VideoModule"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Video snapshot size is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    move/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v8

    .line 3251
    .local v8, jpegQuality:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 3255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_video_stabilization_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0e02aa

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v17 .. v20}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3258
    .local v16, videostabilization:Ljava/lang/String;
    const-string v17, "on"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 3259
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->needOpenVideoStabilization:Z

    .line 3266
    .end local v16           #videostabilization:Ljava/lang/String;
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    const-string v18, "videosound-mute"

    const-string v19, "false"

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    const-string v18, "mute-shutter"

    const-string v19, "true"

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/camera/VideoModule;->updateCameraScreenNailSize(II)V

    .line 3277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3278
    return-void

    .line 3079
    .end local v7           #flashMode:Ljava/lang/String;
    .end local v8           #jpegQuality:I
    .end local v9           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v10           #original:Landroid/hardware/Camera$Size;
    .end local v11           #recordSize:Ljava/lang/String;
    .end local v13           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v14           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #a:I
    .restart local v6       #b:I
    .restart local v12       #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto/16 :goto_0

    .line 3116
    .end local v5           #a:I
    .end local v6           #b:I
    .end local v12           #screenNail:Lcom/android/camera/CameraScreenNail;
    .restart local v11       #recordSize:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    .line 3117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 3118
    const-string v17, "auto"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 3145
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    .line 3146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 3147
    const-string v17, "auto"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    goto/16 :goto_2

    .line 3152
    :cond_11
    const-string v17, "auto"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    .line 3153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3160
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    .line 3161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 3162
    const-string v17, "none"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    goto/16 :goto_3

    .line 3166
    :cond_13
    const-string v17, "none"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    .line 3167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3172
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    const-string v18, "auto"

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 3173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    const-string v18, "none"

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3182
    :cond_15
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_video_flashmode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0e02b4

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v17 .. v20}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #flashMode:Ljava/lang/String;
    goto/16 :goto_4

    .line 3191
    :cond_16
    const-string v7, "off"

    goto/16 :goto_5

    .line 3200
    .end local v7           #flashMode:Ljava/lang/String;
    :cond_17
    const-string v7, "off"

    .restart local v7       #flashMode:Ljava/lang/String;
    goto/16 :goto_6

    .line 3207
    .restart local v14       #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v7

    .line 3208
    if-nez v7, :cond_8

    .line 3209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0e0286

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_7

    .line 3261
    .restart local v8       #jpegQuality:I
    .restart local v9       #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v10       #original:Landroid/hardware/Camera$Size;
    .restart local v13       #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v15       #supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16       #videostabilization:Ljava/lang/String;
    :cond_19
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->needOpenVideoStabilization:Z

    goto/16 :goto_8
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 3
    .parameter "recorder"
    .parameter "fps"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2182
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureRate fps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 2184
    return-void
.end method

.method private setCpuClientAfterStopPreview()V
    .locals 0

    .prologue
    .line 4599
    return-void
.end method

.method private setCpuClientAfterStopRecord()V
    .locals 0

    .prologue
    .line 4563
    return-void
.end method

.method private setCpuClientBeforeRecord()V
    .locals 6

    .prologue
    .line 4492
    invoke-static {}, Lcom/android/camera/ProductConfig;->isChinaMobileCarrier()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4494
    invoke-static {}, Lcom/android/camera/ProductConfig;->isCurrentNetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4501
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_videosize_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0291

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4504
    .local v0, VideoSize:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/Util;->getIntArrayFromSizeString(Ljava/lang/String;)[I

    .line 4543
    .end local v0           #VideoSize:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setCpuClientBeforeStartPreview()V
    .locals 0

    .prologue
    .line 4585
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    .line 1707
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    .line 1709
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    .line 1715
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 1718
    :cond_0
    return-void

    .line 1712
    :cond_1
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    goto :goto_0
.end method

.method private setOrientationIndicator(IZ)V
    .locals 9
    .parameter "orientation"
    .parameter "animation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1129
    const/4 v5, 0x5

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    .line 1132
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

    .line 1133
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1135
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v5, :cond_2

    .line 1136
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v5, p1}, Lcom/android/camera/PreviewGestures;->setOrientation(I)V

    .line 1143
    :cond_2
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    instance-of v5, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v5, :cond_3

    .line 1144
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    invoke-interface {v5, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1149
    :cond_3
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    .line 1150
    div-int/lit8 v5, p1, 0x5a

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_5

    .line 1151
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1156
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    iget v6, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    invoke-virtual {v5, v6, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1157
    return-void

    .line 1153
    :cond_5
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method private setRecordLocation()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 2188
    const-string v1, "CAM_VideoModule"

    const-string v2, "setRecordLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 2190
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2191
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 2192
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 2194
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecordLocation getLatitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "loc.getLongitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    .end local v0           #loc:Landroid/location/Location;
    :cond_0
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 4063
    return-void
.end method

.method private setupMediaRecorderPreviewDisplay()V
    .locals 3

    .prologue
    .line 2017
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_1

    .line 2018
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 2037
    :cond_0
    :goto_0
    return-void

    .line 2019
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 2022
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2023
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 2031
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2033
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 2034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 2035
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method private showAlert()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 2748
    const-string v0, "CAM_VideoModule"

    const-string v1, ">>>>>show Alert"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReviewbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2751
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRecordVideoSwitcher()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2752
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2753
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2755
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2757
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2758
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 2759
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2761
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2762
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewRetakeButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2763
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2764
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2765
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2766
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewModuleLayout:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2769
    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 2771
    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 2775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mbPreviewShowing:Z

    .line 2776
    return-void
.end method

.method private showPausableRecordingUI(ZZ)V
    .locals 4
    .parameter "pausing"
    .parameter "isfirstTime"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2682
    if-eqz p1, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2724
    :goto_0
    return-void

    .line 2686
    :cond_0
    if-eqz p2, :cond_3

    .line 2689
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_1

    .line 2690
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2692
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRecordVideoSwitcher()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2693
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2694
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2696
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 2700
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 2701
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 2704
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideThumbnail()V

    .line 2706
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2707
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2708
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2714
    :cond_2
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2721
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showRecordingUI(Z)V
    .locals 4
    .parameter "recording"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2637
    if-eqz p1, :cond_3

    .line 2639
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 2640
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2641
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 2642
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 2644
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRecordVideoSwitcher()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2645
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2646
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2649
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideThumbnail()V

    .line 2651
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 2653
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2654
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2655
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2661
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2678
    :cond_2
    :goto_0
    return-void

    .line 2666
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_4

    .line 2667
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2670
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 2671
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2672
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2673
    :cond_5
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private showReview()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2726
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mReviewbitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 2727
    const/4 v0, 0x0

    .line 2728
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 2729
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2735
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2738
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 2739
    .local v1, info:[Landroid/hardware/Camera$CameraInfo;
    iget v4, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v4, v1, v4

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v2, :cond_3

    .line 2740
    .local v2, mirror:Z
    :goto_1
    invoke-static {v0, v3, v2}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mReviewbitmap:Landroid/graphics/Bitmap;

    .line 2744
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showAlert()V

    .line 2745
    return-void

    .line 2731
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2732
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .restart local v1       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v2, v3

    .line 2739
    goto :goto_1
.end method

.method private showTimeLapseUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 3889
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3890
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3892
    :cond_0
    return-void

    .line 3890
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 1160
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    const-string v2, "isVideoCaptureIntent"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1164
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :goto_0
    return-void

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1721
    const-string v1, "CAM_VideoModule"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCpuClientBeforeStartPreview()V

    .line 1724
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/VideoModule$CameraErrorCallback;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1725
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v1, v3, :cond_0

    .line 1726
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1727
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v1, :cond_0

    .line 1728
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1729
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1732
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->cover:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1733
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->cover:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1735
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 1736
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1737
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    .line 1740
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1741
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_2

    .line 1742
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1747
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewSync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1759
    return-void

    .line 1745
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1752
    :catch_0
    move-exception v0

    .line 1753
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCpuClientAfterStopPreview()V

    .line 1754
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1755
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1749
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeEffectsPreview()V

    .line 1750
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/EffectsRecorder;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private startVideoRecording()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2503
    const-string v4, "CAM_VideoModule"

    const-string v5, ">>>>enter VideoModule<<<<"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    const-string v4, "CAM_VideoModule"

    const-string v5, "startVideoRecording"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v4, :cond_0

    .line 2506
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v4}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2507
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2509
    :cond_0
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_1

    .line 2510
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 2511
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v4, v9}, Landroid/view/View;->setClickable(Z)V

    .line 2513
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->updateStorageSpaceAndHint()V

    .line 2516
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getStorageSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x989680

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 2517
    const-string v4, "CAM_VideoModule"

    const-string v5, "Storage issue, ignore the start request"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    sget-boolean v4, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v4, :cond_2

    .line 2519
    invoke-static {v11}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    .line 2632
    :cond_2
    :goto_0
    return-void

    .line 2524
    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mContinousFocusSupported:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v4, v4, Lcom/android/camera/ActivityBase;->mCameraId:I

    if-nez v4, :cond_5

    .line 2525
    const-string v4, "night"

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2526
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v4, :cond_5

    .line 2527
    const-string v1, "fixed"

    .line 2528
    .local v1, focusStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/ProductConfig;->isChinaMobileCarrier()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/camera/ProductConfig;->isCurrentNetMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2530
    const-string v1, "auto"

    .line 2532
    :cond_4
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2533
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mAutoFocusCallback:Lcom/android/camera/VideoModule$AutoFocusCallback;

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2538
    .end local v1           #focusStr:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2539
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2540
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeEffectsRecording()V

    .line 2541
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v4, :cond_8

    .line 2542
    const-string v4, "CAM_VideoModule"

    const-string v5, "Fail to initialize effect recorder"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    sget-boolean v4, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v4, :cond_2

    .line 2544
    invoke-static {v11}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    goto :goto_0

    .line 2549
    :cond_6
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->needOpenVideoStabilization:Z

    if-eqz v4, :cond_7

    .line 2550
    invoke-direct {p0, v10}, Lcom/android/camera/VideoModule;->openVideoStabilization(Z)V

    .line 2554
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeRecorder()V

    .line 2555
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v4, :cond_8

    .line 2556
    const-string v4, "CAM_VideoModule"

    const-string v5, "Fail to initialize media recorder"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    sget-boolean v4, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v4, :cond_2

    .line 2558
    invoke-static {v11}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    goto :goto_0

    .line 2552
    :cond_7
    invoke-direct {p0, v9}, Lcom/android/camera/VideoModule;->openVideoStabilization(Z)V

    goto :goto_1

    .line 2564
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->pauseAudioPlayback()V

    .line 2565
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCpuClientBeforeRecord()V

    .line 2569
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2571
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v4}, Lcom/android/camera/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2608
    :cond_9
    :goto_2
    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-eqz v4, :cond_a

    .line 2609
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2612
    :cond_a
    invoke-direct {p0, v9}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 2614
    iput-boolean v10, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 2616
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 2617
    iget-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    iput-wide v4, p0, Lcom/android/camera/VideoModule;->mWholeRecordingStartTime:J

    .line 2618
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingPauseTime:J

    .line 2621
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2622
    invoke-direct {p0, v10}, Lcom/android/camera/VideoModule;->showRecordingUI(Z)V

    .line 2627
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 2628
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOn()V

    .line 2629
    sget-boolean v4, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v4, :cond_2

    .line 2630
    invoke-static {v11}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    goto/16 :goto_0

    .line 2572
    :catch_0
    move-exception v0

    .line 2573
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "CAM_VideoModule"

    const-string v5, "Could not start effects recorder. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2574
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCpuClientAfterStopRecord()V

    .line 2575
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseEffectsRecorder()V

    .line 2576
    invoke-direct {p0, v9}, Lcom/android/camera/VideoModule;->openVideoStabilization(Z)V

    goto/16 :goto_0

    .line 2582
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_b
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V

    .line 2583
    sget-object v3, Lcom/android/camera/Storage;->mSdCardPath:Ljava/lang/String;

    .line 2584
    .local v3, mpath:Ljava/lang/String;
    const-string v4, "android.media.MediaRecorder"

    const-string v5, "setStoragePath"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2585
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_9

    .line 2586
    const-string v4, "CAM_VideoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----setStoragePath---- mSdcardPath is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v2, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 2589
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #mpath:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2590
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v4, "CAM_VideoModule"

    const-string v5, "Could not start media recorder. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2592
    const-string v4, "camera_start_record_failed"

    invoke-static {v4}, Lcom/android/camera/Util;->launchBugReportSystemByReflect(Ljava/lang/String;)V

    .line 2594
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCpuClientAfterStopRecord()V

    .line 2595
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 2596
    invoke-direct {p0, v9}, Lcom/android/camera/VideoModule;->openVideoStabilization(Z)V

    .line 2598
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto/16 :goto_0

    .line 2624
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_c
    invoke-direct {p0, v9, v10}, Lcom/android/camera/VideoModule;->showPausableRecordingUI(ZZ)V

    goto/16 :goto_3
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 1762
    const-string v0, "CAM_VideoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1764
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCpuClientAfterStopPreview()V

    .line 1765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1766
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2817
    const-string v4, "CAM_VideoModule"

    const-string v7, "stopVideoRecording"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    const/4 v2, 0x0

    .line 2821
    .local v2, fail:Z
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v4, :cond_4

    .line 2822
    const/4 v3, 0x0

    .line 2825
    .local v3, shouldAddToMediaStoreNow:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2830
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v4}, Lcom/android/camera/EffectsRecorder;->stopRecording()V

    .line 2837
    :goto_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2838
    const-string v4, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2847
    :goto_1
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->needOpenVideoStabilization:Z

    if-eqz v4, :cond_0

    .line 2848
    invoke-direct {p0, v6}, Lcom/android/camera/VideoModule;->openVideoStabilization(Z)V

    .line 2850
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 2862
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v4, :cond_1

    .line 2865
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_a

    move v0, v5

    .line 2866
    .local v0, closeEffects:Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->closeCamera(Z)V

    .line 2869
    .end local v0           #closeEffects:Z
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/camera/VideoModule;->showRecordingUI(Z)V

    .line 2870
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v4, :cond_2

    .line 2871
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->hideOtherRecordVideoSwitcher()V

    .line 2873
    :cond_2
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v4, :cond_3

    .line 2874
    invoke-direct {p0, v5}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 2878
    :cond_3
    iget v4, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    invoke-direct {p0, v4, v5}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 2879
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 2880
    if-eqz v3, :cond_4

    .line 2881
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->addVideoToMediaStore()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    .line 2885
    .end local v3           #shouldAddToMediaStoreNow:Z
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2886
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 2887
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v4, :cond_5

    .line 2888
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 2889
    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v4, :cond_5

    .line 2891
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2893
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v4, Lcom/android/camera/CameraScreenNail;

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    invoke-virtual {v4, v7}, Lcom/android/camera/CameraScreenNail;->setOneTimeOnFrameDrawnListener(Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;)V

    .line 2895
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2901
    :cond_5
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2902
    :cond_6
    sget-boolean v4, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v4, :cond_7

    .line 2903
    if-nez v2, :cond_b

    :goto_3
    sput-boolean v5, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCaptureResult:Z

    .line 2905
    :cond_7
    return v2

    .line 2832
    .restart local v3       #shouldAddToMediaStoreNow:Z
    :cond_8
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2833
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2834
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2835
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2840
    :catch_0
    move-exception v1

    .line 2841
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "CAM_VideoModule"

    const-string v7, "stop fail"

    invoke-static {v4, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2843
    const-string v4, "camera_stop_record_failed"

    invoke-static {v4}, Lcom/android/camera/Util;->launchBugReportSystemByReflect(Ljava/lang/String;)V

    .line 2844
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2845
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_1

    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_a
    move v0, v6

    .line 2865
    goto/16 :goto_2

    .end local v3           #shouldAddToMediaStoreNow:Z
    :cond_b
    move v5, v6

    .line 2903
    goto :goto_3
.end method

.method private switchCamera()V
    .locals 3

    .prologue
    .line 3780
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 3821
    :cond_0
    :goto_0
    return-void

    .line 3782
    :cond_1
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 3784
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 3786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 3787
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 3790
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3791
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 3792
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 3793
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 3796
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isPhoneCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3797
    const-string v0, "CAM_VideoModule"

    const-string v1, "isPhoneCalling 11--88888"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/CameraActivity;->mCallingVideoRecorderCloseAudio:Z

    .line 3801
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 3802
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 3803
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 3804
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3807
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mSupportIndependentOutput:Z

    if-nez v0, :cond_3

    .line 3808
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->resizeForCameraSnail(II)V

    .line 3812
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 3813
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 3815
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 3818
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3281
    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v4, :cond_1

    .line 3302
    :cond_0
    :goto_0
    return-void

    .line 3283
    :cond_1
    iget v4, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_2

    .line 3284
    move v3, p1

    .line 3285
    .local v3, tmp:I
    move p1, p2

    .line 3286
    move p2, v3

    .line 3289
    .end local v3           #tmp:I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v4, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    .line 3290
    .local v2, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    .line 3291
    .local v1, oldWidth:I
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    .line 3293
    .local v0, oldHeight:I
    if-ne v1, p1, :cond_3

    if-eq v0, p2, :cond_4

    .line 3294
    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 3295
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 3296
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    .line 3299
    :cond_4
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    if-nez v4, :cond_0

    .line 3300
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    goto :goto_0
.end method

.method private updateEffectSelection()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3835
    iget v2, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 3836
    .local v2, previousEffectType:I
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 3837
    .local v1, previousEffectParameter:Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v5

    iput v5, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 3838
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 3840
    iget v5, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-ne v5, v2, :cond_2

    .line 3841
    iget v5, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-nez v5, :cond_1

    .line 3871
    :cond_0
    :goto_0
    return v3

    .line 3842
    :cond_1
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3844
    :cond_2
    const-string v5, "CAM_VideoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New effect selection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v8, "pref_video_effect_key"

    const-string v9, "none"

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    iget v5, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-nez v5, :cond_3

    .line 3849
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v5}, Lcom/android/camera/EffectsRecorder;->stopPreview()V

    .line 3850
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    move v3, v4

    .line 3851
    goto :goto_0

    .line 3853
    :cond_3
    iget v3, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v5, "gallery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3856
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3857
    .local v0, i:Landroid/content/Intent;
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "video/*"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3859
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3860
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v5, 0x3e8

    invoke-virtual {v3, v0, v5}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v4

    .line 3861
    goto :goto_0

    .line 3863
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    if-nez v2, :cond_5

    .line 3865
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 3866
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkQualityAndStartPreview()V

    :goto_1
    move v3, v4

    .line 3871
    goto :goto_0

    .line 3869
    :cond_5
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v5, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateOverrideSetting()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 929
    const-string v2, "CAM_VideoModule"

    const-string v3, "updateOverrideSetting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_scenemode_key"

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e01ef

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    .line 936
    const-string v2, "auto"

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 937
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/camera/VideoModule;->overrideSceneSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1111 video---------mParameters.getWhiteBalance()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1111 video---------mParameters.getColorEffect()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 963
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 964
    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 965
    .local v0, extraVideoQuality:I
    if-lez v0, :cond_6

    .line 966
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_videosize_key"

    const-string v4, "1920x1080"

    invoke-static {v2, v3, v4, v8}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 974
    .end local v0           #extraVideoQuality:I
    :cond_1
    :goto_1
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 975
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_video_duration_key"

    const-string v4, "10"

    invoke-static {v2, v3, v4, v8}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 978
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v2, :cond_3

    .line 979
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v2}, Lcom/android/camera/ui/CameraLeftBar;->notifyDataSetChanged()V

    .line 981
    :cond_3
    return-void

    .line 942
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    invoke-direct {p0, v7, v7, v7, v7}, Lcom/android/camera/VideoModule;->overrideSceneSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_whitebalance_key"

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e01ff

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    .line 947
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_effect_key"

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0206

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    .line 952
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--updateOverrideSetting()----------mColorEffect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--updateOverrideSetting()----------mWhiteBalance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v2, "auto"

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 956
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v7, v7, v2}, Lcom/android/camera/VideoModule;->overrideSceneSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 957
    :cond_5
    const-string v2, "none"

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mColorEffect:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 958
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2, v7, v7}, Lcom/android/camera/VideoModule;->overrideSceneSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 968
    .restart local v0       #extraVideoQuality:I
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_6
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_videosize_key"

    const-string v4, "176x144"

    invoke-static {v2, v3, v4, v8}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 970
    .end local v0           #extraVideoQuality:I
    :cond_7
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_1

    goto/16 :goto_1
.end method

.method private updateRecordingTime()V
    .locals 19

    .prologue
    .line 2977
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v15, :cond_1

    .line 3027
    :cond_0
    :goto_0
    return-void

    .line 2980
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    if-nez v15, :cond_0

    .line 2983
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2984
    .local v10, now:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long v6, v10, v15

    .line 2985
    .local v6, delta:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/camera/VideoModule;->mRecordingPauseTime:J

    add-long/2addr v6, v15

    .line 2989
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    const v16, 0xea60

    sub-int v15, v15, v16

    int-to-long v15, v15

    cmp-long v15, v6, v15

    if-ltz v15, :cond_4

    const/4 v5, 0x1

    .line 2992
    .local v5, countdownRemainingTime:Z
    :goto_1
    move-wide v8, v6

    .line 2993
    .local v8, deltaAdjusted:J
    if-eqz v5, :cond_2

    .line 2994
    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v17, v17, v8

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    const-wide/16 v17, 0x3e7

    add-long v8, v15, v17

    .line 2999
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v15, :cond_5

    .line 3000
    const/4 v15, 0x0

    invoke-static {v8, v9, v15}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 3001
    .local v14, text:Ljava/lang/String;
    const-wide/16 v12, 0x3e8

    .line 3010
    .local v12, targetNextUpdateDelay:J
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3012
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v15, v5, :cond_3

    .line 3015
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 3017
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    if-eqz v5, :cond_6

    const v15, 0x7f0b0011

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 3021
    .local v4, color:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3024
    .end local v4           #color:I
    :cond_3
    rem-long v15, v6, v12

    sub-long v2, v12, v15

    .line 3025
    .local v2, actualNextUpdateDelay:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2989
    .end local v2           #actualNextUpdateDelay:J
    .end local v5           #countdownRemainingTime:Z
    .end local v8           #deltaAdjusted:J
    .end local v12           #targetNextUpdateDelay:J
    .end local v14           #text:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 3006
    .restart local v5       #countdownRemainingTime:Z
    .restart local v8       #deltaAdjusted:J
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v15

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 3007
    .restart local v14       #text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v12, v15

    .restart local v12       #targetNextUpdateDelay:J
    goto :goto_2

    .line 3017
    :cond_6
    const v15, 0x7f0b0010

    goto :goto_3
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 4

    .prologue
    .line 1552
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1553
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0184

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1555
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1556
    return-void
.end method


# virtual methods
.method public CoverStateChange(Z)V
    .locals 2
    .parameter "open"

    .prologue
    .line 4666
    if-eqz p1, :cond_1

    .line 4668
    const-string v0, "CAM_VideoModule"

    const-string v1, ">>>>>>>>>>>>>cover is open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onResumeBeforeSuper()V

    .line 4670
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onResumeAfterSuper()V

    .line 4684
    :cond_0
    :goto_0
    return-void

    .line 4671
    :cond_1
    if-nez p1, :cond_0

    .line 4672
    const-string v0, "CAM_VideoModule"

    const-string v1, ">>>>>>>>>>>>>cover is close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onPauseBeforeSuper()V

    .line 4674
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onPauseAfterSuper()V

    goto :goto_0
.end method

.method public QueryRecording()V
    .locals 3

    .prologue
    .line 2490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.recorder.state.query"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2491
    .local v0, iRecord:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2492
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2494
    :cond_0
    const-string v1, "CAM_VideoModule"

    const-string v2, "sendBrodcast: QUERY_RECORDER_STATE_ACTION: com.android.recorder.state.query"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    return-void
.end method

.method public animateWhiteFrame()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/WhiteFrameView;->requestRenderer(Landroid/graphics/Rect;Lcom/android/camera/CameraModule;)V

    .line 507
    :cond_0
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 1022
    const-string v0, "CAM_VideoModule"

    const-string v1, "collapseCameraControls"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->removeTopLevelPopup()Z

    move-result v0

    return v0
.end method

.method public dismissPopup(ZZ)V
    .locals 2
    .parameter "topLevelPopupOnly"
    .parameter "fullScreen"

    .prologue
    .line 4424
    if-eqz p2, :cond_0

    .line 4425
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 4428
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/VideoModule;->setShowMenu(Z)V

    .line 4429
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingList;

    if-eqz v0, :cond_1

    .line 4430
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingList;

    .line 4434
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 3896
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3902
    :goto_0
    return v0

    .line 3897
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraLeftBar;->isListShowed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3898
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 3899
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingList;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_4

    .line 3900
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 3902
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModuleHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 4643
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4453
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4454
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;ZZ)V
    .locals 7
    .parameter "activity"
    .parameter "root"
    .parameter "reuseScreenNail"
    .parameter "openCamera"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 807
    const-string v2, "CAM_VideoModule"

    const-string v5, "init"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v0, 0x0

    .line 809
    .local v0, cameraOpenThread:Lcom/android/camera/VideoModule$CameraOpenThread;
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 810
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v5, "clickVideoBtn"

    const-string v6, "click"

    invoke-static {v2, v5, v6}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 811
    iput-object p2, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    .line 812
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/CameraActivity;->setStartupTime(J)V

    .line 813
    new-instance v2, Lcom/android/camera/ComboPreferences;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v5}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 814
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 815
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 816
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getWhiteFrameView()Lcom/android/camera/ui/WhiteFrameView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

    .line 817
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/WhiteFrameView;->setContinueAnimation(Lcom/android/camera/CameraActivity;)V

    .line 818
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v6, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 819
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 821
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v5

    iput v5, v2, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    .line 822
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0184

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 823
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetEffect()Z

    .line 825
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/VideoModule;->mModuleInitTime:J

    .line 831
    if-eqz p4, :cond_0

    .line 832
    new-instance v0, Lcom/android/camera/VideoModule$CameraOpenThread;

    .end local v0           #cameraOpenThread:Lcom/android/camera/VideoModule$CameraOpenThread;
    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$CameraOpenThread;-><init>(Lcom/android/camera/VideoModule;)V

    .line 833
    .restart local v0       #cameraOpenThread:Lcom/android/camera/VideoModule$CameraOpenThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 836
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 837
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040072

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 838
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->updateStorageSpace()V

    .line 841
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    .line 842
    if-eqz p3, :cond_3

    .line 843
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2, v4}, Lcom/android/camera/ActivityBase;->reuseCameraScreenNail(ZZ)Lcom/android/gallery3d/ui/ScreenNail;

    .line 847
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 851
    if-eqz p4, :cond_1

    .line 852
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 854
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v2, :cond_5

    .line 855
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e014c

    invoke-static {v2, v5}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_2
    return-void

    :cond_2
    move v2, v4

    .line 843
    goto :goto_0

    .line 845
    :cond_3
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2, v4}, Lcom/android/camera/ActivityBase;->createCameraScreenNail(ZZ)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_3

    .line 857
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v2, :cond_6

    .line 858
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e014d

    invoke-static {v2, v5}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 861
    :catch_0
    move-exception v2

    .line 865
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 866
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/VideoModule$3;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoModule$3;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 876
    .local v1, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 877
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeControlByIntent()V

    .line 878
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeMiscControls()V

    .line 879
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeOverlay()V

    .line 882
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    .line 883
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCurrentLocation()Lcom/android/camera/LocationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 887
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mOrientationResetNeeded:Z

    .line 891
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 892
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v2, :cond_9

    .line 893
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e014c

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 899
    :catch_1
    move-exception v2

    .line 903
    :cond_7
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 904
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 905
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 908
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 910
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v4}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 912
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_8

    .line 913
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->setBrightness()V

    .line 915
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->installAutoTestIntentFilter()V

    goto/16 :goto_2

    .line 895
    :cond_9
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v2, :cond_7

    .line 896
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e014d

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method public installIntentFilter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1624
    const-string v2, "CAM_VideoModule"

    const-string v3, "--------installIntentFilter()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1629
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1630
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1631
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1632
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1633
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1634
    new-instance v2, Lcom/android/camera/VideoModule$MyBroadcastReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1635
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1638
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1639
    .local v1, intentFilter1:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1640
    new-instance v2, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 1641
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1643
    return-void
.end method

.method public isCanGotoGallery()Z
    .locals 1

    .prologue
    .line 4465
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 4466
    const/4 v0, 0x1

    .line 4468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 4459
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public isModuleIdle()Z
    .locals 1

    .prologue
    .line 4629
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mAnimation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 2499
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 4391
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3306
    packed-switch p1, :pswitch_data_0

    .line 3321
    :goto_0
    return-void

    .line 3308
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3311
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 3312
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 3315
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 3316
    const-string v0, "CAM_VideoModule"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 3306
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 4623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mAnimation:Z

    .line 4624
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 4635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mAnimation:Z

    .line 4636
    return-void
.end method

.method public onBackPressed()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 1926
    const-string v3, "CAM_VideoModule"

    const-string v4, "onBackPressed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 1940
    :cond_0
    :goto_0
    return v2

    .line 1928
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_2

    .line 1929
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/VideoModule;->mWholeRecordingStartTime:J

    sub-long v0, v3, v5

    .line 1930
    .local v0, duration:J
    const-wide/16 v3, 0x5dc

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    .line 1933
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1940
    .end local v0           #duration:J
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->removeTopLevelPopup()Z

    move-result v2

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 4374
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4387
    :cond_0
    :goto_0
    return-void

    .line 4376
    :cond_1
    iput p1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 4377
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 4378
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 4383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    goto :goto_0

    .line 4385
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 3373
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3375
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 3377
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 3378
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 3832
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 3609
    const-string v1, "CAM_VideoModule"

    const-string v2, "--------onConfigurationChanged---------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->isConfigChanged:Z

    .line 3611
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 3613
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3614
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3615
    const v2, 0x7f040072

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3618
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeMiscControls()V

    .line 3619
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeControlByIntent()V

    .line 3620
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeOverlay()V

    .line 3621
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 3622
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeMiscControls()V

    .line 3623
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 3624
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 3625
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3628
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 3629
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 3630
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->onFullScreenChanged(Z)V

    .line 3631
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v1, :cond_0

    .line 3632
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 3633
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 3636
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 3637
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mbPreviewShowing:Z

    if-eqz v1, :cond_1

    .line 3638
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showAlert()V

    .line 3640
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->isConfigChanged:Z

    .line 3642
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 4655
    return-void
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .parameter "exception"
    .parameter "fileName"

    .prologue
    .line 3384
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3385
    invoke-direct {p0, p2}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3388
    :cond_0
    :try_start_1
    const-string v1, "android.filterpacks.videosink.MediaRecorderStopException"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3390
    const-string v1, "CAM_VideoModule"

    const-string v2, "Problem recoding video file. Removing incomplete file."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3391
    monitor-exit p0

    return-void

    .line 3393
    :catch_0
    move-exception v0

    .line 3394
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string v1, "CAM_VideoModule"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3396
    .end local v0           #ex:Ljava/lang/ClassNotFoundException;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during recording!"

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3384
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onEffectsUpdate(II)V
    .locals 5
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 3325
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate. Effect Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 3329
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3330
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkQualityAndStartPreview()V

    .line 3365
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 3366
    const-string v0, "CAM_VideoModule"

    const-string v1, "OnEffectsUpdate: closing effects if activity paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeEffects()V

    .line 3369
    :cond_1
    return-void

    .line 3331
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 3333
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->addVideoToMediaStore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3334
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 3335
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v0, :cond_4

    .line 3336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 3342
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 3345
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3346
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 3347
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->clearVideoNamer()V

    goto :goto_0

    .line 3338
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showAlert()V

    goto :goto_1

    .line 3349
    :cond_5
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 3352
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3353
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 3355
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3359
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2452
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2455
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 2456
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->updateStorageSpaceAndHint()V

    .line 2458
    :cond_0
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    const/4 v0, 0x0

    .line 4067
    const-string v1, "CAM_VideoModule"

    const-string v2, "-------onFullScreenChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    if-nez p1, :cond_1

    .line 4070
    const-string v0, "CAM_VideoModule"

    const-string v1, "-------skip onFullScreenChanged in false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    :cond_0
    :goto_0
    return-void

    .line 4073
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v1, :cond_2

    .line 4074
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 4076
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingList;

    if-eqz v1, :cond_3

    .line 4077
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/VideoModule;->dismissPopup(ZZ)V

    .line 4079
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v1, :cond_4

    .line 4081
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4083
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->setShowMenu(Z)V

    .line 4084
    if-eqz p1, :cond_6

    .line 4085
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 4098
    :goto_2
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_7

    .line 4099
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_0

    .line 4100
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setFullScreen(Z)V

    goto :goto_0

    .line 4081
    :cond_5
    const/16 v0, 0x8

    goto :goto_1

    .line 4090
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->hideVideoUI()V

    goto :goto_2

    .line 4105
    :cond_7
    if-eqz p1, :cond_8

    .line 4106
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->expand()V

    goto :goto_0

    .line 4108
    :cond_8
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->shrink()V

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2463
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 2464
    const-string v0, "CAM_VideoModule"

    const-string v1, " have recive MEDIA_RECORDER_INFO_MAX_DURATION_REACHED ------so stop recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 2474
    :cond_0
    :goto_0
    return-void

    .line 2466
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 2467
    const-string v0, "CAM_VideoModule"

    const-string v1, " have recive MAX_FILESIZE_REACHED ------so stop recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 2471
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0178

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1947
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1968
    :goto_0
    return v0

    .line 1951
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1968
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1953
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1959
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1965
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1951
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1973
    packed-switch p1, :pswitch_data_0

    .line 1978
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1976
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1973
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mSupportIndependentOutput:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->resizeForCameraSnail(II)V

    .line 1618
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    .line 1620
    :cond_0
    return-void
.end method

.method public onMenuHide()V
    .locals 0

    .prologue
    .line 4490
    return-void
.end method

.method public onMenuShowed()V
    .locals 0

    .prologue
    .line 4487
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1076
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {p1, v2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v0

    .line 1079
    .local v0, newOrientation:I
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    if-eq v2, v0, :cond_2

    .line 1080
    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 1086
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1087
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1093
    :cond_2
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v1, v2, 0x168

    .line 1096
    .local v1, orientationCompensation:I
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    if-ne v2, v1, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mOrientationResetNeeded:Z

    if-eqz v2, :cond_4

    .line 1097
    :cond_3
    iput v1, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    .line 1100
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v2, :cond_6

    .line 1101
    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    invoke-direct {p0, v2, v4}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 1102
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mOrientationResetNeeded:Z

    .line 1110
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 1120
    :cond_4
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingList;

    if-eqz v2, :cond_5

    .line 1121
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingList;

    iget v3, p0, Lcom/android/camera/VideoModule;->mOrientationCompensation:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/RotateListLayout;->setOrientation(IZ)V

    .line 1123
    :cond_5
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    if-eqz v2, :cond_0

    .line 1124
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, v1, v4}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    goto :goto_0

    .line 1107
    :cond_6
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, v1, v5}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_1
.end method

.method public onPauseAfterSuper()V
    .locals 1

    .prologue
    .line 1914
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 1915
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1835
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1836
    const-string v0, "CAM_VideoModule"

    const-string v1, ">>>>>>>already on pause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :cond_0
    :goto_0
    return-void

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1840
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1841
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1843
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1844
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1845
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 1847
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mAutoTestRegister:Z

    if-eqz v0, :cond_4

    .line 1848
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    sget-object v1, Lcom/android/camera/VideoModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1849
    sput-object v2, Lcom/android/camera/VideoModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    .line 1850
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mAutoTestRegister:Z

    .line 1852
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 1853
    const-string v0, "CAM_VideoModule"

    const-string v1, "onPauseBeforeSuper"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_8

    .line 1856
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1861
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1866
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectDisplay()V

    .line 1879
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releasePreviewResources()V

    .line 1881
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 1882
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1883
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1885
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mAutoTestRegister:Z

    if-eqz v0, :cond_7

    .line 1886
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    sget-object v1, Lcom/android/camera/VideoModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1887
    sput-object v2, Lcom/android/camera/VideoModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    .line 1888
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mAutoTestRegister:Z

    .line 1890
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetScreenOn()V

    .line 1893
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1894
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1895
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1896
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1897
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1900
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 1901
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 1903
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mImageSaver:Lcom/android/camera/VideoModule$ImageSaver;

    if-eqz v0, :cond_0

    .line 1904
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mImageSaver:Lcom/android/camera/VideoModule$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule$ImageSaver;->finish()V

    .line 1905
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mImageSaver:Lcom/android/camera/VideoModule$ImageSaver;

    goto/16 :goto_0

    .line 1858
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1859
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    goto :goto_1

    .line 1875
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1876
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->clearVideoNamer()V

    goto :goto_2
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3827
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3828
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1281
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3651
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3665
    :goto_0
    return-void

    .line 3652
    :cond_0
    new-instance v4, Lcom/android/camera/VideoModule$9;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoModule$9;-><init>(Lcom/android/camera/VideoModule;)V

    .line 3658
    .local v4, runnable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    if-nez v0, :cond_1

    .line 3659
    new-instance v0, Lcom/android/camera/RotateDialogController;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f040060

    invoke-direct {v0, v2, v3}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 3660
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e02c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x104000a

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/high16 v6, 0x104

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResumeAfterSuper()V
    .locals 4

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1703
    :cond_0
    :goto_0
    return-void

    .line 1661
    :cond_1
    const-string v0, "CAM_VideoModule"

    const-string v1, "onResumeAfterSuper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 1667
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v0, :cond_5

    .line 1668
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1669
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1671
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 1672
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v0, :cond_3

    .line 1673
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e014c

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1676
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_4

    .line 1677
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e014d

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1680
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 1681
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 1682
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 1686
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 1688
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1692
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_6

    .line 1693
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    .line 1694
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1697
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1698
    new-instance v0, Lcom/android/camera/VideoModule$VideoNamer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/VideoModule$VideoNamer;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    .line 1702
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 1650
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->QueryRecording()V

    .line 1651
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->pauseAudioPlayback()V

    .line 1652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 1653
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->installIntentFilter()V

    .line 1654
    new-instance v0, Lcom/android/camera/VideoModule$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$ImageSaver;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mImageSaver:Lcom/android/camera/VideoModule$ImageSaver;

    .line 1655
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1189
    const-string v0, "CAM_VideoModule"

    const-string v1, "onReviewCancelClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 1191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 1192
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1178
    const-string v0, "CAM_VideoModule"

    const-string v1, "onReviewDoneClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 1180
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1172
    const-string v0, "CAM_VideoModule"

    const-string v1, "onReviewPlayClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPlayVideoActivity()V

    .line 1174
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1183
    const-string v0, "CAM_VideoModule"

    const-string v1, "onReviewRetakeClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->deleteCurrentVideo()V

    .line 1185
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->hideAlert()V

    .line 1186
    return-void
.end method

.method public onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 3699
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3755
    :goto_0
    return-void

    .line 3700
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v2

    .line 3703
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 3754
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3705
    :cond_1
    if-eqz p1, :cond_5

    .line 3707
    :try_start_1
    const-string v1, "pref_camera_capturemode_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3708
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    .line 3709
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object p2, v1, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 3712
    :cond_2
    const-string v1, "pref_camera_secure_box_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3713
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/camera/CameraActivity;->mSecureBoxOverried:Z

    .line 3714
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object p2, v1, Lcom/android/camera/CameraActivity;->mCurrentSecureBoxValue:Ljava/lang/String;

    .line 3717
    :cond_3
    const-string v1, "pref_camera_video_flashmode_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3718
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object p2, v1, Lcom/android/camera/CameraActivity;->mCurrendFlashMode:Ljava/lang/String;

    .line 3721
    :cond_4
    const-string v1, "pref_camera_scenemode_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "auto"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3722
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_whitebalance_key"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3723
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_effect_key"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3728
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOverrideSetting()V

    .line 3733
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateEffectSelection()Z

    move-result v1

    if-eqz v1, :cond_7

    monitor-exit v2

    goto :goto_0

    .line 3724
    :cond_6
    const-string v1, "pref_camera_secure_box_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3725
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p2}, Lcom/android/camera/CameraActivity;->handleCameraSecureBox(Ljava/lang/String;)V

    goto :goto_1

    .line 3735
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 3736
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 3738
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3739
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v1, v3, :cond_8

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-eq v1, v3, :cond_a

    .line 3741
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3742
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 3747
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3748
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 3749
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/CameraActivity;->resizeForCameraSnail(II)V

    .line 3754
    :goto_3
    monitor-exit v2

    goto/16 :goto_0

    .line 3744
    :cond_9
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 3745
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_2

    .line 3751
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 12
    .parameter "b"

    .prologue
    .line 1290
    const-string v6, "CAM_VideoModule"

    const-string v7, "onShutterButtonClick "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    iget-boolean v6, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v6, :cond_1

    .line 1292
    const-string v6, "CAM_VideoModule"

    const-string v7, "onShutterButtonClick return"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    iget-boolean v6, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-eqz v6, :cond_2

    .line 1296
    const-string v6, "CAM_VideoModule"

    const-string v7, "onShutterButtonClick mSnapshotInProgress=true"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1299
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->collapseCameraControls()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v6, :cond_4

    .line 1300
    :cond_3
    sget-boolean v6, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v6, :cond_0

    .line 1301
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    goto :goto_0

    .line 1306
    :cond_4
    iget-boolean v6, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v6, :cond_5

    .line 1307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/VideoModule;->mWholeRecordingStartTime:J

    sub-long v0, v6, v8

    .line 1308
    .local v0, duration:J
    const-wide/16 v6, 0x5dc

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    .line 1311
    .end local v0           #duration:J
    :cond_5
    const/4 v2, -0x1

    .line 1312
    .local v2, id:I
    if-eqz p1, :cond_6

    .line 1313
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1315
    :cond_6
    const v6, 0x7f100036

    if-ne v6, v2, :cond_b

    .line 1316
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportVideoPause()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1319
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 1320
    .local v4, pause:Z
    if-eqz v4, :cond_9

    .line 1321
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v6, :cond_8

    .line 1322
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 1323
    const-string v6, "android.media.MediaRecorder"

    const-string v7, "resume"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1324
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_7

    .line 1325
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/camera/VideoModule;->showPausableRecordingUI(ZZ)V

    .line 1327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 1328
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 1329
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/VideoModule;->mRecordPauseDuration:Z

    .line 1350
    .end local v3           #method:Ljava/lang/reflect/Method;
    :cond_8
    :goto_1
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1332
    :cond_9
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v6, :cond_8

    .line 1333
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 1334
    const-string v6, "android.media.MediaRecorder"

    const-string v7, "pause"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1335
    .restart local v3       #method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_a

    .line 1336
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    :cond_a
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/camera/VideoModule;->showPausableRecordingUI(ZZ)V

    .line 1339
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 1340
    iget-wide v6, p0, Lcom/android/camera/VideoModule;->mRecordingPauseTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/camera/VideoModule;->mRecordingPauseTime:J

    .line 1341
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/VideoModule;->mRecordPauseDuration:Z

    .line 1342
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    goto :goto_1

    .line 1353
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #pause:Z
    :cond_b
    const v6, 0x7f100037

    if-ne v6, v2, :cond_c

    .line 1358
    :cond_c
    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 1359
    .local v5, stop:Z
    if-eqz v5, :cond_f

    .line 1360
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1364
    :goto_2
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    if-eqz v6, :cond_d

    .line 1365
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 1370
    :cond_d
    iget-boolean v6, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v6, :cond_e

    if-nez v5, :cond_0

    .line 1371
    :cond_e
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1362
    :cond_f
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startVideoRecording()V

    goto :goto_2
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 1379
    const-string v0, "CAM_VideoModule"

    const-string v1, "%%%%%%%%onShutterButtonFocus()%%%%%"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->collapseCameraControls()Z

    .line 1384
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 4
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4002
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4003
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0192

    iget v3, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 4036
    :cond_0
    :goto_0
    return-void

    .line 4008
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4012
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 4014
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v0, :cond_0

    .line 4015
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraLeftBar;->dismissPupup()Z

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1612
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 926
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraLeftBar;->dismissPupup()Z

    move-result v0

    .line 1030
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusRect(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 4649
    return-void
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 6
    .parameter "hasSignal"

    .prologue
    .line 4445
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4448
    return-void

    .line 4445
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 3987
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3988
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3990
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateBoltting(I)V

    .line 3997
    :cond_0
    return-void
.end method

.method public swapCaptureVideoMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 3500
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getPauseRecordButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    .line 3501
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStopRecordButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    .line 3503
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getTakePicuteButtonInVideoModule()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    .line 3506
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3508
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3509
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoTakeOnShutterListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 3518
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    if-nez v0, :cond_2

    .line 3548
    :cond_0
    :goto_1
    return-void

    .line 3512
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showOtherRecordVideoSwitcher()V

    .line 3513
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getPauseRecordButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    .line 3514
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStopRecordButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    .line 3516
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3519
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 3520
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 3522
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3523
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraModeSwitcher()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3524
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRecordVideoSwitcher()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3525
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3526
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3527
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraLeftBar()Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 3528
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->swapCaptureIntentMode()V

    .line 3531
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getFaceEffectButton()Lcom/android/camera/ui/MyTextPreferenceButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3532
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraEffectContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3534
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIndependenceShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    .line 3535
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3536
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 3537
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    .line 3543
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3544
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3545
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3546
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public updateCameraAppView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4040
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4054
    :cond_0
    :goto_0
    return-void

    .line 4043
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_3

    .line 4044
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4045
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    goto :goto_0

    .line 4048
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    .line 4049
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    goto :goto_0

    .line 4050
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    if-eqz v0, :cond_0

    .line 4051
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    .line 4052
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    goto :goto_0
.end method
