.class public Lcom/android/camera/PanoramaModule;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;
.implements Lcom/android/camera/ui/LayoutChangeNotifier$Listener;
.implements Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoramaModule$MyBroadcastReceiver;,
        Lcom/android/camera/PanoramaModule$WaitProcessorTask;,
        Lcom/android/camera/PanoramaModule$FlipBitmapDrawable;,
        Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;,
        Lcom/android/camera/PanoramaModule$MosaicJpeg;
    }
.end annotation


# static fields
.field private static mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAnimation:Z

.field private mAutoTestRegister:Z

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

.field private mCameraOrientation:I

.field private mCameraState:I

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCancelComputation:Z

.field private mCaptureIndicator:Landroid/view/View;

.field private mCaptureLayout:Landroid/widget/LinearLayout;

.field private mCaptureState:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDateTimeStampFormat:Ljava/text/DateFormat;

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDialogWaitingPreviousString:Ljava/lang/String;

.field private mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

.field private mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

.field private mGPSDateStampFormat:Ljava/text/DateFormat;

.field private mGPSTimeStampFormat:Ljava/text/DateFormat;

.field private mHorizontalViewAngle:F

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mLeftIndicator:Landroid/view/View;

.field private mMainHandler:Landroid/os/Handler;

.field private mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

.field private mMosaicFrameProcessorInitialized:Z

.field private mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

.field private mPanoLayout:Landroid/view/ViewGroup;

.field private mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPaused:Z

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressAngle:[F

.field private mProgressDirectionMatrix:Landroid/graphics/Matrix;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordSwticher:Landroid/view/View;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSoundPlayer:Lcom/android/camera/SoundClips$Player;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mThumbnail:Lcom/android/camera/Thumbnail;

.field protected mThumbnailViewWidth:I

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private oldorientation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    .line 197
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    .line 217
    iput-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mAnimation:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mAutoTestRegister:Z

    .line 1413
    iput v1, p0, Lcom/android/camera/PanoramaModule;->oldorientation:I

    .line 1707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1709
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/PanoramaModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/PanoramaModule;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/PanoramaModule;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/PanoramaModule;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/PanoramaModule;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PanoramaModule;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PanoramaModule;FFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaModule;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/PanoramaModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule;->showDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/PanoramaModule;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->cancelHighResComputation()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/PanoramaModule;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->releaseCamera()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/PanoProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->getCaptureOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/camera/PanoramaModule;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/camera/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/ui/LayoutNotifyView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/PanoramaModule;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PanoramaModule;->configMosaicPreview(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->resetToPreview()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/PanoramaModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/PanoramaModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/PanoramaModule;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    return-object v0
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 1140
    const-string v0, "CAM PanoModule"

    const-string v1, "cancelHighResComputation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mCancelComputation:Z

    .line 1142
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1143
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1144
    monitor-exit v1

    .line 1145
    return-void

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 2

    .prologue
    .line 1281
    const-string v0, "CAM PanoModule"

    const-string v1, "clearMosaicFrameProcessorIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1285
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 1287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private configMosaicPreview(II)V
    .locals 7
    .parameter "w"
    .parameter "h"

    .prologue
    .line 584
    const-string v4, "CAM PanoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configMosaicPreview w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 589
    .local v0, isLandscape:Z
    :goto_0
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 590
    .local v3, screenWidth:I
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 592
    .local v1, screenHeight:I
    if-eqz v0, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    if-nez v0, :cond_3

    if-eq p1, v3, :cond_3

    .line 620
    :cond_1
    :goto_1
    return-void

    .line 586
    .end local v0           #isLandscape:Z
    .end local v1           #screenHeight:I
    .end local v3           #screenWidth:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 597
    .restart local v0       #isLandscape:Z
    .restart local v1       #screenHeight:I
    .restart local v3       #screenWidth:I
    :cond_3
    if-eqz v0, :cond_4

    .line 598
    move p1, v3

    .line 599
    mul-int/lit8 v4, v1, 0x2

    div-int/lit8 p2, v4, 0x3

    .line 601
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->stopCameraPreview()V

    .line 602
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v4, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    .line 603
    .local v2, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 604
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    if-nez v4, :cond_6

    .line 605
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 612
    :goto_2
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v4}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 613
    :cond_5
    new-instance v4, Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-direct {v4, v5, p1, p2, v0}, Lcom/android/camera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZ)V

    iput-object v4, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 616
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v4}, Lcom/android/camera/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 617
    iget-boolean v4, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-nez v4, :cond_1

    .line 618
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->resetToPreview()V

    goto :goto_1

    .line 607
    :cond_6
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 608
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 609
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    goto :goto_2
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 575
    const-string v0, "CAM PanoModule"

    const-string v1, "configureCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 577
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 578
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 579
    const-string v0, "none"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 581
    return-void
