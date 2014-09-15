.class public abstract Lcom/android/camera/ActivityBase;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/ui/LayoutChangeNotifier$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ActivityBase$MyAppBridge;,
        Lcom/android/camera/ActivityBase$HideCameraAppView;,
        Lcom/android/camera/ActivityBase$SaveThumbnailTask;,
        Lcom/android/camera/ActivityBase$LoadThumbnailTask;,
        Lcom/android/camera/ActivityBase$ScreenOffReceiver;
    }
.end annotation


# static fields
.field private static sFirstStartAfterScreenOn:Z

.field private static sScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field protected static sSecureAlbumId:I


# instance fields
.field protected SecureBoxPath:Ljava/lang/String;

.field public cover:Landroid/view/View;

.field protected mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field protected mAnim:Landroid/view/animation/Animation;

.field protected mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

.field protected mCameraAppView:Landroid/view/View;

.field private mCameraAppViewFadeIn:Landroid/view/animation/Animation;

.field private mCameraAppViewFadeOut:Landroid/view/animation/Animation;

.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraId:I

.field protected mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field protected mCurrentModuleIndex:I

.field private mDeletePictureFilter:Landroid/content/IntentFilter;

.field private mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

.field public mFullScrren:Z

.field private final mHandler:Landroid/os/Handler;

.field protected mIsSecuredBoxMode:Z

.field protected mIsVideoSupportSecureBoxMode:Z

.field protected mLastPictureThumb:Landroid/graphics/Bitmap;

.field public mLatestUri:Landroid/net/Uri;

.field protected mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field protected mNumberOfCameras:I

.field protected mOpenCameraFail:Z

.field private mPause:Z

.field public mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field protected mSecureCamera:Z

.field protected mShowCameraAppView:Z

.field private mSingleTapArea:Landroid/view/View;

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpace:J

.field protected mThumbnail:Lcom/android/camera/Thumbnail;

.field protected mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

.field protected mThumbnailView:Lcom/android/camera/ui/RotateImageView;

.field protected mThumbnailViewForAnimation:Lcom/android/camera/ui/RotateImageView;

.field protected mThumbnailViewForSlideAnimation:Lcom/android/camera/ui/RotateImageView;

.field public mThumbnailViewWidth:I

.field private mUpdateThumbnailDelayed:Z

.field protected mUpdateThumbnailLock:Ljava/lang/Object;

.field private mbFromIntent:Z

.field protected mbImage:Z

.field protected mbModuleAskHide:Z