.end method

.method private createContentView()V
    .locals 4

    .prologue
    .line 978
    const-string v1, "CAM PanoModule"

    const-string v2, "createContentView"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04003c

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 980
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 981
    .local v0, appRes:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v2, 0x7f1000b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    .line 982
    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColor:I

    .line 983
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColorFast:I

    .line 984
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v2, 0x7f1000be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    .line 985
    new-instance v1, Lcom/android/camera/RotateDialogController;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f040060

    invoke-direct {v1, v2, v3}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 986
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V

    .line 988
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 989
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .parameter
    .parameter "need4To3"
    .parameter "needSmaller"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v4, 0x4b000

    .line 508
    .local v4, pixelsDiff:I
    const/4 v2, 0x0

    .line 509
    .local v2, hasFound:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 510
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 511
    .local v1, h:I
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    .line 513
    .local v6, w:I
    const v7, 0x4b000

    mul-int v8, v1, v6

    sub-int v0, v7, v8

    .line 514
    .local v0, d:I
    if-eqz p3, :cond_1

    if-ltz v0, :cond_0

    .line 517
    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v6, 0x3

    if-ne v7, v8, :cond_0

    .line 520
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 521
    if-ge v0, v4, :cond_0

    .line 522
    iput v6, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    .line 523
    iput v1, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    .line 524
    move v4, v0

    .line 525
    const/4 v2, 0x1

    goto :goto_0

    .line 528
    .end local v0           #d:I
    .end local v1           #h:I
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #w:I
    :cond_3
    return v2
.end method

.method private getCaptureOrientation()I
    .locals 3

    .prologue
    .line 1071
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mUsingFrontCamera:Z

    if-eqz v1, :cond_0

    .line 1074
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mCameraOrientation:I

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    .line 1078
    .local v0, orientation:I
    :goto_0
    return v0

    .line 1076
    .end local v0           #orientation:I
    :cond_0
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mCameraOrientation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .restart local v0       #orientation:I
    goto :goto_0
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1266
    sparse-switch p0, :sswitch_data_0

    .line 1276
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1268
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1274
    :goto_0
    return-object v0

    .line 1270
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1272
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1274
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1266
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 642
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    return-void
.end method

.method private hideFilterDrawer()V
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getFilterSlidingDrawer()Lcom/android/camera/ui/FilterSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getFilterSlidingDrawer()Lcom/android/camera/ui/FilterSlidingDrawer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->setVisibility(I)V

    .line 1963
    :cond_0
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 785
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 790
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 791
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 792
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 1292
    const-string v0, "CAM PanoModule"

    const-string v1, "initMosaicFrameProcessorIfNeeded >>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->getPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/MosaicFrameProcessor;->initialize(III)V

    .line 1296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    .line 1297
    const-string v0, "CAM PanoModule"

    const-string v1, "initMosaicFrameProcessorIfNeeded <<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private installAutoTestIntentFilter()V
    .locals 3

    .prologue
    .line 1846
    new-instance v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2, p0}, Lcom/android/autoTest/AutoTestBroadCastReceiver;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;)V

    sput-object v1, Lcom/android/camera/PanoramaModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    .line 1847
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yulong.camera.action.ygtptest_capture"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.yulong.camera.action.ygtptest_openalbum"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1850
    const-string v1, "com.yulong.camera.action.ygtptest_switchCameraId"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1851
    const-string v1, "com.yulong.camera.action.ygtptest_switchMode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1852
    const-string v1, "com.yulong.camera.action.ygtptest_setting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1853
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    sget-object v2, Lcom/android/camera/PanoramaModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1854
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mAutoTestRegister:Z

    .line 1855
    return-void
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1629
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1630
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1622
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1623
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1624
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1625
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 903
    const-string v3, "CAM PanoModule"

    const-string v4, "loadCameraPreferences"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    new-instance v2, Lcom/android/camera/CameraSettings;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 906
    .local v2, settings:Lcom/android/camera/CameraSettings;
    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 907
    const-string v3, "CAM PanoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCameraPreferences mPreferenceGroup ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mCameraLeftBar="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v3, v3, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    if-eqz v3, :cond_0

    .line 910
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, v5, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 913
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateOverrideSetting()V

    .line 915
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v3, :cond_1

    .line 916
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 919
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/CameraLeftBar;->updateGpsIndicator(I)V

    .line 921
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    if-eqz v3, :cond_2

    .line 922
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_capturemode_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/MyTextPreferenceButton;->setPreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 923
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v3, p0}, Lcom/android/camera/ui/MyTextPreferenceButton;->setBtnClickListener(Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;)V

    .line 926
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v3, :cond_3

    .line 927
    const-string v0, "pref_camera_capturemode_key"

    .line 928
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v3, v0}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 929
    .local v1, preference:Lcom/android/camera/IconListPreference;
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/BasicSettingGridView;->setPreference(Lcom/android/camera/IconListPreference;)V

    .line 930
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v3, p0}, Lcom/android/camera/ui/BasicSettingGridView;->setPreferListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 931
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v3, p0}, Lcom/android/camera/ui/BasicSettingGridView;->setSettingShowListener(Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;)V

    .line 932
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/BasicSettingGridView;->setOwnedBtn(Lcom/android/camera/ui/MyTextPreferenceButton;)V

    .line 934
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #preference:Lcom/android/camera/IconListPreference;
    :cond_3
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 2

    .prologue
    .line 1134
    const-string v0, "CAM PanoModule"

    const-string v1, "onBackgroundThreadFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    .line 1136
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1137
    return-void
.end method

.method private openCamera()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 493
    const-string v1, "CAM PanoModule"

    const-string v2, "openCamera"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 499
    .local v0, cameraId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 501
    invoke-static {v0}, Lcom/android/camera/Util;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaModule;->mCameraOrientation:I

    .line 502
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mUsingFrontCamera:Z

    .line 503
    :cond_1
    return-void
.end method

.method private releaseCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 483
    const-string v0, "CAM PanoModule"

    const-string v1, "releaseCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 486
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 487
    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 488
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    .line 490
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1149
    const-string v0, "CAM PanoModule"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iput v2, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 1157
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 1158
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 1167
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideFilterDrawer()V

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 1171
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1618
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1619
    return-void
.end method

.method private resetToPreview()V
    .locals 2

    .prologue
    .line 1174
    const-string v0, "CAM PanoModule"

    const-string v1, "resetToPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->reset()V

    .line 1176
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->startCameraPreview()V

    .line 1177
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 2
    .parameter "thread"

    .prologue
    .line 1128
    const-string v0, "CAM PanoModule"

    const-string v1, "runBackgroundThread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    .line 1130
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1131
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 17
    .parameter "jpegData"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 1216
    const-string v2, "CAM PanoModule"

    const-string v4, "savePanorama"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    if-eqz p1, :cond_2

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0177

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {v2, v4, v5}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 1220
    .local v3, filename:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1221
    .local v9, filepath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v8, v4

    .line 1222
    .local v8, jpegLength:I
    const/16 v2, 0x5a

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 1223
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 1225
    move/from16 v16, p2

    .line 1226
    .local v16, tmp:I
    move/from16 p2, p3

    .line 1227
    move/from16 p3, v16

    .line 1233
    .end local v16           #tmp:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->isHasImageNum:Z

    if-eqz v2, :cond_1

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v4, v2, Lcom/android/camera/CameraActivity;->ImageNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/camera/CameraActivity;->ImageNum:I

    .line 1235
    const-string v2, "CAM PanoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePanorama---------PanoramaNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v5, v5, Lcom/android/camera/CameraActivity;->ImageNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v12, v7, Lcom/android/camera/CameraActivity;->ImageNum:I

    move/from16 v7, p4

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v2 .. v12}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;III)Landroid/net/Uri;

    move-result-object v15

    .line 1243
    .local v15, mUri:Landroid/net/Uri;
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[B)V

    .line 1247
    :try_start_0
    new-instance v14, Landroid/media/ExifInterface;

    invoke-direct {v14, v9}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1248
    .local v14, exif:Landroid/media/ExifInterface;
    const-string v2, "GPSDateStamp"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaModule;->mGPSDateStampFormat:Ljava/text/DateFormat;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v2, "GPSTimeStamp"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaModule;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v2, "DateTime"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaModule;->mDateTimeStampFormat:Ljava/text/DateFormat;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v2, "Orientation"

    invoke-static/range {p4 .. p4}, Lcom/android/camera/PanoramaModule;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    invoke-virtual {v14}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    .end local v3           #filename:Ljava/lang/String;
    .end local v8           #jpegLength:I
    .end local v9           #filepath:Ljava/lang/String;
    .end local v14           #exif:Landroid/media/ExifInterface;
    .end local v15           #mUri:Landroid/net/Uri;
    :goto_1
    return-object v15

    .line 1239
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v8       #jpegLength:I
    .restart local v9       #filepath:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    const/4 v6, 0x0

    move/from16 v7, p4

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v2 .. v11}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;II)Landroid/net/Uri;

    move-result-object v15

    .restart local v15       #mUri:Landroid/net/Uri;
    goto :goto_0

    .line 1257
    :catch_0
    move-exception v13

    .line 1258
    .local v13, e:Ljava/io/IOException;
    const-string v2, "CAM PanoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set EXIF for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1262
    .end local v3           #filename:Ljava/lang/String;
    .end local v8           #jpegLength:I
    .end local v9           #filepath:Ljava/lang/String;
    .end local v13           #e:Ljava/io/IOException;
    .end local v15           #mUri:Landroid/net/Uri;
    :cond_2
    const/4 v15, 0x0

    goto :goto_1