.field private thumbBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 135
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mbImage:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mbFromIntent:Z

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 150
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mbModuleAskHide:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mFullScrren:Z

    .line 168
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mStorageSpace:J

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 173
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    .line 174
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsVideoSupportSecureBoxMode:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPause:Z

    .line 191
    new-instance v0, Lcom/android/camera/ActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$1;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    .line 202
    new-instance v0, Lcom/android/camera/ActivityBase$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$2;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.gallery3d.action.DELETE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    .line 229
    new-instance v0, Lcom/android/camera/ActivityBase$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$3;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Lcom/android/camera/ActivityBase$4;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$4;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 1028
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ActivityBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/camera/ActivityBase;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onSingleTapUp(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    sput-boolean p0, Lcom/android/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ActivityBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPause:Z

    return v0
.end method

.method private getFilePath(ZZ)Ljava/lang/String;
    .locals 3
    .parameter "getPictures"
    .parameter "isImage"

    .prologue
    .line 789
    const-string v0, "/local/all/"

    .line 790
    .local v0, path:Ljava/lang/String;
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v1, :cond_1

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/secure/all/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/camera/ActivityBase;->sSecureAlbumId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/Storage;->getCameraStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    return-object v0

    .line 793
    :cond_1
    iput-boolean p2, p0, Lcom/android/camera/ActivityBase;->mbImage:Z

    .line 795
    const-string v0, "/local/all/"

    .line 796
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mbImage:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    if-eqz v1, :cond_0

    .line 797
    const-string v0, "/local/image/secure/"

    goto :goto_0

    .line 810
    :cond_2
    const-string v1, "0"

    goto :goto_1
.end method

.method public static isFirstStartAfterScreenOn()Z
    .locals 1

    .prologue
    .line 262
    sget-boolean v0, Lcom/android/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return v0
.end method

.method private onSingleTapUp(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 972
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 982
    :goto_0
    return v1

    .line 974
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 975
    .local v0, relativeLocation:[I
    aget v3, v0, v2

    sub-int/2addr p1, v3

    .line 976
    aget v3, v0, v1

    sub-int/2addr p2, v3

    .line 977
    if-ltz p1, :cond_2

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge p1, v3, :cond_2

    if-ltz p2, :cond_2

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 979
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/camera/ActivityBase;->onSingleTapUp(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 982
    goto :goto_0
.end method

.method public static resetFirstStartAfterScreenOn()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    .line 267
    return-void
.end method


# virtual methods
.method protected addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "isVideo"
    .parameter "uri"

    .prologue
    .line 1013
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v1, :cond_0

    .line 1014
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1015
    .local v0, id:I
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->addSecureAlbumItem(ZI)V

    .line 1017
    .end local v0           #id:I
    :cond_0
    return-void
.end method

.method public createCameraScreenNail(ZZ)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 5
    .parameter "getPictures"
    .parameter "isImage"

    .prologue
    .line 818
    const v2, 0x7f1000b6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 822
    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mbFromIntent:Z

    .line 824
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 825
    .local v0, data:Landroid/os/Bundle;
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ActivityBase;->getFilePath(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 826
    .local v1, path:Ljava/lang/String;
    const-string v2, "media-set-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v2, "media-item-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v2, "show_when_locked"

    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 831
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_0

    .line 832
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 834
    :cond_0
    new-instance v2, Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-direct {v2, p0}, Lcom/android/camera/ActivityBase$MyAppBridge;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    .line 835
    const-string v2, "app-bridge"

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 836
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 837
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 842
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 843
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v2

    .line 822
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 839
    .restart local v0       #data:Landroid/os/Bundle;
    .restart local v1       #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getLastThumbnail()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 657
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->updateThumbnailView(Z)V

    .line 658
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z

    if-eqz v1, :cond_1

    .line 659
    :cond_0
    new-instance v1, Lcom/android/camera/ActivityBase$LoadThumbnailTask;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;-><init>(Lcom/android/camera/ActivityBase;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 667
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 662
    .local v0, uri:Landroid/net/Uri;
    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    .line 663
    const-string v1, "ActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastThumbnail uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {p0, v0}, Lcom/android/camera/Util;->startCameraService(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected getLastThumbnailUncached()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 676
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 677
    :cond_0
    new-instance v0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;-><init>(Lcom/android/camera/ActivityBase;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 678
    return-void
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1189
    .local v0, previewRect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    if-eqz v2, :cond_0

    .line 1190
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1194
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1195
    invoke-static {p0}, Lcom/android/camera/Util;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v1

    .line 1196
    .local v1, size:[I
    aget v2, v1, v6

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1198
    .end local v1           #size:[I
    :cond_1
    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method protected getStorageSpace()J
    .locals 2

    .prologue
    .line 467
    iget-wide v0, p0, Lcom/android/camera/ActivityBase;->mStorageSpace:J

    return-wide v0
.end method

.method protected installIntentFilter()V
    .locals 2

    .prologue
    .line 446
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    return-void
.end method

.method public isPanoramaActivity()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    return v0
.end method

.method public notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V
    invoke-static {v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$800(Lcom/android/camera/ActivityBase$MyAppBridge;)V

    .line 996
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 1010
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 1179
    return-void
.end method

.method protected onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 1006
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 285
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->disableToggleStatusBar()V

    .line 292
    const v3, 0x7f0f001a

    invoke-virtual {p0, v3}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 294
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_ACTION_BAR:Z

    if-eqz v3, :cond_1

    .line 295
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 300
    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 301
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 307
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 308
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    iput-boolean v5, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    .line 312
    sget v3, Lcom/android/camera/ActivityBase;->sSecureAlbumId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/camera/ActivityBase;->sSecureAlbumId:I

    .line 314
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x48

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 323
    :goto_2
    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v3, :cond_0

    .line 324
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 325
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    sget-object v3, Lcom/android/camera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 327
    new-instance v3, Lcom/android/camera/ActivityBase$ScreenOffReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/camera/ActivityBase$ScreenOffReceiver;-><init>(Lcom/android/camera/ActivityBase$1;)V

    sput-object v3, Lcom/android/camera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/camera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 332
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    return-void

    .line 297
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 318
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_3
    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 319
    iput-boolean v5, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    goto :goto_2

    .line 321
    :cond_4
    const-string v3, "secure_camera"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 438
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 439
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 440
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 441
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 442
    return-void
.end method

.method protected onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 927
    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----onFullScreenChanged--full="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---mPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-ne v0, p1, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    .line 930
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 935
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getLastThumbnailUncached()V

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x52

    const/4 v0, 0x1

    .line 397
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_2

    .line 399
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    :cond_1
    :goto_0
    return v0

    .line 401
    :cond_2
    if-ne p1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    .line 405
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 410
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 4
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 949
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    if-nez v3, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    sub-int v2, p4, p2

    .line 952
    .local v2, width:I
    sub-int v0, p5, p3

    .line 953
    .local v0, height:I
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    .line 955
    .local v1, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_2

    .line 956
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 962
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    goto :goto_0

    .line 960
    :cond_2
    invoke-virtual {v1, v0, v2}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 360
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 363
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPause:Z

    .line 364
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->saveThumbnailToFile()V

    .line 366
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 368
    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 373
    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    :cond_2
    return-void
.end method

.method protected onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 1003
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 341
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 342
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPause:Z

    .line 343
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateStorageSpaceAndHint()V

    .line 345
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.aciton.Open_Camera"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, openCamera:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 352
    const-string v1, "ActivityBase"

    const-string v2, "onResume------sendBrodcast: CMD_OPEN_CAMERA: com.android.intent.aciton.Open_Camera"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 986
    return-void
.end method

.method public recycleBitmaps()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    .line 556
    :cond_0
    return-void
.end method

.method protected refleshLastThumbnail()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 671
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 672
    :cond_0
    new-instance v0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;-><init>(Lcom/android/camera/ActivityBase;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 673
    return-void
.end method

.method protected reuseCameraScreenNail(ZZ)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 5
    .parameter "getPictures"
    .parameter "isImage"

    .prologue
    .line 848
    const v3, 0x7f1000b6

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 853
    if-nez p1, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/ActivityBase;->mbFromIntent:Z

    .line 855
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 856
    .local v0, data:Landroid/os/Bundle;
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ActivityBase;->getFilePath(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, path:Ljava/lang/String;
    const-string v3, "media-set-path"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v3, "media-item-path"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v3, "show_when_locked"

    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 862
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    if-nez v3, :cond_0

    .line 863
    new-instance v3, Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-direct {v3, p0}, Lcom/android/camera/ActivityBase$MyAppBridge;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    .line 865
    :cond_0
    const/4 v2, 0x2

    .line 866
    .local v2, typeBits:I
    if-eqz p2, :cond_1

    .line 867
    const/4 v2, 0x1

    .line 869
    :cond_1
    const-string v3, "parent-media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v3, "media-path"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v3, "app-bridge"

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 879
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 880
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v3

    .line 853
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #typeBits:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected saveThumbnailToFile()V
    .locals 4

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    new-instance v0, Lcom/android/camera/ActivityBase$SaveThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ActivityBase$SaveThumbnailTask;-><init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ActivityBase$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/Thumbnail;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 751
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setContentView(I)V

    .line 385
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/GalleryActionBar;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 386
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 387
    return-void
.end method

.method public setMenuKey(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 1161
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1162
    .local v0, config:Landroid/view/ViewConfiguration;
    const-class v3, Landroid/view/ViewConfiguration;

    const-string v4, "sHasPermanentMenuKey"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1163
    .local v2, menuKeyField:Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 1164
    if-eqz p1, :cond_1

    .line 1165
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1166
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1175
    .end local v0           #config:Landroid/view/ViewConfiguration;
    .end local v2           #menuKeyField:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 1168
    .restart local v0       #config:Landroid/view/ViewConfiguration;
    .restart local v2       #menuKeyField:Ljava/lang/reflect/Field;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1169
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1172
    .end local v0           #config:Landroid/view/ViewConfiguration;
    .end local v2           #menuKeyField:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 1173
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "ActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreviewThumb([BIIIILandroid/net/Uri;IILcom/android/camera/ui/WhiteFrameView;)Z
    .locals 9
    .parameter "data"
    .parameter "w"
    .parameter "h"
    .parameter "degree"
    .parameter "thumbnailWidth"
    .parameter "uri"
    .parameter "orientation"
    .parameter "screenOrientation"
    .parameter "view"

    .prologue
    .line 601
    if-eqz p1, :cond_4

    .line 602
    array-length v6, p1

    shr-int/lit8 v2, v6, 0x2

    .line 603
    .local v2, len:I
    new-array v3, v2, [I

    .line 605
    .local v3, pixel:[I
    const/4 v4, 0x0

    .line 606
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 607
    shl-int/lit8 v4, v1, 0x2

    .line 608
    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v3, v1

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->recycleBitmaps()V

    .line 617
    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, p2, p3, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    .line 619
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 620
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    iget v8, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    invoke-static {v6, v7, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 623
    .local v5, shotcutThumb:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v6, :cond_1

    .line 624
    invoke-static {}, Lcom/android/camera/Thumbnail;->createEmptyThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 627
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v6, :cond_2

    .line 628
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v6, v5, p4}, Lcom/android/camera/Thumbnail;->setShortcutBitmap(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v5           #shotcutThumb:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 638
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    invoke-static {v6, p4}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    .line 641
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/camera/Thumbnail;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ActivityBase;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 642
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/camera/ActivityBase;->updateThumbnailView(Z)V

    .line 647
    :cond_3
    const/4 v6, 0x0

    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #pixel:[I
    .end local v4           #pos:I
    :goto_2
    return v6

    .line 632
    .restart local v1       #i:I
    .restart local v2       #len:I
    .restart local v3       #pixel:[I
    .restart local v4       #pos:I
    :catch_0
    move-exception v0

    .line 633
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "ActivityBase"

    const-string v7, ">>>>>>>decodeByteArray IS FAILED"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 645
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #pixel:[I
    .end local v4           #pos:I
    :cond_4
    const/4 v6, 0x1

    goto :goto_2
.end method

.method protected setResultEx(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 417
    iput p1, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    .line 418
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 419
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 422
    iput p1, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    .line 423
    iput-object p2, p0, Lcom/android/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 425
    return-void
.end method

.method protected setSingleTapUpListener(Landroid/view/View;)V
    .locals 0
    .parameter "singleTapArea"

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    .line 968
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V
    invoke-static {v0, p1}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$700(Lcom/android/camera/ActivityBase$MyAppBridge;Z)V

    .line 992
    return-void
.end method

.method protected snycSaveThumbnailToFile()V
    .locals 4

    .prologue
    .line 754
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v2, :cond_0

    .line 755
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    if-eqz v2, :cond_1

    .line 756
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Thumbnail;->saveLastThumbnailToFile(Ljava/io/File;)V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Storage;->getCameraStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, thumbNailPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 761
    .local v0, filedes:Ljava/io/File;
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2, v0}, Lcom/android/camera/Thumbnail;->saveLastThumbnailToFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method protected updateCameraAppView()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 902
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    .line 904
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 905
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 907
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    .line 908
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 909
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 910
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/camera/ActivityBase$HideCameraAppView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ActivityBase$HideCameraAppView;-><init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ActivityBase$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 913
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_1

    .line 914
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 924
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateStorageHint()V
    .locals 2

    .prologue
    .line 478
    iget-wide v0, p0, Lcom/android/camera/ActivityBase;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ActivityBase;->updateStorageHint(J)V

    .line 479
    return-void
.end method

.method protected updateStorageHint(J)V
    .locals 3
    .parameter "storageSpace"

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, message:Ljava/lang/String;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 488
    const v1, 0x7f0e0151

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    :cond_0
    :goto_0
    if-eqz v0, :cond_a

    .line 508
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_9

    .line 509
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 513
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 518
    :cond_1
    :goto_2
    return-void

    .line 489
    :cond_2
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 490
    const v1, 0x7f0e0154

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 491
    :cond_3
    const-wide/16 v1, -0x3

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    .line 492
    const v1, 0x7f0e0157

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 493
    :cond_4
    const-wide/16 v1, -0x4

    cmp-long v1, p1, v1

    if-nez v1, :cond_5

    .line 494
    const v1, 0x7f0e0152

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 495
    :cond_5
    const-wide/16 v1, -0x5

    cmp-long v1, p1, v1

    if-nez v1, :cond_6

    .line 496
    const v1, 0x7f0e0153

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_6
    const-wide/32 v1, 0x989680

    cmp-long v1, p1, v1

    if-gtz v1, :cond_8

    .line 498
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 499
    const v1, 0x7f0e0172

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_7
    const v1, 0x7f0e0173

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 503
    :cond_8
    sget-boolean v1, Lcom/android/camera/Storage;->SdCardPathHasChanged:Z

    if-eqz v1, :cond_0

    .line 504
    const v1, 0x7f0e0174

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 511
    :cond_9
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 514
    :cond_a
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 516
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2
.end method

.method protected updateStorageSpace()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 456
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    if-eq v2, v0, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->SecureBoxPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/camera/Storage;->setIsSecureBox(ZLjava/lang/String;)V

    .line 461
    :goto_0
    invoke-static {p0}, Lcom/android/camera/Storage;->choiceAvailableSpace(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ActivityBase;->mStorageSpace:J

    .line 462
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    if-eq v2, v0, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/android/camera/Thumbnail;->setInSecureBox(Z)V

    .line 464
    return-void

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->SecureBoxPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/camera/Storage;->setIsSecureBox(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 462
    goto :goto_1
.end method

.method protected updateStorageSpaceAndHint()V
    .locals 4

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateStorageSpace()V

    .line 472
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 475
    return-void
.end method

.method public updateThumb([BIIIILandroid/net/Uri;IILcom/android/camera/ui/WhiteFrameView;)Z
    .locals 7
    .parameter "data"
    .parameter "w"
    .parameter "h"
    .parameter "degree"
    .parameter "thumbnailWidth"
    .parameter "uri"
    .parameter "orientation"
    .parameter "screenOrientation"
    .parameter "view"

    .prologue
    .line 560
    if-eqz p1, :cond_2

    .line 561
    array-length v5, p1

    shr-int/lit8 v2, v5, 0x2

    .line 562
    .local v2, len:I
    new-array v3, v2, [I

    .line 564
    .local v3, pixel:[I
    const/4 v4, 0x0

    .line 565
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 566
    shl-int/lit8 v4, v1, 0x2

    .line 567
    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, v3, v1

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->recycleBitmaps()V

    .line 576
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, p2, p3, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_1
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 585
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    invoke-static {v5, p4}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    .line 586
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mLastPictureThumb:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/Thumbnail;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ActivityBase;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 587
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportThumbnailSlideAnimation()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 588
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewForSlideAnimation:Lcom/android/camera/ui/RotateImageView;

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 589
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mThumbnailViewForSlideAnimation:Lcom/android/camera/ui/RotateImageView;

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 595
    :cond_1
    const/4 v5, 0x0

    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #pixel:[I
    .end local v4           #pos:I
    :goto_2
    return v5

    .line 579
    .restart local v1       #i:I
    .restart local v2       #len:I
    .restart local v3       #pixel:[I
    .restart local v4       #pos:I
    :catch_0
    move-exception v0

    .line 580
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "ActivityBase"

    const-string v6, ">>>>>>>decodeByteArray IS FAILED"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 593
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #pixel:[I
    .end local v4           #pos:I
    :cond_2
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public updateThumbnailView(Z)V
    .locals 4
    .parameter "UsingThubnail"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 521
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    if-eqz v0, :cond_0

    .line 522
    if-eqz p1, :cond_3

    .line 523
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ThumbnailSwitcher;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 525
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mbModuleAskHide:Z

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ThumbnailSwitcher;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 533
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 536
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ThumbnailSwitcher;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 537
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mbModuleAskHide:Z

    if-nez v0, :cond_4

    .line 538
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 540
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailSwitcher:Lcom/android/camera/ui/ThumbnailSwitcher;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