.end method

.method private setViews(Landroid/content/res/Resources;)V
    .locals 6
    .parameter "appRes"

    .prologue
    const v4, 0x7f0b0019

    const/4 v5, 0x0

    .line 819
    const-string v2, "CAM PanoModule"

    const-string v3, "setViews"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iput v5, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 821
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100103

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PanoProgressBar;

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 822
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 823
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0b001a

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 824
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v3, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColor:I

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 825
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    new-instance v3, Lcom/android/camera/PanoramaModule$5;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaModule$5;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 835
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getTHumbnailView()Lcom/android/camera/ui/ThumbnailSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, p0, Lcom/android/camera/PanoramaModule;->mThumbnailViewWidth:I

    .line 837
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100104

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    .line 838
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100105

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    .line 839
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 840
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 841
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100107

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    .line 843
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100101

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/LayoutNotifyView;

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    .line 844
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/LayoutNotifyView;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 846
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1000ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PanoProgressBar;

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 847
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 848
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 849
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 850
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0b001b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 852
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    .line 854
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingGridView()Lcom/android/camera/ui/BasicSettingGridView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    .line 855
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/BasicSettingGridView;->setSettingShowListener(Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;)V

    .line 857
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/BasicSettingGridView;->setPreferListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 858
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/BasicSettingGridView;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 859
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v2, :cond_0

    .line 860
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    invoke-virtual {v2, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/BasicSettingGridView;->setPreference(Lcom/android/camera/IconListPreference;)V

    .line 862
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    invoke-virtual {v2, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/MyTextPreferenceButton;->setPreference(Lcom/android/camera/IconListPreference;)V

    .line 865
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getFaceEffectButton()Lcom/android/camera/ui/MyTextPreferenceButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    .line 866
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/MyTextPreferenceButton;->setBtnClickListener(Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;)V

    .line 867
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/BasicSettingGridView;->setOwnedBtn(Lcom/android/camera/ui/MyTextPreferenceButton;)V

    .line 868
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1000b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    .line 869
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1000b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    .line 870
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1000bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 871
    .local v0, cancelButton:Landroid/view/View;
    new-instance v2, Lcom/android/camera/PanoramaModule$6;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaModule$6;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 883
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIndependenceShutterButtonForPonorameModule()Lcom/android/camera/ShutterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 885
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraLeftBar()Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    .line 894
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 895
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideFilterDrawer()V

    .line 896
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 898
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1000bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    .line 899
    .local v1, view:Lcom/android/camera/ui/Rotatable;
    const/16 v2, 0x10e

    invoke-interface {v1, v2, v5}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 901
    .end local v1           #view:Lcom/android/camera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method private setupCamera()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 462
    const-string v1, "CAM PanoModule"

    const-string v2, "setupCamera"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    if-nez v1, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->openCamera()V

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 468
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 469
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->loadCameraPreferences()V

    .line 471
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 474
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 475
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraLeftBar;->notifyDataSetChanged()V

    .line 478
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 479
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 480
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 532
    const-string v6, "CAM PanoModule"

    const-string v7, "setupCaptureParams"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 534
    .local v5, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5, v10, v10}, Lcom/android/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 535
    const-string v6, "CAM PanoModule"

    const-string v7, "No 4:3 ratio preview size supported."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0, v5, v9, v10}, Lcom/android/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 537
    const-string v6, "CAM PanoModule"

    const-string v7, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct {p0, v5, v9, v9}, Lcom/android/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 541
    :cond_0
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget v6, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 544
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 545
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 546
    .local v1, last:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 547
    .local v3, minFps:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v2, v6, v10

    .line 548
    .local v2, maxFps:I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 549
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 552
    .local v4, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 553
    iget-object v6, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 560
    :goto_0
    const-string v6, "recording-hint"

    const-string v7, "false"

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaModule;->mHorizontalViewAngle:F

    .line 563
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaModule;->mVerticalViewAngle:F

    .line 564
    return-void

    .line 556
    :cond_1
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDirectionIndicators(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 647
    packed-switch p1, :pswitch_data_0

    .line 661
    :goto_0
    return-void

    .line 649
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 653
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 657
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/16 v4, 0x8

    .line 1198
    const-string v1, "CAM PanoModule"

    const-string v2, "showFinalMosaic"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    if-eqz p1, :cond_0

    .line 1200
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->getCaptureOrientation()I

    move-result v0

    .line 1201
    .local v0, orientation:I
    const/16 v1, 0xb4

    if-lt v0, v1, :cond_1

    .line 1203
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/camera/PanoramaModule$FlipBitmapDrawable;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/camera/PanoramaModule$FlipBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1210
    .end local v0           #orientation:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1211
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    return-void

    .line 1206
    .restart local v0       #orientation:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 776
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 780
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 781
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 782
    return-void
.end method

.method private startCameraPreview()V
    .locals 2

    .prologue
    .line 1564
    const-string v0, "CAM PanoModule"

    const-string v1, "startCameraPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1579
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->stopCameraPreview()V

    .line 1584
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1586
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1587
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1589
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1590
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    goto :goto_0
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1594
    const-string v0, "CAM PanoModule"

    const-string v1, "stopCameraPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1596
    const-string v0, "CAM PanoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1599
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    .line 1600
    return-void
.end method

.method private stopCapture(Z)V
    .locals 4
    .parameter "aborted"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 730
    const-string v0, "CAM PanoModule"

    const-string v1, "stopCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->panoramaRunning:Z

    .line 732
    iput v2, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 733
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 734
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideTooFastIndication()V

    .line 735
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideDirectionIndicators()V

    .line 738
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, v3}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 741
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->stopCameraPreview()V

    .line 743
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 745
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    .line 746
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 747
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 752
    new-instance v0, Lcom/android/camera/PanoramaModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$4;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 771
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->keepScreenOnAwhile()V

    .line 773
    return-void
.end method

.method private updateOverrideSetting()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 938
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_continuemode_key"

    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e021c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v9, v4, v5}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, contineCaptureStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_delay_key"

    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0221

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v9, v4, v5}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, delayCaptureStr:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 948
    .local v2, delaySeconds:I
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_2

    .line 949
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "selfcamera"

    invoke-static {v3, v4, v5, v7}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 955
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_delay_key"

    const-string v5, "0"

    invoke-static {v3, v4, v5, v7}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 958
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 959
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "hdr"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 963
    :goto_1
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "smartselect"

    invoke-static {v3, v4, v5, v7}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 967
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "gifcapture"

    invoke-static {v3, v4, v5, v7}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 968
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "audio_image"

    invoke-static {v3, v4, v5, v7}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 969
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "self_capture_2"

    invoke-static {v3, v4, v5, v7}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 973
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v3, :cond_1

    .line 974
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v3}, Lcom/android/camera/ui/CameraLeftBar;->notifyDataSetChanged()V

    .line 976
    :cond_1
    return-void

    .line 951
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "selfcamera"

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 961
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_capturemode_key"

    const-string v5, "hdr"

    invoke-static {v3, v4, v5, v7}, Lcom/android/camera/CameraSettings;->enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private updateProgress(FFFF)V
    .locals 5
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"

    .prologue
    const/high16 v2, 0x4020

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 796
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 798
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 800
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->showTooFastIndication()V

    .line 807
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aput p3, v1, v3

    .line 808
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aput p4, v1, v4

    .line 809
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 811
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v3

    float-to-int v0, v1

    .line 815
    .local v0, angleInMajorDirection:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 816
    return-void

    .line 802
    .end local v0           #angleInMajorDirection:I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideTooFastIndication()V

    goto :goto_0

    .line 811
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v4

    float-to-int v0, v1

    goto :goto_1
.end method


# virtual methods
.method public CoverStateChange(Z)V
    .locals 0
    .parameter "open"

    .prologue
    .line 1975
    if-eqz p1, :cond_1

    .line 1976
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->onResumeBeforeSuper()V

    .line 1977
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->onResumeAfterSuper()V

    .line 1984
    :cond_0
    :goto_0
    return-void

    .line 1979
    :cond_1
    if-nez p1, :cond_0

    .line 1981
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->onPauseBeforeSuper()V

    .line 1982
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->onPauseAfterSuper()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public generateFinalMosaic(Z)Lcom/android/camera/PanoramaModule$MosaicJpeg;
    .locals 13
    .parameter "highRes"

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 1523
    const-string v2, "CAM PanoModule"

    const-string v10, "generateFinalMosaic"

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v2, p1}, Lcom/android/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v8

    .line 1525
    .local v8, mosaicReturnCode:I
    const/4 v2, -0x2

    if-ne v8, v2, :cond_0

    .line 1560
    :goto_0
    return-object v5

    .line 1527
    :cond_0
    const/4 v2, -0x1

    if-ne v8, v2, :cond_1

    .line 1528
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto :goto_0

    .line 1531
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v2}, Lcom/android/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1532
    .local v1, imageData:[B
    if-nez v1, :cond_2

    .line 1533
    const-string v2, "CAM PanoModule"

    const-string v5, "getFinalMosaicNV21() returned null."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto :goto_0

    .line 1537
    :cond_2
    array-length v2, v1

    add-int/lit8 v7, v2, -0x8

    .line 1538
    .local v7, len:I
    add-int/lit8 v2, v7, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v3, v2, v10

    .line 1540
    .local v3, width:I
    add-int/lit8 v2, v7, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x6

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x7

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v4, v2, v10

    .line 1542
    .local v4, height:I
    const-string v2, "CAM PanoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ImLength = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", W = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", H = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1546
    :cond_3
    const-string v2, "CAM PanoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "width|height <= 0!!, len = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", W = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", H = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto/16 :goto_0

    .line 1551
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1552
    .local v0, yuvimage:Landroid/graphics/YuvImage;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1553
    .local v9, out:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1555
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;[BII)V

    goto/16 :goto_0

    .line 1556
    :catch_0
    move-exception v6

    .line 1557
    .local v6, e:Ljava/lang/Exception;
    const-string v2, "CAM PanoModule"

    const-string v5, "Exception in storing final mosaic"

    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1558
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto/16 :goto_0
.end method

.method public getModuleHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 567
    const-string v1, "CAM PanoModule"

    const-string v2, "getPreviewBufSize"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 569
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 571
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 2

    .prologue
    .line 1939
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1940
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    return-object v1
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 0

    .prologue
    .line 1894
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;ZZ)V
    .locals 6
    .parameter "activity"
    .parameter "parent"
    .parameter "reuseScreenNail"
    .parameter "openCamera"

    .prologue
    const/4 v5, 0x1

    .line 315
    const-string v3, "CAM PanoModule"

    const-string v4, "init"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 317
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    iput-object p2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    .line 319
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->createContentView()V

    .line 320
    const v3, 0x7f100099

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v3, p1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 321
    iget-object v3, p1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 323
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 324
    if-eqz p3, :cond_0

    .line 325
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v5, v5}, Lcom/android/camera/ActivityBase;->reuseCameraScreenNail(ZZ)Lcom/android/gallery3d/ui/ScreenNail;

    .line 330
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->updateStorageSpace()V

    .line 333
    new-instance v3, Lcom/android/camera/PanoramaModule$1;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaModule$1;-><init>(Lcom/android/camera/PanoramaModule;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 355
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 356
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "kk/1,mm/1,ss/1"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    .line 357
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 358
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 359
    .local v2, tzUTC:Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 360
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 362
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 363
    .local v1, pm:Landroid/os/PowerManager;
    const-string v3, "Panorama"

    invoke-virtual {v1, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 365
    new-instance v3, Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v3, p0, v4}, Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;-><init>(Lcom/android/camera/PanoramaModule;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    .line 367
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 369
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 370
    .local v0, appRes:Landroid/content/res/Resources;
    const v3, 0x7f0e017b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    .line 371
    const v3, 0x7f0e017d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    .line 372
    const v3, 0x7f0e0171

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    .line 373
    const v3, 0x7f0e017c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 374
    const v3, 0x7f0e017f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    .line 377
    new-instance v3, Lcom/android/camera/PanoramaModule$2;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaModule$2;-><init>(Lcom/android/camera/PanoramaModule;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    .line 452
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 453
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->installAutoTestIntentFilter()V

    .line 454
    return-void

    .line 327
    .end local v0           #appRes:Landroid/content/res/Resources;
    .end local v1           #pm:Landroid/os/PowerManager;
    .end local v2           #tzUTC:Ljava/util/TimeZone;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v5, v5}, Lcom/android/camera/ActivityBase;->createCameraScreenNail(ZZ)Lcom/android/gallery3d/ui/ScreenNail;

    goto/16 :goto_0
.end method

.method public installIntentFilter()V
    .locals 3

    .prologue
    .line 1700
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1702
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1703
    new-instance v1, Lcom/android/camera/PanoramaModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/PanoramaModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$1;)V

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1704
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1705
    return-void
.end method

.method public isCanGotoGallery()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1838
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 1840
    :cond_0
    const/4 v0, 0x0

    .line 1842
    :cond_1
    return v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 1832
    const/4 v0, 0x0

    return v0
.end method

.method public isModuleIdle()Z
    .locals 1

    .prologue
    .line 1899
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mAnimation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 1778
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1736
    return-void
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 1881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mAnimation:Z

    .line 1882
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 1905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mAnimation:Z

    .line 1906
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 1609
    const-string v0, "CAM PanoModule"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 1827
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 1760
    return-void
.end method

.method public onClick(Landroid/view/View;Lcom/android/camera/IconListPreference;)V
    .locals 2
    .parameter "view"
    .parameter "pref"

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->showPopupWindow()V

    .line 1915
    :goto_0
    return-void

    .line 1914
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow()Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;Lcom/android/camera/PreferenceGroup;)V
    .locals 2
    .parameter "view"
    .parameter "group"

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1873
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->showPopupWindow()V

    .line 1876
    :goto_0
    return-void

    .line 1875
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow()Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 1368
    const-string v2, "CAM PanoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged----mThreadRunning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget v2, p0, Lcom/android/camera/PanoramaModule;->mOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_1

    .line 1370
    const-string v2, "CAM PanoModule"

    const-string v3, "onConfigurationChanged not change"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1374
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/camera/PanoramaModule;->mOrientation:I

    .line 1375
    const/4 v1, 0x0

    .line 1376
    .local v1, lowResReview:Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1379
    :cond_2
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1382
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1383
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1384
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040057

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1386
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1387
    const v2, 0x7f04003b

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1389
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V

    .line 1391
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->loadCameraPreferences()V

    .line 1393
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v2, :cond_3

    .line 1395
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 1396
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 1401
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v2, :cond_0

    .line 1403
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1404
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1405
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 1408
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1409
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideFilterDrawer()V

    goto :goto_0

    .line 1379
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    if-eqz v0, :cond_0

    .line 1952
    const-string v0, "CAM PanoModule"

    const-string v1, ">>do release camera ondestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    .line 1954
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->releaseCamera()V

    .line 1957
    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 639
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 1675
    if-eqz p1, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 1680
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1688
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideFilterDrawer()V

    .line 1690
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 1691
    return-void

    .line 1683
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 1685
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1741
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1746
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 6
    .parameter "v"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 627
    const-string v0, "CAM PanoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p4, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p5, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/view/View;IIII)V

    .line 629
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PanoramaModule;->configMosaicPreview(II)V

    .line 630
    return-void
.end method

.method public onMenuHide()V
    .locals 0

    .prologue
    .line 1867
    return-void
.end method

.method public onMenuShowed()V
    .locals 0

    .prologue
    .line 1861
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v1, :cond_0

    .line 1417
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraLeftBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 1418
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1444
    :cond_1
    :goto_0
    return-void

    .line 1420
    :cond_2
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaModule;->mOrientation:I

    .line 1423
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mOrientation:I

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 1425
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v1, :cond_1

    .line 1426
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1432
    :sswitch_0
    iget v1, p0, Lcom/android/camera/PanoramaModule;->oldorientation:I

    if-eq v1, v0, :cond_1

    .line 1433
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1434
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/BasicSettingGridView;->setDisplayOrientation(IZ)V

    .line 1435
    iput v0, p0, Lcom/android/camera/PanoramaModule;->oldorientation:I

    goto :goto_0

    .line 1426
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPauseAfterSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1320
    const-string v1, "CAM PanoModule"

    const-string v2, "onPauseAfterSuper"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 1322
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1364
    :goto_0
    return-void

    .line 1327
    :cond_0
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    if-ne v1, v4, :cond_1

    .line 1328
    invoke-direct {p0, v4}, Lcom/android/camera/PanoramaModule;->stopCapture(Z)V

    .line 1329
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->reset()V

    .line 1333
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->stopCameraPreview()V

    .line 1334
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    if-nez v1, :cond_2

    .line 1335
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->releaseCamera()V

    .line 1337
    :cond_2
    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 1341
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v1, :cond_3

    .line 1342
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 1343
    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 1346
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    .line 1347
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_4

    .line 1348
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1349
    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1351
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->resetScreenOn()V

    .line 1352
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    if-eqz v1, :cond_5

    .line 1353
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    invoke-interface {v1}, Lcom/android/camera/SoundClips$Player;->release()V

    .line 1354
    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 1356
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->removeTopLevelPopup()Z

    .line 1357
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v1, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 1358
    .local v0, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1359
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1363
    :cond_6
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public onPauseBeforeSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    .line 1303
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1305
    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1307
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mAutoTestRegister:Z

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    sget-object v1, Lcom/android/camera/PanoramaModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1309
    sput-object v2, Lcom/android/camera/PanoramaModule;->mAutoTestReceiver:Lcom/android/autoTest/AutoTestBroadCastReceiver;

    .line 1310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mAutoTestRegister:Z

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1313
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1316
    :cond_2
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 1756
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 0

    .prologue
    .line 1815
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1458
    const-string v3, "CAM PanoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResumeAfterSuper---------mThreadRunning"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v3}, Landroid/view/OrientationEventListener;->enable()V

    .line 1461
    iput v6, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 1464
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setupCamera()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1474
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 1477
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v3}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1478
    iget-boolean v3, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v3}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1479
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1480
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 1483
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 1484
    new-instance v3, Lcom/android/camera/PanoramaModule$WaitProcessorTask;

    invoke-direct {v3, p0, v7}, Lcom/android/camera/PanoramaModule$WaitProcessorTask;-><init>(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$1;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1496
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->keepScreenOnAwhile()V

    .line 1499
    iget-boolean v3, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v3, :cond_4

    .line 1500
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 1508
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1509
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideFilterDrawer()V

    .line 1510
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 1511
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->removeTopLevelPopup()Z

    .line 1512
    :goto_2
    return-void

    .line 1465
    :catch_0
    move-exception v0

    .line 1466
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e014c

    invoke-static {v3, v4}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_2

    .line 1468
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1469
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e014d

    invoke-static {v3, v4}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_2

    .line 1486
    .end local v0           #e:Lcom/android/camera/CameraDisabledException;
    :cond_2
    iget-boolean v3, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1489
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    .line 1490
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1491
    .local v2, w:I
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1492
    .local v1, h:I
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1493
    invoke-direct {p0, v2, v1}, Lcom/android/camera/PanoramaModule;->configMosaicPreview(II)V

    goto :goto_0

    .line 1502
    .end local v1           #h:I
    .end local v2           #w:I
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v3, :cond_1

    .line 1503
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onResumeBeforeSuper()V
    .locals 2

    .prologue
    .line 1448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    .line 1449
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->installIntentFilter()V

    .line 1450
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1454
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 1789
    const-string v0, "panorama"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1791
    const-string v0, "pref_camera_capturemode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->mCaptureModeOverried:Z

    .line 1793
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object p2, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    .line 1794
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v1, "nightshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1795
    sput-boolean v2, Lcom/android/camera/PhotoModule;->isNightshotSelect:Z

    .line 1801
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_1

    .line 1802
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1803
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->removeIndependateButton()V

    .line 1806
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->onCameraSelected(I)Z

    .line 1809
    :cond_2
    return-void
.end method

.method public onShow(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x4

    .line 1920
    if-nez p1, :cond_2

    .line 1921
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 1922
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1934
    :cond_1
    :goto_0
    return-void

    .line 1926
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_3

    .line 1927
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->showPopupWindow()V

    .line 1930
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 1931
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 5
    .parameter "b"

    .prologue
    const/4 v4, 0x2

    .line 993
    const-string v0, "CAM PanoModule"

    const-string v1, "onShutterButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    .line 997
    :cond_0
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v0, :cond_1

    .line 998
    invoke-static {v4}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    .line 1026
    :cond_1
    :goto_0
    return-void

    .line 1004
    :cond_2
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1006
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->updateStorageSpaceAndHint()V

    .line 1007
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 1008
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v0, :cond_1

    .line 1009
    invoke-static {v4}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    goto :goto_0

    .line 1013
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 1014
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->startCapture()V

    .line 1015
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v0, :cond_1

    .line 1016
    invoke-static {v4}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    goto :goto_0

    .line 1020
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    invoke-interface {v0, v4}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 1021
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->stopCapture(Z)V

    .line 1022
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v0, :cond_1

    .line 1023
    invoke-static {v4}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    goto :goto_0

    .line 1004
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->removeTopLevelPopup()Z

    .line 1031
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1751
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->removeTopLevelPopup()Z

    .line 1752
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1695
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow(Z)Z

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    if-eqz v0, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraLeftBar;->dismissPupup()Z

    move-result v0

    .line 1639
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 1035
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 1036
    new-instance v0, Lcom/android/camera/PanoramaModule$7;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$7;-><init>(Lcom/android/camera/PanoramaModule;)V

    .line 1060
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1061
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 2

    .prologue
    .line 1082
    const-string v0, "CAM PanoModule"

    const-string v1, "saveHighResMosaic"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v0, Lcom/android/camera/PanoramaModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$8;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 1124
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->reportProgress()V

    .line 1125
    return-void
.end method

.method public setFocusRect(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1946
    return-void
.end method

.method setupProgressDirectionMatrix()V
    .locals 5

    .prologue
    .line 722
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 723
    .local v1, degrees:I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 724
    .local v0, cameraId:I
    invoke-static {v1, v0}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v2

    .line 725
    .local v2, orientation:I
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 726
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 727
    return-void
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 0
    .parameter "hasSignal"

    .prologue
    .line 1888
    return-void
.end method

.method public startCapture()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 664
    const-string v0, "CAM PanoModule"

    const-string v1, "startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v3, v0, Lcom/android/camera/CameraActivity;->panoramaRunning:Z

    .line 667
    iput-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mCancelComputation:Z

    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    .line 669
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 670
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 672
    iput v3, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 673
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getRecordVideoSwitcher()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mRecordSwticher:Landroid/view/View;

    .line 684
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRecordSwticher:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRecordSwticher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 688
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaModule;->showDirectionIndicators(I)V

    .line 690
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    new-instance v1, Lcom/android/camera/PanoramaModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaModule$3;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 709
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 712
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 713
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 714
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 715
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientation:I

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    .line 716
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->keepScreenOn()V

    .line 718
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->setupProgressDirectionMatrix()V

    .line 719
    return-void
.end method

.method public updateCameraAppView()V
    .locals 0

    .prologue
    .line 1769
    return-void
.end method
