.class public Lcom/android/gallery3d/app/PhotoPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/AppBridge$Server;
.implements Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
.implements Lcom/android/gallery3d/app/OrientationManager$Listener;
.implements Lcom/android/gallery3d/ui/PhotoView$Listener;
.implements Lcom/android/gallery3d/util/MultiWndStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;,
        Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;,
        Lcom/android/gallery3d/app/PhotoPage$Model;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private volatile mActionBarAllowed:Z

.field private mAppBridge:Lcom/android/gallery3d/app/AppBridge;

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mCameraLayout:Landroid/widget/LinearLayout;

.field private mCameraSwitchCutoff:J

.field private mCancelPrivatet:Landroid/widget/LinearLayout;

.field private mCollectLayout:Landroid/widget/LinearLayout;

.field private mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private mCurrentAudioImagePath:Ljava/lang/String;

.field private mCurrentIndex:I

.field private mCurrentOri:I

.field private mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

.field private mDeferUpdateUntil:J

.field private mDeferredUpdateWaiting:Z

.field private mDeleteIsFocus:Z

.field private mDeleteLayout:Landroid/widget/LinearLayout;

.field private mDeletePath:Lcom/android/gallery3d/data/Path;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsLayout:Landroid/widget/LinearLayout;

.field private mEditLayout:Landroid/widget/LinearLayout;

.field private mFooterMenu:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHasCameraScreennailOrPlaceholder:Z

.field private mHaveImageEditor:Z

.field private mInCameraRoll:Z

.field private mIsActive:Z

.field private mIsMenuVisible:Z

.field private mItemPath:Lcom/android/gallery3d/data/Path;

.field private mLayout:Landroid/widget/FrameLayout;

.field private mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private final mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

.field private mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

.field private mMoreLayout:Landroid/widget/LinearLayout;

.field private mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;

.field private mNfcPushUris:[Landroid/net/Uri;

.field private mNonePicture:Z

.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field private mOriginalSetPathString:Ljava/lang/String;

.field private mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

.field private mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

.field private mRecenterCameraOnResume:Z

.field private final mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private mRmSecureLayout:Landroid/widget/LinearLayout;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSavePath:Ljava/lang/String;

.field private mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

.field private mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

.field private mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

.field private mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSetAsLayout:Landroid/widget/LinearLayout;

.field private mSetPathString:Ljava/lang/String;

.field private mSetPrivatet:Landroid/widget/LinearLayout;

.field private mSgModel:Lcom/android/gallery3d/app/PhotoPage$Model;

.field private mShareLayout:Landroid/widget/LinearLayout;

.field private mShareView:Lcom/android/gallery3d/ui/ShareView;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mShowSpinner:Z

.field private mSkipUpdateCurrentPhoto:Z

.field private mStartInFilmstrip:Z

.field private mTreatBackAsUp:Z

.field private final mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private final mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private mVideo:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 170
    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentAudioImagePath:Ljava/lang/String;

    .line 188
    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSgModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 200
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 202
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 203
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 208
    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 221
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 222
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 224
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mInCameraRoll:Z

    .line 230
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    .line 231
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 236
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 242
    new-array v0, v4, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    .line 244
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-direct {v0, p0, v3}, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    .line 250
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mNonePicture:Z

    .line 251
    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 265
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$1;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 276
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$2;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 287
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$3;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 348
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$4;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 1301
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$8;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$8;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 2148
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentOri:I

    .line 2182
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$10;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$10;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    .line 2340
    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    .line 2561
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mVideo:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/data/MediaItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/PhotoPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/PhotoPage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-static {p0}, Lcom/android/gallery3d/app/PhotoPage;->createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-static {p0}, Lcom/android/gallery3d/app/PhotoPage;->createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/PhotoPage;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->setNfcBeamPushUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/PhotoPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updatePanoramaUI(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->savePicToCollect()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/PhotoPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/PhotoPage;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->dosavefile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->movePicToSecureBox()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->removePicFromSecureBox()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/PhotoPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->managePrivateModel(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MoreMenuListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/MoreMenuListView;)Lcom/android/gallery3d/ui/MoreMenuListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/PhotoPage;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->getMoreMenuListArray()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/PhotoPage;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->getMoreMenuList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->moveX()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/PhotoPage;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->menuItemResponse(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/PhotoPage;)[Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->finishSecureOrPrivateModel()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/yulong/android/view/dialog/LoginDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method private canDoSlideShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1020
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return v0

    .line 1023
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/data/MtpSource;->isMtpPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1029
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1095
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return v0

    .line 1099
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    if-eqz v1, :cond_0

    .line 1101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 4
    .parameter "mediaObject"

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    .line 865
    .local v0, type:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "contentUri"

    .prologue
    .line 872
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private dismissPopupWindow()V
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MoreMenuListView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MoreMenuListView;->dismissPopupWindow()V

    .line 2394
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    invoke-static {}, Lcom/android/gallery3d/ui/ShareView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2395
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ShareView;->dismissPopupWindow()V

    .line 2397
    :cond_1
    return-void
.end method

.method private doHandler()V
    .locals 2

    .prologue
    .line 550
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$5;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoPage$5;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 716
    return-void
.end method

.method private dosavefile(Ljava/lang/String;)V
    .locals 37
    .parameter "savepath"

    .prologue
    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v16

    .line 2019
    .local v16, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v16, :cond_5

    .line 2023
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 2024
    .local v3, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 2025
    .local v28, resource:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 2027
    .local v27, resolver:Landroid/content/ContentResolver;
    if-nez p1, :cond_0

    .line 2028
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2030
    .local v4, availablePath:Ljava/lang/String;
    const v32, 0x7f0e0114

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2032
    .local v10, collected:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2035
    .end local v4           #availablePath:Ljava/lang/String;
    .end local v10           #collected:Ljava/lang/String;
    :cond_0
    const-string v32, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 2036
    .local v15, have_picname:I
    const-string v32, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 2037
    .local v17, len:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 2038
    .local v22, now:J
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "YL_"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".png"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2039
    .local v20, mPicName:Ljava/lang/String;
    move/from16 v0, v17

    if-lt v15, v0, :cond_1

    add-int/lit8 v32, v17, 0x1

    move/from16 v0, v32

    if-eq v15, v0, :cond_1

    const-string v32, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    :cond_1
    const/16 v18, 0x1

    .line 2041
    .local v18, mFalse:Z
    :goto_0
    if-lez v17, :cond_7

    if-eqz v18, :cond_7

    .line 2042
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    .line 2053
    :cond_2
    :goto_1
    if-lez v17, :cond_5

    .line 2054
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 2055
    .local v14, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2056
    .local v6, bufferedInput:Ljava/io/BufferedInputStream;
    const/16 v24, 0x0

    .line 2057
    .local v24, outFile:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 2058
    .local v8, bufferedOutput:Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 2060
    .local v5, bRet:Z
    :try_start_1
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2061
    .local v19, mFilepath:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v32

    if-nez v32, :cond_3

    .line 2062
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 2066
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v30

    .line 2067
    .local v30, spaceSize:J
    invoke-static/range {v30 .. v31}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->calculateFileSize(J)J

    move-result-wide v32

    const-wide/16 v34, 0x1

    cmp-long v32, v32, v34

    if-lez v32, :cond_4

    .line 2068
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v32

    const/16 v33, 0x4000

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v7, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2071
    .end local v6           #bufferedInput:Ljava/io/BufferedInputStream;
    .local v7, bufferedInput:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2072
    .local v13, file:Ljava/io/File;
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2073
    .end local v24           #outFile:Ljava/io/FileOutputStream;
    .local v25, outFile:Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v9, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2074
    .end local v8           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .local v9, bufferedOutput:Ljava/io/BufferedOutputStream;
    :try_start_4
    invoke-static {v7, v9}, Lcom/android/gallery3d/data/LocalImage;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 2075
    const/4 v5, 0x1

    .line 2076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v32

    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "file://"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    invoke-direct/range {v33 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v8, v9

    .end local v9           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v8       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object/from16 v24, v25

    .end local v25           #outFile:Ljava/io/FileOutputStream;
    .restart local v24       #outFile:Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 2084
    .end local v7           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v13           #file:Ljava/io/File;
    .restart local v6       #bufferedInput:Ljava/io/BufferedInputStream;
    :cond_4
    :try_start_5
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2085
    invoke-static/range {v24 .. v24}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2086
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2088
    .end local v19           #mFilepath:Ljava/io/File;
    .end local v30           #spaceSize:J
    :goto_2
    const-string v29, ""

    .line 2089
    .local v29, saveResult:Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 2090
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const v33, 0x7f0e012e

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 2096
    :goto_3
    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    .line 2103
    .end local v3           #activity:Landroid/app/Activity;
    .end local v5           #bRet:Z
    .end local v6           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v8           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v14           #filepath:Ljava/lang/String;
    .end local v15           #have_picname:I
    .end local v17           #len:I
    .end local v18           #mFalse:Z
    .end local v20           #mPicName:Ljava/lang/String;
    .end local v22           #now:J
    .end local v24           #outFile:Ljava/io/FileOutputStream;
    .end local v27           #resolver:Landroid/content/ContentResolver;
    .end local v28           #resource:Landroid/content/res/Resources;
    .end local v29           #saveResult:Ljava/lang/String;
    :cond_5
    :goto_4
    return-void

    .line 2039
    .restart local v3       #activity:Landroid/app/Activity;
    .restart local v15       #have_picname:I
    .restart local v17       #len:I
    .restart local v20       #mPicName:Ljava/lang/String;
    .restart local v22       #now:J
    .restart local v27       #resolver:Landroid/content/ContentResolver;
    .restart local v28       #resource:Landroid/content/res/Resources;
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2043
    .restart local v18       #mFalse:Z
    :cond_7
    if-lez v17, :cond_2

    .line 2044
    add-int/lit8 v32, v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 2045
    const-string v32, "."

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    .line 2046
    .local v21, mType:I
    if-lez v21, :cond_8

    .line 2047
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 2048
    .local v26, picType:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "YL_"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2049
    goto/16 :goto_1

    .line 2050
    .end local v26           #picType:Ljava/lang/String;
    :cond_8
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "YL_"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".png"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v20

    goto/16 :goto_1

    .line 2080
    .end local v21           #mType:I
    .restart local v5       #bRet:Z
    .restart local v6       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v8       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v14       #filepath:Ljava/lang/String;
    .restart local v24       #outFile:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v11

    .line 2081
    .local v11, e:Ljava/lang/Exception;
    :goto_5
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2082
    const/4 v5, 0x0

    .line 2084
    :try_start_7
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2085
    invoke-static/range {v24 .. v24}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2086
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 2099
    .end local v3           #activity:Landroid/app/Activity;
    .end local v5           #bRet:Z
    .end local v6           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v8           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v14           #filepath:Ljava/lang/String;
    .end local v15           #have_picname:I
    .end local v17           #len:I
    .end local v18           #mFalse:Z
    .end local v20           #mPicName:Ljava/lang/String;
    .end local v22           #now:J
    .end local v24           #outFile:Ljava/io/FileOutputStream;
    .end local v27           #resolver:Landroid/content/ContentResolver;
    .end local v28           #resource:Landroid/content/res/Resources;
    :catch_1
    move-exception v12

    .line 2100
    .local v12, ex:Ljava/lang/Exception;
    const-string v32, "PhotoPage"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2084
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v3       #activity:Landroid/app/Activity;
    .restart local v5       #bRet:Z
    .restart local v6       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v8       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v14       #filepath:Ljava/lang/String;
    .restart local v15       #have_picname:I
    .restart local v17       #len:I
    .restart local v18       #mFalse:Z
    .restart local v20       #mPicName:Ljava/lang/String;
    .restart local v22       #now:J
    .restart local v24       #outFile:Ljava/io/FileOutputStream;
    .restart local v27       #resolver:Landroid/content/ContentResolver;
    .restart local v28       #resource:Landroid/content/res/Resources;
    :catchall_0
    move-exception v32

    :goto_6
    :try_start_8
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2085
    invoke-static/range {v24 .. v24}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2086
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v32

    .line 2093
    .restart local v29       #saveResult:Ljava/lang/String;
    :cond_9
    const v32, 0x7f0e012f

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v29

    goto/16 :goto_3

    .line 2084
    .end local v6           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v29           #saveResult:Ljava/lang/String;
    .restart local v7       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v19       #mFilepath:Ljava/io/File;
    .restart local v30       #spaceSize:J
    :catchall_1
    move-exception v32

    move-object v6, v7

    .end local v7           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v6       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v6           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v24           #outFile:Ljava/io/FileOutputStream;
    .restart local v7       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v13       #file:Ljava/io/File;
    .restart local v25       #outFile:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v32

    move-object/from16 v24, v25

    .end local v25           #outFile:Ljava/io/FileOutputStream;
    .restart local v24       #outFile:Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v6       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v6           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v8           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v24           #outFile:Ljava/io/FileOutputStream;
    .restart local v7       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v9       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v25       #outFile:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v32

    move-object v8, v9

    .end local v9           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v8       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object/from16 v24, v25

    .end local v25           #outFile:Ljava/io/FileOutputStream;
    .restart local v24       #outFile:Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v6       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 2080
    .end local v6           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v13           #file:Ljava/io/File;
    .restart local v7       #bufferedInput:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v11

    move-object v6, v7

    .end local v7           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v6       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v6           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v24           #outFile:Ljava/io/FileOutputStream;
    .restart local v7       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v13       #file:Ljava/io/File;
    .restart local v25       #outFile:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v11

    move-object/from16 v24, v25

    .end local v25           #outFile:Ljava/io/FileOutputStream;
    .restart local v24       #outFile:Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v6       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v6           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v8           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v24           #outFile:Ljava/io/FileOutputStream;
    .restart local v7       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v9       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v25       #outFile:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v11

    move-object v8, v9

    .end local v9           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v8       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object/from16 v24, v25

    .end local v25           #outFile:Ljava/io/FileOutputStream;
    .restart local v24       #outFile:Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v6       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_5
.end method

.method private finishSecureOrPrivateModel()V
    .locals 2

    .prologue
    .line 2222
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->getActivityState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 2223
    .local v0, activityState:Lcom/android/gallery3d/app/ActivityState;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 2224
    instance-of v1, v0, Lcom/android/gallery3d/app/SlideshowPage;

    if-eqz v1, :cond_0

    .line 2225
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 2226
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->getActivityState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 2229
    :cond_0
    instance-of v1, v0, Lcom/android/gallery3d/app/PhotoPage;

    if-eqz v1, :cond_1

    .line 2230
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 2231
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->getActivityState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 2233
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;)V

    .line 2235
    :cond_2
    return-void
.end method

.method private getActivityState()Lcom/android/gallery3d/app/ActivityState;
    .locals 3

    .prologue
    .line 2238
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStack()Ljava/util/Stack;

    move-result-object v1

    .line 2239
    .local v1, stateStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/gallery3d/app/StateManager$StateEntry;>;"
    const/4 v0, 0x0

    .line 2240
    .local v0, activityState:Lcom/android/gallery3d/app/ActivityState;
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2241
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 2243
    :cond_0
    return-object v0
.end method

.method private getMoreMenuList(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[I>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2680
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 2690
    :cond_1
    return-object v2

    .line 2682
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2684
    .local v2, mapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2685
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2686
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "MENU_ICON"

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v6, 0x0

    aget v3, v3, v6

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2687
    const-string v4, "MENU_TEXT"

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2688
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getMoreMenuListArray()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2576
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->supportMenuOperations()I

    move-result v3

    .line 2577
    .local v3, supportedOperations:I
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 2676
    :cond_0
    return-object v2

    .line 2579
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2581
    .local v2, mapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    const/4 v4, 0x1

    .line 2582
    .local v4, value:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    const/16 v5, 0x20

    if-ge v1, v5, :cond_0

    .line 2583
    shl-int v4, v8, v1

    .line 2584
    const-string v5, "PhotoPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    new-array v0, v11, [I

    .line 2586
    .local v0, a:[I
    and-int v5, v3, v4

    sparse-switch v5, :sswitch_data_0

    .line 2582
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2589
    :sswitch_0
    const v5, 0x7f020112

    aput v5, v0, v9

    .line 2590
    const v5, 0x7f0e009e

    aput v5, v0, v8

    .line 2591
    const v5, 0x7f10018b

    aput v5, v0, v10

    .line 2592
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2595
    :sswitch_1
    const v5, 0x7f020181

    aput v5, v0, v9

    .line 2596
    const v5, 0x7f0e008b

    aput v5, v0, v8

    .line 2597
    const v5, 0x7f100184

    aput v5, v0, v10

    .line 2598
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2601
    :sswitch_2
    const v5, 0x7f020179

    aput v5, v0, v9

    .line 2602
    const v5, 0x7f0e009a

    aput v5, v0, v8

    .line 2603
    const v5, 0x7f10018a

    aput v5, v0, v10

    .line 2604
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2607
    :sswitch_3
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mCollectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2608
    const v5, 0x7f020119

    aput v5, v0, v9

    .line 2609
    const v5, 0x7f0e014a

    aput v5, v0, v8

    .line 2610
    const v5, 0x7f100185

    aput v5, v0, v10

    .line 2611
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2615
    :sswitch_4
    const v5, 0x7f02017b

    aput v5, v0, v9

    .line 2616
    const v5, 0x7f0e0137

    aput v5, v0, v8

    .line 2617
    const v5, 0x7f100186

    aput v5, v0, v10

    .line 2618
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2621
    :sswitch_5
    const v5, 0x7f02017c

    aput v5, v0, v9

    .line 2622
    const v5, 0x7f0e0138

    aput v5, v0, v8

    .line 2623
    const v5, 0x7f100187

    aput v5, v0, v10

    .line 2624
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2627
    :sswitch_6
    const v5, 0x7f020180

    aput v5, v0, v9

    .line 2628
    const v5, 0x7f0e0111

    aput v5, v0, v8

    .line 2629
    const v5, 0x7f10018e

    aput v5, v0, v10

    .line 2630
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2633
    :sswitch_7
    const v5, 0x7f02017a

    aput v5, v0, v9

    .line 2634
    const v5, 0x7f0e0147

    aput v5, v0, v8

    .line 2635
    const v5, 0x7f10018c

    aput v5, v0, v10

    .line 2636
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2639
    :sswitch_8
    const v5, 0x7f020178

    aput v5, v0, v9

    .line 2640
    const v5, 0x7f0e0148

    aput v5, v0, v8

    .line 2641
    const v5, 0x7f10018d

    aput v5, v0, v10

    .line 2642
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2645
    :sswitch_9
    const v5, 0x7f020182

    aput v5, v0, v9

    .line 2646
    const v5, 0x7f0e0140

    aput v5, v0, v8

    .line 2647
    const v5, 0x7f100188

    aput v5, v0, v10

    .line 2648
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2651
    :sswitch_a
    const v5, 0x7f020177

    aput v5, v0, v9

    .line 2652
    const v5, 0x7f0e0141

    aput v5, v0, v8

    .line 2653
    const v5, 0x7f100189

    aput v5, v0, v10

    .line 2654
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2657
    :sswitch_b
    const v5, 0x7f02017e

    aput v5, v0, v9

    .line 2658
    const v5, 0x7f0e009f

    aput v5, v0, v8

    .line 2659
    const v5, 0x7f100181

    aput v5, v0, v10

    .line 2660
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2661
    new-array v0, v11, [I

    .line 2662
    const v5, 0x7f02017f

    aput v5, v0, v9

    .line 2663
    const v5, 0x7f0e00a0

    aput v5, v0, v8

    .line 2664
    const v5, 0x7f100182

    aput v5, v0, v10

    .line 2665
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2668
    :sswitch_c
    const v5, 0x7f02017d

    aput v5, v0, v9

    .line 2669
    const v5, 0x7f0e02ea

    aput v5, v0, v8

    .line 2670
    const v5, 0x7f100191

    aput v5, v0, v10

    .line 2671
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2586
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_b
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x400 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x80000 -> :sswitch_5
        0x200000 -> :sswitch_6
        0x400000 -> :sswitch_9
        0x800000 -> :sswitch_a
        0x1000000 -> :sswitch_7
        0x2000000 -> :sswitch_8
        0x4000000 -> :sswitch_c
    .end sparse-switch
.end method

.method private hideBars()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1060
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1063
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1064
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v1, :cond_1

    .line 1076
    :goto_0
    return-void

    .line 1068
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1069
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 1070
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1071
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1073
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1075
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->dismissPopupWindow()V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 1361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1362
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 1363
    return-void
.end method

.method private initBottomMenu()V
    .locals 4

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 2467
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2468
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f1000a6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    .line 2469
    const v2, 0x7f04003d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    .line 2471
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    const v3, 0x7f1000c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraLayout:Landroid/widget/LinearLayout;

    .line 2472
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    const v3, 0x7f1000c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCollectLayout:Landroid/widget/LinearLayout;

    .line 2473
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    const v3, 0x7f1000c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareLayout:Landroid/widget/LinearLayout;

    .line 2474
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    const v3, 0x7f1000c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mEditLayout:Landroid/widget/LinearLayout;

    .line 2475
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    const v3, 0x7f1000c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRmSecureLayout:Landroid/widget/LinearLayout;

    .line 2476
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    const v3, 0x7f1000ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteLayout:Landroid/widget/LinearLayout;

    .line 2477
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    const v3, 0x7f1000d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    .line 2478
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    const v3, 0x7f1000d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetAsLayout:Landroid/widget/LinearLayout;

    .line 2479
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    const v3, 0x7f1000d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsLayout:Landroid/widget/LinearLayout;

    .line 2480
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    const v3, 0x7f1000cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPrivatet:Landroid/widget/LinearLayout;

    .line 2481
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    const v3, 0x7f1000ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCancelPrivatet:Landroid/widget/LinearLayout;

    .line 2483
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$11;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$11;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2490
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCollectLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$12;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$12;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2497
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$13;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$13;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2505
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mEditLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$14;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$14;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2512
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRmSecureLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$15;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$15;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2519
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$16;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$16;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2526
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetAsLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$17;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$17;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2533
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$18;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$18;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2540
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$19;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$19;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2547
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPrivatet:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$20;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$20;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2553
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCancelPrivatet:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$21;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$21;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2558
    return-void
.end method

.method private initializeFooterViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 2345
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initBottomMenu()V

    .line 2347
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "CameraLaunched"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2348
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2349
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCollectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2359
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 2361
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    .line 2362
    .local v2, obj:Lcom/android/gallery3d/data/MediaObject;
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v4, "/local/image/secure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2363
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRmSecureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2364
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2365
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2366
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCollectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2367
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2368
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2386
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->initializeOperation(Lcom/android/gallery3d/data/MediaObject;)V

    .line 2387
    return-void

    .line 2351
    .end local v2           #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2352
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCollectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2371
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    .line 2372
    .restart local v2       #obj:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/android/gallery3d/data/UriImage;

    if-eqz v3, :cond_0

    .line 2373
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 2374
    .local v1, mUri:Landroid/net/Uri;
    const-string v3, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2375
    .local v0, isShareable:Z
    if-nez v0, :cond_6

    .line 2376
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2381
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetAsLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetAsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetAsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2382
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2383
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2378
    :cond_6
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private launchCamera()V
    .locals 4

    .prologue
    .line 897
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 899
    .local v0, isVideo:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, v0}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;Z)V

    .line 900
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 902
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setLaunchTime(J)V

    .line 905
    return-void
.end method

.method private launchPhotoEditor()V
    .locals 5

    .prologue
    .line 908
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 909
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_nextgen_edit"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 916
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 918
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 920
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    :cond_2
    const-string v2, "launch-fullscreen"

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 924
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 926
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->overrideTransitionToEditor()V

    goto :goto_0
.end method

.method private managePrivateModel(Z)V
    .locals 7
    .parameter "isSetPrivate"

    .prologue
    .line 1992
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1993
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1994
    .local v1, mResources:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 1995
    .local v3, saveSuccess:Z
    const-string v2, ""

    .line 1996
    .local v2, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1997
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/gallery3d/data/DataManager;->managePrivateModel(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Z)Z

    move-result v3

    .line 2000
    :cond_0
    if-eqz p1, :cond_2

    .line 2001
    if-eqz v3, :cond_1

    .line 2002
    const v4, 0x7f0e0142

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2013
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->initializeOperation(Lcom/android/gallery3d/data/MediaObject;)V

    .line 2014
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->toasText(Ljava/lang/String;)V

    .line 2015
    return-void

    .line 2004
    :cond_1
    const v4, 0x7f0e0143

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2007
    :cond_2
    if-eqz v3, :cond_3

    .line 2008
    const v4, 0x7f0e0144

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2010
    :cond_3
    const v4, 0x7f0e0145

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private menuItemResponse(I)Z
    .locals 14
    .parameter "action"

    .prologue
    .line 2725
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v11, :cond_0

    const/4 v11, 0x1

    .line 2864
    :goto_0
    return v11

    .line 2726
    :cond_0
    const v11, 0x7f10017c

    if-eq p1, v11, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 2727
    :cond_1
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 2729
    .local v3, current:Lcom/android/gallery3d/data/MediaItem;
    if-nez v3, :cond_2

    .line 2731
    const/4 v11, 0x1

    goto :goto_0

    .line 2734
    :cond_2
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v11}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v4

    .line 2738
    .local v4, currentIndex:I
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    .line 2740
    .local v9, path:Lcom/android/gallery3d/data/Path;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2741
    .local v10, picPathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2743
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    .line 2744
    .local v7, manager:Lcom/android/gallery3d/data/DataManager;
    const/4 v1, 0x0

    .line 2745
    .local v1, confirmMsg:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 2864
    const/4 v11, 0x0

    goto :goto_0

    .line 2747
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    .line 2748
    const/4 v11, 0x1

    goto :goto_0

    .line 2751
    :sswitch_1
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "slideshow"

    const-string v13, "click"

    invoke-static {v11, v12, v13}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2752
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2753
    .local v5, data:Landroid/os/Bundle;
    const-string v11, "media-set-path"

    iget-object v12, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v12}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    const-string v11, "media-item-path"

    invoke-virtual {v9}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    const-string v11, "photo-index"

    invoke-virtual {v5, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2756
    const-string v11, "repeat"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2757
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v11

    const-class v12, Lcom/android/gallery3d/app/SlideshowPage;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13, v5}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 2759
    const/4 v11, 0x1

    goto :goto_0

    .line 2762
    .end local v5           #data:Landroid/os/Bundle;
    :sswitch_2
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2763
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11, v9}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 2764
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v12, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v11, p1, v1, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 2765
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2767
    :sswitch_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onShareItemClicked()Z

    .line 2768
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2770
    :sswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 2773
    .local v0, activity:Landroid/app/Activity;
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.android.camera.action.CROP"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2774
    .local v6, intentCrop:Landroid/content/Intent;
    const-class v11, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2775
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2777
    invoke-static {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x3

    :goto_1
    invoke-virtual {v0, v6, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2780
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2777
    :cond_3
    const/4 v11, 0x2

    goto :goto_1

    .line 2784
    .end local v0           #activity:Landroid/app/Activity;
    .end local v6           #intentCrop:Landroid/content/Intent;
    :sswitch_5
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "edit"

    const-string v13, "click"

    invoke-static {v11, v12, v13}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2785
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchPhotoEditor()V

    .line 2786
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2789
    :sswitch_6
    iget-boolean v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v11, :cond_4

    .line 2790
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 2794
    :goto_2
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2792
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showDetails()V

    goto :goto_2

    .line 2797
    :sswitch_7
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f11

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 2804
    :sswitch_8
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2805
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11, v9}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 2806
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v12, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v11, p1, v1, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 2807
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2809
    :sswitch_9
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2810
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11, v9}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 2811
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    new-instance v12, Lcom/android/gallery3d/ui/ImportCompleteListener;

    iget-object v13, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v12, v13}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v11, p1, v1, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 2813
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2815
    :sswitch_a
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "collect"

    const-string v13, "click"

    invoke-static {v11, v12, v13}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2816
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetAsLayout:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetAsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->isShown()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2817
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2820
    :goto_3
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2819
    :cond_5
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 2822
    :sswitch_b
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2823
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2825
    :sswitch_c
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2826
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2828
    :sswitch_d
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x13

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2829
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2831
    :sswitch_e
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x15

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2832
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2834
    :sswitch_f
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x16

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2835
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2837
    :sswitch_10
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "move"

    const-string v13, "click"

    invoke-static {v11, v12, v13}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2838
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2839
    .local v8, moveIntent:Landroid/content/Intent;
    const-string v11, "android.intent.action.MOVE_PICTURE"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2840
    const-string v11, "move-picture"

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2841
    const-string v11, "copy-picture"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2842
    const/high16 v11, 0x1400

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2844
    const-string v11, "image/*"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2845
    const-string v11, "pic-path-list"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2846
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2847
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->overrideTransitionToEditor()V

    .line 2848
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2850
    .end local v8           #moveIntent:Landroid/content/Intent;
    :sswitch_11
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "copy"

    const-string v13, "click"

    invoke-static {v11, v12, v13}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2851
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2852
    .local v2, copyIntent:Landroid/content/Intent;
    const-string v11, "android.intent.action.CROP_PICTURE"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2853
    const-string v11, "move-picture"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2854
    const-string v11, "copy-picture"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2855
    const-string v11, "image/*"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2856
    const-string v11, "pic-path-list"

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2857
    const/high16 v11, 0x1400

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2859
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2860
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->overrideTransitionToEditor()V

    .line 2861
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2745
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100158 -> :sswitch_1
        0x7f10017c -> :sswitch_3
        0x7f10017d -> :sswitch_9
        0x7f10017f -> :sswitch_7
        0x7f100180 -> :sswitch_5
        0x7f100181 -> :sswitch_8
        0x7f100182 -> :sswitch_8
        0x7f100183 -> :sswitch_4
        0x7f100184 -> :sswitch_8
        0x7f100185 -> :sswitch_a
        0x7f100186 -> :sswitch_c
        0x7f100187 -> :sswitch_d
        0x7f100188 -> :sswitch_e
        0x7f100189 -> :sswitch_f
        0x7f10018a -> :sswitch_6
        0x7f10018b -> :sswitch_8
        0x7f10018c -> :sswitch_10
        0x7f10018d -> :sswitch_11
        0x7f10018e -> :sswitch_b
        0x7f10018f -> :sswitch_2
        0x7f100191 -> :sswitch_8
    .end sparse-switch
.end method

.method private movePicToSecureBox()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1929
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 1930
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1931
    .local v2, mResources:Landroid/content/res/Resources;
    const-string v3, ""

    .line 1932
    .local v3, result:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1933
    .local v4, saveSuccess:Z
    const/4 v0, 0x0

    .line 1935
    .local v0, hasCryptoKey:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->checkSecurityPassExist()Z

    move-result v5

    .line 1936
    .local v5, securityPassExist:Z
    if-nez v5, :cond_1

    .line 1959
    :cond_0
    :goto_0
    return-void

    .line 1938
    :cond_1
    if-eqz v5, :cond_2

    .line 1939
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->checkCryptoKeyExist()Z

    move-result v0

    .line 1940
    if-nez v0, :cond_2

    .line 1941
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->initKey()V

    goto :goto_0

    .line 1946
    :cond_2
    if-eqz v1, :cond_3

    .line 1947
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/DataManager;->movePicToSecureBox(Lcom/android/gallery3d/data/Path;)Z

    move-result v4

    .line 1949
    :cond_3
    if-eqz v4, :cond_4

    .line 1952
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e02e6

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1954
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoPage$Model;->getSize()I

    move-result v6

    if-le v6, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->loginSecureBox()V

    goto :goto_0

    .line 1956
    :cond_4
    const v6, 0x7f0e013d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1957
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->toasText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private moveX()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2892
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentOri:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2893
    const/16 v0, -0x82

    .line 2897
    :cond_0
    :goto_0
    return v0

    .line 2894
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentOri:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method private onShareItemClicked()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2869
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v4, :cond_0

    .line 2870
    const-string v3, "PhotoPage"

    const-string v4, "share current photo error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :goto_0
    return v2

    .line 2873
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 2874
    .local v1, saveUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2875
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2876
    iget-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mVideo:Z

    if-eqz v4, :cond_2

    .line 2877
    const-string v4, "video/*"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2881
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2882
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    if-nez v4, :cond_3

    .line 2883
    new-instance v4, Lcom/android/gallery3d/ui/ShareView;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5, v0}, Lcom/android/gallery3d/ui/ShareView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/content/Intent;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    .line 2886
    :goto_2
    iget-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareLayout:Landroid/widget/LinearLayout;

    const/16 v6, -0xaa

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/gallery3d/ui/ShareView;->show(Landroid/widget/LinearLayout;II)V

    :cond_1
    move v2, v3

    .line 2888
    goto :goto_0

    .line 2879
    :cond_2
    const-string v4, "image/*"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2885
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/ui/ShareView;->setIntent(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private onUpPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1150
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1152
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1179
    :cond_1
    :goto_0
    return-void

    .line 1156
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 1157
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 1158
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1162
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1164
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v1, :cond_4

    .line 1166
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1167
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v1, "switchState"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1169
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1172
    .end local v0           #data:Landroid/os/Bundle;
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    const-string v2, "/local/video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1173
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, v3}, Lcom/android/gallery3d/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1174
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    const-string v2, "/local/image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1175
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private overrideTransitionToEditor()V
    .locals 3

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x10a0002

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 881
    return-void
.end method

.method private parseGif(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 15
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 2106
    if-nez p1, :cond_0

    .line 2107
    const-string p1, ""

    .line 2109
    :cond_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2110
    .local v5, gifFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 2111
    .local v6, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 2112
    .local v3, fIn:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 2113
    .local v8, mBufferedInputStream:Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 2115
    .local v7, isGifType:Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x3

    if-le v13, v14, :cond_3

    .line 2116
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2117
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .local v4, fIn:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/io/BufferedInputStream;

    const/16 v13, 0x4000

    invoke-direct {v9, v4, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8           #mBufferedInputStream:Ljava/io/BufferedInputStream;
    .local v9, mBufferedInputStream:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #mBufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v8       #mBufferedInputStream:Ljava/io/BufferedInputStream;
    move-object v3, v4

    .line 2122
    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    :goto_0
    const/16 v13, 0xa

    :try_start_2
    new-array v11, v13, [B

    .line 2123
    .local v11, mTypeBuffer:[B
    const/4 v1, 0x6

    .line 2124
    .local v1, byteCount:I
    const/4 v13, 0x0

    invoke-virtual {v8, v11, v13, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v12

    .line 2126
    .local v12, mediaType:I
    if-lez v12, :cond_2

    .line 2127
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .line 2128
    .local v10, mString:Ljava/lang/String;
    const-string v13, "GIF87a"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "GIF89a"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v13

    if-eqz v13, :cond_2

    .line 2130
    :cond_1
    const/4 v7, 0x1

    .line 2136
    .end local v10           #mString:Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2137
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2138
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2140
    .end local v1           #byteCount:I
    .end local v11           #mTypeBuffer:[B
    .end local v12           #mediaType:I
    :goto_1
    return v7

    .line 2119
    :cond_3
    :try_start_3
    iget-object v13, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v13}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 2120
    new-instance v9, Ljava/io/BufferedInputStream;

    const/16 v13, 0x4000

    invoke-direct {v9, v6, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v8           #mBufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v9       #mBufferedInputStream:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #mBufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v8       #mBufferedInputStream:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 2133
    :catch_0
    move-exception v2

    .line 2134
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2136
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2137
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2138
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 2136
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_3
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2137
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 2138
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 2136
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2133
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private refreshHidingMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1087
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1088
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1091
    :cond_0
    return-void
.end method

.method private registerPrivateModelReceiver()V
    .locals 3

    .prologue
    .line 2247
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 2248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2249
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2250
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2251
    const-string v1, "com.yulong.android.privatemode.PRIVATE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2252
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2253
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2255
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private removePicFromSecureBox()V
    .locals 8

    .prologue
    .line 1962
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v5}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1963
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1964
    .local v1, mResources:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 1966
    .local v4, saveSuccess:Z
    if-eqz v0, :cond_1

    .line 1967
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    .line 1968
    .local v2, mediaObject:Lcom/android/gallery3d/data/MediaObject;
    if-nez v2, :cond_0

    .line 1969
    const-string v5, "PhotoPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "object of path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    .end local v2           #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    :goto_0
    return-void

    .line 1972
    .restart local v2       #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/DataManager;->removePicFromSecureBox(Lcom/android/gallery3d/data/Path;)Z

    move-result v4

    .line 1974
    .end local v2           #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    :cond_1
    const-string v3, ""

    .line 1975
    .local v3, result:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1976
    const v5, 0x7f0e013e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1980
    :goto_1
    const-string v5, "PhotoPage"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/PhotoPage;->toasText(Ljava/lang/String;)V

    goto :goto_0

    .line 1978
    :cond_2
    const v5, 0x7f0e013f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private requestDeferredUpdate()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 930
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 931
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    if-nez v0, :cond_0

    .line 932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 933
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 935
    :cond_0
    return-void
.end method

.method private savePicToCollect()V
    .locals 3

    .prologue
    .line 1909
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1910
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 1911
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->savePicToCollect(Lcom/android/gallery3d/data/Path;)Z

    .line 1913
    :cond_0
    return-void
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1567
    if-nez p1, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 1570
    .local v0, path:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_0

    .line 1571
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v1, v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0
.end method

.method private setNfcBeamPushUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 861
    return-void
.end method

.method private setPhotoDataAdapterListener(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 1
    .parameter "photoDataAdapter"

    .prologue
    .line 725
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$6;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V

    .line 785
    return-void
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 1182
    const/4 v0, 0x0

    .line 1183
    .local v0, result:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1184
    .restart local v0       #result:Landroid/content/Intent;
    const-string v1, "return-index-hint"

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1185
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/ActivityState;->setStateResult(ILandroid/content/Intent;)V

    .line 1186
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3

    .prologue
    .line 845
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-nez v1, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 848
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 849
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 850
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$7;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private showBars()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1037
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1040
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1041
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v1, :cond_1

    .line 1057
    :goto_0
    return-void

    .line 1046
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1047
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 1048
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 1051
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->show()V

    .line 1052
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1053
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1056
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    goto :goto_0
.end method

.method private showDetails()V
    .locals 5

    .prologue
    .line 1366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1367
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1368
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 1369
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$9;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 1377
    return-void
.end method

.method private startPlayAudio(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 3056
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3057
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/MediaPlayService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3058
    const-string v1, "PATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3059
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3060
    return-void
.end method

.method private stopPlayAudio()V
    .locals 3

    .prologue
    .line 3063
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3064
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/MediaPlayService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3065
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 3067
    return-void
.end method

.method private supportMenuOperations()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 2699
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v6, :cond_1

    move v4, v5

    .line 2721
    :cond_0
    :goto_0
    return v4

    .line 2700
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v4

    .line 2701
    .local v4, supportedOperations:I
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v6, :cond_4

    .line 2702
    and-int/lit8 v4, v4, 0x1

    .line 2707
    :cond_2
    :goto_1
    const-string v6, "com.yulong.android.feature.FeatureConfig"

    new-array v7, v5, [Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2709
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2710
    .local v2, instance:Ljava/lang/Object;
    const-string v6, "com.yulong.android.feature.FeatureConfig"

    const-string v7, "getBooleanValue"

    new-array v8, v10, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2712
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 2713
    .local v0, SupportSecureBox:Z
    if-eqz v3, :cond_3

    .line 2714
    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "enable_secure"

    aput-object v7, v6, v5

    invoke-static {v3, v2, v6}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2717
    :cond_3
    if-nez v0, :cond_0

    .line 2718
    const v5, -0x40001

    and-int/2addr v4, v5

    .line 2719
    const v5, -0x80001

    and-int/2addr v4, v5

    goto :goto_0

    .line 2703
    .end local v0           #SupportSecureBox:Z
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v2           #instance:Ljava/lang/Object;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :cond_4
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-nez v6, :cond_2

    .line 2704
    and-int/lit16 v4, v4, -0x201

    goto :goto_1
.end method

.method private switchToGrid()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1324
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v5, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1325
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1328
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    if-eqz v2, :cond_2

    .line 1329
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    .line 1330
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 1332
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1333
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "media-path"

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v5, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v1

    .line 1338
    .local v1, inAlbum:Z
    const-string v5, "cluster-menu"

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1341
    const-string v2, "app-bridge"

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1344
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v3

    const-string v4, "return-index-hint"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v2, v2, -0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1347
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_6

    .line 1348
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1338
    goto :goto_1

    :cond_4
    move v3, v4

    .line 1341
    goto :goto_2

    .line 1344
    :cond_5
    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    goto :goto_3

    .line 1350
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private toggleBars()V
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_1

    .line 1110
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto :goto_0
.end method

.method private toggleStatusBar(Z)V
    .locals 4
    .parameter "isPhotoPage"

    .prologue
    const/16 v3, 0x400

    .line 2173
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2174
    .local v0, win:Landroid/view/Window;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez p1, :cond_0

    .line 2176
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 2180
    :goto_0
    return-void

    .line 2178
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method private transitionFromAlbumPageIfNeeded()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1716
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    .line 1718
    .local v2, transitions:Lcom/android/gallery3d/app/TransitionStore;
    const-string v3, "albumpage-transition"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1721
    .local v0, albumPageTransition:I
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    if-eqz v3, :cond_3

    .line 1725
    iput v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 1726
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->resetToFirstPicture()V

    .line 1741
    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 1742
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_5

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1746
    :cond_2
    :goto_2
    return-void

    .line 1728
    :cond_3
    const-string v3, "index-hint"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1729
    .local v1, resumeIndex:I
    if-ltz v1, :cond_0

    .line 1730
    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_4

    .line 1732
    add-int/lit8 v1, v1, 0x1

    .line 1734
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1735
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 1736
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v3, v5}, Lcom/android/gallery3d/app/PhotoPage$Model;->moveTo(I)V

    goto :goto_0

    .end local v1           #resumeIndex:I
    :cond_5
    move v3, v4

    .line 1742
    goto :goto_1

    .line 1743
    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 1744
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_2
.end method

.method private unregisterPrivateModelReceiver()V
    .locals 2

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2261
    :cond_0
    return-void
.end method

.method private updateBars()V
    .locals 1

    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 1120
    :cond_0
    return-void
.end method

.method private updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter "photo"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-ne v0, p1, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->stopPlayAudio()V

    .line 963
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 964
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 965
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->requestDeferredUpdate()V

    .line 969
    :goto_1
    instance-of v0, p1, Lcom/android/gallery3d/data/LocalVideo;

    if-eqz v0, :cond_3

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mVideo:Z

    .line 975
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->initializeOperation(Lcom/android/gallery3d/data/MediaObject;)V

    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentAudioImagePath:Ljava/lang/String;

    .line 977
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->isAudioImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentAudioImagePath:Ljava/lang/String;

    .line 979
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentAudioImagePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->startPlayAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 967
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    goto :goto_1

    .line 972
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mVideo:Z

    goto :goto_2
.end method

.method private updateMenuOperations()V
    .locals 5

    .prologue
    .line 998
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1001
    .local v1, menu:Landroid/view/Menu;
    if-nez v1, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    const v3, 0x7f100158

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1004
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 1005
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canDoSlideShow()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1007
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    .line 1009
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    .line 1010
    .local v2, supportedOperations:I
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v3, :cond_5

    .line 1011
    and-int/lit8 v2, v2, 0x1

    .line 1015
    :cond_3
    :goto_2
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    .line 1016
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/MediaObject;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    goto :goto_0

    .line 1005
    .end local v2           #supportedOperations:I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1012
    .restart local v2       #supportedOperations:I
    :cond_5
    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-nez v3, :cond_3

    .line 1013
    and-int/lit16 v2, v2, -0x201

    goto :goto_2
.end method

.method private updatePanoramaUI(Z)V
    .locals 4
    .parameter "isPanorama360"

    .prologue
    const v3, 0x7f10017c

    .line 1875
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1878
    .local v1, menu:Landroid/view/Menu;
    if-nez v1, :cond_1

    .line 1897
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    invoke-static {v1, p1, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuForPanorama(Landroid/view/Menu;ZZ)V

    .line 1884
    if-eqz p1, :cond_2

    .line 1885
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1886
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1887
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1888
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1890
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 1891
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1892
    .restart local v0       #item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1893
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1894
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateProgressBar()V
    .locals 4

    .prologue
    .line 985
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    if-eqz v2, :cond_0

    .line 986
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 987
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v1

    .line 988
    .local v1, progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_0

    .line 989
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StitchingProgressManager;->getProgress(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 990
    .local v0, progress:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 991
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->setProgress(I)V

    .line 995
    .end local v0           #progress:Ljava/lang/Integer;
    .end local v1           #progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    :cond_0
    return-void
.end method

.method private updateUIForCurrentPhoto()V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    .line 958
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 948
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 949
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 950
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 951
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->reloadDetails()V

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 955
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaObject;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 957
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V

    goto :goto_0
.end method

.method private wantBars()V
    .locals 1

    .prologue
    .line 1105
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 1106
    :cond_0
    return-void
.end method


# virtual methods
.method public addSecureAlbumItem(ZI)V
    .locals 1
    .parameter "isVideo"
    .parameter "id"

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/data/SecureAlbum;->addMediaItem(ZI)V

    .line 1290
    return-void
.end method

.method public checkCoolPassword()V
    .locals 2

    .prologue
    .line 3002
    new-instance v0, Lcom/yulong/android/view/dialog/LoginDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    .line 3003
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    const v1, 0x7f0e013b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 3004
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->show()V

    .line 3005
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$23;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$23;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;->setLoginListener(Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;)V

    .line 3053
    return-void
.end method

.method public checkCryptoKeyExist()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2924
    const/4 v1, 0x0

    .line 2925
    .local v1, hasCryptoKey:Z
    const-string v2, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v3, "isCryptoKeyExist"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2927
    .local v0, checkKey:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 2928
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2931
    :cond_0
    return v1
.end method

.method public checkSecurityPassExist()Z
    .locals 6

    .prologue
    .line 2906
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "coolpadSystem"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 2908
    .local v3, mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    invoke-virtual {v3}, Lcom/yulong/android/server/systeminterface/SystemManager;->isSecurityManagerPasswordExist()Z

    move-result v1

    .line 2909
    .local v1, isExist:Z
    if-nez v1, :cond_0

    .line 2911
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2912
    .local v2, mIntent:Landroid/content/Intent;
    const-string v4, "com.yulong.android.seccenter"

    const-string v5, "com.yulong.android.createpassword.CreateSecurityPasswordStep1Activity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2914
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2915
    const/4 v1, 0x0

    .line 2920
    .end local v1           #isExist:Z
    .end local v2           #mIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v1

    .line 2916
    .restart local v1       #isExist:Z
    :catch_0
    move-exception v0

    .line 2917
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public exitSecureModel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2275
    const-string v3, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v4, "isVerifyCheck"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2278
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 2279
    const/4 v0, 0x0

    .line 2280
    .local v0, isSafeModel:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2281
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2282
    :cond_0
    if-eqz v0, :cond_1

    .line 2283
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->finishSecureOrPrivateModel()V

    .line 2286
    .end local v0           #isSafeModel:Z
    :cond_1
    return-void
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 345
    const v0, 0x7f0b0009

    return v0
.end method

.method public getRunningTasks(Ljava/lang/String;)Z
    .locals 5
    .parameter "application"

    .prologue
    .line 2264
    const/4 v1, 0x0

    .line 2265
    .local v1, launcher:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2268
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 2269
    .local v2, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2271
    return v1
.end method

.method public initKey()V
    .locals 2

    .prologue
    .line 2936
    new-instance v0, Lcom/yulong/android/view/dialog/LoginDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    .line 2937
    .local v0, passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;
    const v1, 0x7f0e013b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2938
    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->show()V

    .line 2939
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$22;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/PhotoPage$22;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/yulong/android/view/dialog/LoginDialog;)V

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;->setLoginListener(Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;)V

    .line 2970
    return-void
.end method

.method public initializeData(Landroid/os/Bundle;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 11
    .parameter "data"
    .parameter "itemPath"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 469
    iput-boolean v10, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    .line 470
    const-string v6, "app-bridge"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/app/AppBridge;

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 471
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v6, :cond_3

    .line 472
    iput-boolean v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 473
    iput-boolean v10, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 474
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v6, p0}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 477
    invoke-static {}, Lcom/android/gallery3d/data/SnailSource;->newId()I

    move-result v0

    .line 478
    .local v0, id:I
    invoke-static {v0}, Lcom/android/gallery3d/data/SnailSource;->getSetPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 479
    .local v5, screenNailSetPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v0}, Lcom/android/gallery3d/data/SnailSource;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 480
    .local v4, screenNailItemPath:Lcom/android/gallery3d/data/Path;
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/SnailAlbum;

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 482
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/SnailItem;

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 484
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 486
    const-string v6, "show_when_locked"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 488
    iget v6, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 492
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v7, "/local/all/0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 494
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/data/SecureSource;->isSecurePath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 495
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/SecureAlbum;

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    .line 497
    iput-boolean v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    .line 499
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/filter/empty/{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 504
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/combo/item/{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 508
    move-object p2, v4

    .line 517
    .end local v0           #id:I
    .end local v4           #screenNailItemPath:Lcom/android/gallery3d/data/Path;
    .end local v5           #screenNailSetPath:Lcom/android/gallery3d/data/Path;
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 519
    .local v3, originalSet:Lcom/android/gallery3d/data/MediaSet;
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v6, :cond_4

    instance-of v6, v3, Lcom/android/gallery3d/data/ComboAlbum;

    if-eqz v6, :cond_4

    move-object v6, v3

    .line 522
    check-cast v6, Lcom/android/gallery3d/data/ComboAlbum;

    invoke-virtual {v6, v10}, Lcom/android/gallery3d/data/ComboAlbum;->useNameOfChild(I)V

    .line 524
    :cond_4
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v3}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 525
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/filter/delete/{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 526
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/FilterDeleteSet;

    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    .line 528
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-nez v6, :cond_5

    .line 529
    const-string v6, "PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to restore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_5
    if-nez p2, :cond_7

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v6, :cond_7

    .line 532
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v2

    .line 533
    .local v2, mediaItemCount:I
    if-lez v2, :cond_8

    .line 534
    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-lt v6, v2, :cond_6

    iput v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 535
    :cond_6
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v6, v7, v10}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object p2

    .end local v2           #mediaItemCount:I
    :cond_7
    move-object v1, p2

    .line 542
    .end local p2
    .local v1, itemPath:Lcom/android/gallery3d/data/Path;
    :goto_0
    return-object v1

    .end local v1           #itemPath:Lcom/android/gallery3d/data/Path;
    .restart local v2       #mediaItemCount:I
    .restart local p2
    :cond_8
    move-object v1, p2

    .line 539
    .end local p2
    .restart local v1       #itemPath:Lcom/android/gallery3d/data/Path;
    goto :goto_0
.end method

.method public initializeOperation(Lcom/android/gallery3d/data/MediaObject;)V
    .locals 9
    .parameter "obj"

    .prologue
    const v8, 0x7f0e0113

    const/high16 v7, 0x80

    const/high16 v4, 0x40

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2401
    if-eqz p1, :cond_3

    .line 2402
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mEditLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_4

    .line 2404
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2410
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPrivatet:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v3

    and-int/2addr v3, v4

    if-nez v3, :cond_5

    .line 2412
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPrivatet:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2418
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCancelPrivatet:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v3

    and-int/2addr v3, v7

    if-nez v3, :cond_6

    .line 2420
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCancelPrivatet:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2426
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    .line 2463
    :cond_3
    :goto_3
    return-void

    .line 2405
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mEditLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_0

    .line 2407
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2413
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPrivatet:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v3

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 2415
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPrivatet:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2421
    :cond_6
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCancelPrivatet:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v3

    and-int/2addr v3, v7

    if-eqz v3, :cond_2

    .line 2423
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCancelPrivatet:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2427
    :cond_7
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2428
    .local v0, currentPath:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 2429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2430
    .local v2, interSavePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2431
    .local v1, exterSavePath:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2432
    :cond_8
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCollectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 2437
    :cond_9
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->dismissPopupWindow()V

    .line 2438
    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mVideo:Z

    if-eqz v3, :cond_d

    .line 2439
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCollectLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_a

    .line 2440
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCollectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2441
    :cond_a
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mEditLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b

    .line 2442
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2443
    :cond_b
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_c

    .line 2444
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2445
    :cond_c
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 2446
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 2449
    :cond_d
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mEditLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_e

    .line 2450
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2452
    :cond_e
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v4, "/local/image/secure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2454
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2456
    :cond_f
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v4, "/local/image/secure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2458
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 2459
    :cond_10
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public loginSecureBox()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2975
    const-string v3, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v4, "isVerifyCheck"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2977
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 2978
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2980
    .local v1, isVerifyCheck:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->checkSecurityPassExist()Z

    move-result v0

    .line 2982
    .local v0, isExist:Z
    if-nez v0, :cond_1

    .line 2999
    .end local v0           #isExist:Z
    .end local v1           #isVerifyCheck:Z
    :cond_0
    :goto_0
    return-void

    .line 2984
    .restart local v0       #isExist:Z
    .restart local v1       #isVerifyCheck:Z
    :cond_1
    if-eqz v1, :cond_2

    .line 2985
    const-string v3, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v4, "notifySecureServer"

    new-array v5, v8, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2989
    const-string v3, "PhotoPage"

    const-string v4, "loginSecureBox notifySecureServer VERTIFY = 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0xb4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2996
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->checkCoolPassword()V

    goto :goto_0
.end method

.method public notifyScreenNailChanged()V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1283
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/SnailAlbum;->notifyChange()V

    .line 1285
    :cond_0
    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 2
    .parameter "allowed"

    .prologue
    .line 1498
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 1499
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1500
    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1505
    return-void
.end method

.method public onAlbumModeSelected(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1856
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1857
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->switchToGrid()V

    .line 1859
    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 3

    .prologue
    .line 1131
    const-string v0, "PhotoPage"

    const-string v1, ">>>>>>PhotoPage::onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_1

    .line 1133
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->switchWithCaptureAnimation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 1137
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1138
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_0

    .line 1139
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_4

    .line 1140
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    .line 1141
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CameraLaunched"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1142
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1144
    :cond_5
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCommitDeleteImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1540
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 1545
    :goto_0
    return-void

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1542
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1543
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const v1, 0x7f10017f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 1544
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2151
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2152
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    .line 2153
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v3, :cond_3

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 2155
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 2156
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 2157
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 2162
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->dismissPopupWindow()V

    .line 2163
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2164
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-eqz v0, :cond_1

    .line 2165
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initializeFooterViews()V

    .line 2166
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2168
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentOri:I

    .line 2170
    return-void

    :cond_3
    move v0, v1

    .line 2153
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 17
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 361
    invoke-super/range {p0 .. p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 363
    new-instance v3, Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 364
    new-instance v3, Lcom/android/gallery3d/ui/MenuExecutor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v3, v4, v5}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 368
    new-instance v3, Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/PhotoView;->setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/OrientationManager;->addListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-interface {v3, v4}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 377
    :cond_0
    const-string v3, "save_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSavePath:Ljava/lang/String;

    .line 378
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/app/PhotoPage;->toggleStatusBar(Z)V

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->registerPrivateModelReceiver()V

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->doHandler()V

    .line 382
    const-string v3, "media-set-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    .line 384
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->setupNfcBeamPush()V

    .line 385
    const-string v3, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 386
    .local v13, itemPathString:Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string v3, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 390
    .local v6, itemPath:Lcom/android/gallery3d/data/Path;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v4, "/local/video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v13, :cond_4

    const-string v3, "/local/video/"

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mVideo:Z

    .line 393
    const-string v3, "treat-back-as-up"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    .line 394
    const-string v3, "start-in-filmstrip"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    .line 395
    const-string v3, "in_camera_roll"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 396
    .local v12, inCameraRoll:Z
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/gallery3d/app/PhotoPage;->mInCameraRoll:Z

    .line 397
    const-string v3, "index-hint"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/app/PhotoPage;->initializeData(Landroid/os/Bundle;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 402
    if-nez v6, :cond_5

    .line 464
    :goto_2
    return-void

    .line 386
    .end local v6           #itemPath:Lcom/android/gallery3d/data/Path;
    .end local v12           #inCameraRoll:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 390
    .restart local v6       #itemPath:Lcom/android/gallery3d/data/Path;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 403
    .restart local v12       #inCameraRoll:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v15

    .line 404
    .local v15, obj:Lcom/android/gallery3d/data/MediaObject;
    new-instance v2, Lcom/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v8, :cond_a

    const/4 v8, -0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v9, :cond_b

    const/4 v9, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v10, :cond_c

    const/4 v10, 0x0

    :goto_5
    invoke-direct/range {v2 .. v10}, Lcom/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZZ)V

    .line 409
    .local v2, pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 412
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/app/PhotoPage;->setPhotoDataAdapterListener(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 415
    const-string v3, "CameraLaunched"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    instance-of v3, v15, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_6

    .line 416
    new-instance v4, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object v3, v15

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v4, v5, v7, v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSgModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mSgModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 421
    :cond_6
    instance-of v3, v15, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_7

    move-object v3, v15

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->isAudioImage()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 422
    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentAudioImagePath:Ljava/lang/String;

    .line 441
    .end local v2           #pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    .end local v15           #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoPage;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-eqz v3, :cond_8

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->initializeFooterViews()V

    .line 445
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_f

    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_10

    const v3, 0x7f100028

    :goto_8
    invoke-virtual {v4, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 448
    .local v11, galleryRoot:Landroid/widget/RelativeLayout;
    if-eqz v11, :cond_9

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v16

    .line 453
    .local v16, progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v16, :cond_9

    .line 454
    new-instance v3, Lcom/android/gallery3d/app/PhotoPageProgressBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, v11}, Lcom/android/gallery3d/app/PhotoPageProgressBar;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    .line 455
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v3, :cond_9

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    .line 463
    .end local v16           #progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/util/GalleryUtils;->registerMultiWndStateListener(Lcom/android/gallery3d/util/MultiWndStateObserver;)V

    goto/16 :goto_2

    .line 404
    .end local v11           #galleryRoot:Landroid/widget/RelativeLayout;
    .restart local v15       #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AppBridge;->isPanorama()Z

    move-result v9

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AppBridge;->isStaticCamera()Z

    move-result v10

    goto/16 :goto_5

    .line 426
    .end local v15           #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v14

    check-cast v14, Lcom/android/gallery3d/data/MediaItem;

    .line 430
    .local v14, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v14, :cond_e

    instance-of v3, v14, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v3, :cond_e

    .line 431
    invoke-virtual {v14}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 435
    :cond_e
    new-instance v3, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {v3, v4, v5, v14}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 437
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    .line 438
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    goto/16 :goto_6

    .line 445
    .end local v14           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 446
    :cond_10
    const v3, 0x7f1000a4

    goto/16 :goto_8
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->createActionBarMenu(ILandroid/view/Menu;)V

    .line 1295
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v1, "image/*"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 1296
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1297
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 1298
    const/4 v0, 0x1

    return v0

    .line 1297
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onCurrentImageUpdated()V
    .locals 1

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 1693
    :cond_0
    return-void
.end method

.method public onDeleteImage(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "offset"

    .prologue
    .line 1522
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 1523
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    .line 1524
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    .line 1525
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->addDeletion(Lcom/android/gallery3d/data/Path;I)V

    .line 1526
    return-void

    .line 1524
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1809
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 1811
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1812
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AppBridge;->detachScreenNail()V

    .line 1813
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 1814
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 1815
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 1817
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->unregisterPrivateModelReceiver()V

    .line 1818
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/OrientationManager;->removeListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 1819
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1820
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 1823
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1824
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 1825
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->destroy()V

    .line 1827
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1828
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->toggleStatusBar(Z)V

    .line 1830
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->stopPlayAudio()V

    .line 1831
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->removeMultiWndStateListener(Lcom/android/gallery3d/util/MultiWndStateObserver;)V

    .line 1832
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 1834
    return-void
.end method

.method public onFilmModeChanged(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 1697
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1698
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v0, :cond_0

    .line 1699
    if-eqz p1, :cond_1

    .line 1700
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 1707
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 1708
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1709
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1713
    :goto_1
    return-void

    .line 1704
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    goto :goto_0

    .line 1711
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_1
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 1509
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1511
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1512
    return-void

    .end local v0           #m:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 1509
    goto :goto_0
.end method

.method public onImageReady()V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    .line 1551
    :cond_0
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1357
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->menuItemResponse(I)Z

    move-result v0

    return v0
.end method

.method public onOrientationCompensationChanged()V
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 1127
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1638
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 1639
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 1640
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1641
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 1643
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1645
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 1647
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 1648
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v1, :cond_2

    .line 1649
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->pause()V

    .line 1651
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSgModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v1, :cond_3

    .line 1652
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSgModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->pause()V

    .line 1653
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSgModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 1655
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->pause()V

    .line 1656
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1657
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1658
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1659
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1660
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v1, :cond_4

    .line 1661
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    .line 1663
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 1674
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 1675
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->clearDeletion()V

    .line 1677
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->dismissPopupWindow()V

    .line 1678
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_6

    .line 1679
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1680
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1682
    :cond_6
    const-string v1, "com.yulong.android.launcher3"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->getRunningTasks(Ljava/lang/String;)Z

    move-result v0

    .line 1683
    .local v0, has_launcher:Z
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->exitSecureModel()V

    .line 1685
    :cond_7
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->stopPlayAudio()V

    .line 1686
    return-void
.end method

.method public onPictureCenter(Z)V
    .locals 5
    .parameter "isCamera"

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x9

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 790
    if-nez p1, :cond_0

    iget-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v4, :cond_2

    :cond_0
    move p1, v1

    .line 791
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 792
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 793
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getSize()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 795
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 797
    :cond_1
    return-void

    :cond_2
    move p1, v0

    .line 790
    goto :goto_0

    :cond_3
    move v0, v3

    .line 795
    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1750
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 1752
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v1, :cond_0

    .line 1753
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1805
    :goto_0
    return-void

    .line 1756
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->transitionFromAlbumPageIfNeeded()V

    .line 1757
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->toggleStatusBar(Z)V

    .line 1758
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1759
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->freeze()V

    .line 1761
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 1762
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/ActivityState;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 1768
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSgModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v1, :cond_6

    .line 1769
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSgModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    .line 1774
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->resume()V

    .line 1775
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v1, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 1777
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/app/GalleryActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1778
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1779
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1780
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1, v3, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 1783
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v1, :cond_8

    .line 1784
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 1785
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1790
    :goto_3
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v3, "image/*"

    invoke-static {v1, v3}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1791
    .local v0, haveImageEditor:Z
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eq v0, v1, :cond_3

    .line 1792
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 1793
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1796
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    .line 1797
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1798
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mFooterMenu:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1801
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentAudioImagePath:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentAudioImagePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->startPlayAudio(Ljava/lang/String;)V

    .line 1803
    :cond_5
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1804
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1771
    .end local v0           #haveImageEditor:Z
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    goto :goto_1

    :cond_7
    move v1, v3

    .line 1775
    goto :goto_2

    .line 1787
    :cond_8
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto :goto_3
.end method

.method public onSingleTapUp(II)V
    .locals 23
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/AppBridge;->onSingleTapUp(II)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 1388
    .local v4, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v11

    .line 1389
    .local v11, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v11, v0, :cond_0

    .line 1394
    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v16

    .line 1395
    .local v16, supported:I
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const/4 v14, 0x1

    .line 1396
    .local v14, playVideo:Z
    :goto_1
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x2000

    move/from16 v20, v0

    if-eqz v20, :cond_4

    const/16 v18, 0x1

    .line 1397
    .local v18, unlock:Z
    :goto_2
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x4000

    move/from16 v20, v0

    if-eqz v20, :cond_5

    const/4 v6, 0x1

    .line 1398
    .local v6, goBack:Z
    :goto_3
    const/high16 v20, 0x1

    and-int v20, v20, v16

    if-eqz v20, :cond_6

    const/4 v12, 0x1

    .line 1400
    .local v12, launchCamera:Z
    :goto_4
    if-eqz v14, :cond_2

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v19

    .line 1404
    .local v19, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v7

    .line 1405
    .local v7, h:I
    div-int/lit8 v20, v19, 0x2

    sub-int v20, p1, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    mul-int/lit8 v20, v20, 0xc

    move/from16 v0, v20

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    div-int/lit8 v20, v7, 0x2

    sub-int v20, p2, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    mul-int/lit8 v20, v20, 0xc

    move/from16 v0, v20

    if-gt v0, v7, :cond_7

    const/4 v14, 0x1

    .line 1408
    .end local v7           #h:I
    .end local v19           #w:I
    :cond_2
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->dismissPopupWindow()V

    .line 1415
    if-eqz v14, :cond_9

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaObject;->getPlayUri()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1395
    .end local v6           #goBack:Z
    .end local v12           #launchCamera:Z
    .end local v14           #playVideo:Z
    .end local v18           #unlock:Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 1396
    .restart local v14       #playVideo:Z
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 1397
    .restart local v18       #unlock:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 1398
    .restart local v6       #goBack:Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 1405
    .restart local v7       #h:I
    .restart local v12       #launchCamera:Z
    .restart local v19       #w:I
    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 1419
    .end local v7           #h:I
    .end local v19           #w:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto/16 :goto_0

    .line 1421
    :cond_9
    if-eqz v6, :cond_a

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->onBackPressed()V

    goto/16 :goto_0

    .line 1423
    :cond_a
    if-eqz v18, :cond_b

    .line 1424
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    const-class v21, Lcom/android/gallery3d/app/Gallery;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1425
    .local v8, intent:Landroid/content/Intent;
    const-string v20, "dismiss-keyguard"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1427
    .end local v8           #intent:Landroid/content/Intent;
    :cond_b
    if-eqz v12, :cond_d

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/gallery3d/app/PhotoPage$Model;->getSize()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 1430
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mNonePicture:Z

    .line 1431
    const-string v20, "PhotoPage"

    const-string v21, "onSingleTapUp launchCamera()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V

    goto/16 :goto_0

    .line 1433
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mNonePicture:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1435
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mNonePicture:Z

    goto/16 :goto_0

    .line 1438
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    move/from16 v20, v0

    if-nez v20, :cond_e

    .line 1439
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto/16 :goto_0

    .line 1444
    :cond_e
    const/4 v9, 0x0

    .line 1445
    .local v9, isGif:Z
    :try_start_0
    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    .line 1446
    .local v13, path:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v17

    .line 1447
    .local v17, targetUri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-class v20, Lcom/android/gallery3d/app/GifView;

    move-object/from16 v0, v20

    invoke-direct {v8, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1448
    .restart local v8       #intent:Landroid/content/Intent;
    if-eqz v13, :cond_13

    .line 1449
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1}, Lcom/android/gallery3d/app/PhotoPage;->parseGif(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v9

    .line 1450
    if-eqz v9, :cond_12

    .line 1451
    if-eqz v17, :cond_f

    .line 1452
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1453
    .local v15, str:Ljava/lang/String;
    const-string v20, "file"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_11

    .line 1454
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1459
    .end local v15           #str:Ljava/lang/String;
    :cond_f
    :goto_6
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    .line 1460
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1462
    :cond_10
    invoke-virtual {v4, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1489
    .end local v8           #intent:Landroid/content/Intent;
    .end local v13           #path:Ljava/lang/String;
    .end local v17           #targetUri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 1490
    .local v5, ex:Ljava/lang/Exception;
    const-string v20, "PhotoPage"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1456
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v13       #path:Ljava/lang/String;
    .restart local v15       #str:Ljava/lang/String;
    .restart local v17       #targetUri:Landroid/net/Uri;
    :cond_11
    :try_start_1
    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 1464
    .end local v15           #str:Ljava/lang/String;
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->toggleBars()V

    goto/16 :goto_0

    .line 1466
    :cond_13
    if-eqz v17, :cond_0

    .line 1467
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1468
    .restart local v15       #str:Ljava/lang/String;
    const-string v20, "file"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    .line 1469
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1470
    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/gallery3d/app/PhotoPage;->parseGif(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v10

    .line 1471
    .local v10, isGifType:Z
    if-eqz v10, :cond_14

    .line 1472
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1473
    invoke-virtual {v4, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1475
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->toggleBars()V

    goto/16 :goto_0

    .line 1477
    .end local v10           #isGifType:Z
    :cond_15
    const-string v20, "content://"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 1478
    const-string v20, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/PhotoPage;->parseGif(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v10

    .line 1479
    .restart local v10       #isGifType:Z
    if-eqz v10, :cond_16

    .line 1480
    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    invoke-virtual {v4, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1483
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->toggleBars()V

    goto/16 :goto_0

    .line 1486
    .end local v10           #isGifType:Z
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->toggleBars()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 1577
    if-nez p2, :cond_1

    .line 1616
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    const/4 v4, -0x2

    if-ne p2, v4, :cond_2

    .line 1583
    const/4 p2, 0x0

    .line 1585
    :cond_2
    iput-boolean v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1586
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1605
    :pswitch_0
    if-eqz p3, :cond_0

    .line 1606
    const-string v4, "media-item-path"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1607
    .local v3, path:Ljava/lang/String;
    const-string v4, "photo-index"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1608
    .local v1, index:I
    if-eqz v3, :cond_0

    .line 1609
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 1588
    .end local v1           #index:I
    .end local v3           #path:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1591
    :pswitch_2
    if-ne p2, v5, :cond_0

    .line 1592
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1596
    :pswitch_3
    if-ne p2, v5, :cond_0

    .line 1597
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1598
    .local v0, context:Landroid/content/Context;
    const v4, 0x7f0e00b9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f0e0103

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1600
    .local v2, message:Ljava/lang/String;
    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1586
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onUndoBarVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1901
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1902
    return-void
.end method

.method public onUndoDeleteImage()V
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 1536
    :goto_0
    return-void

    .line 1533
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setFocusHintPath(Lcom/android/gallery3d/data/Path;)V

    .line 1534
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->removeDeletion(Lcom/android/gallery3d/data/Path;)V

    .line 1535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public onUserMenuTap(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 1079
    if-eqz p1, :cond_0

    .line 1080
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1081
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 1082
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1084
    :cond_0
    return-void
.end method

.method public pickSefeBox()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    .line 1916
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;)V

    .line 1917
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 1918
    .local v0, dm:Lcom/android/gallery3d/data/DataManager;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1919
    .local v1, secureData:Landroid/os/Bundle;
    const-string v2, "secure-path"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1920
    const-string v2, "type-bits"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1922
    const-string v2, "media-path"

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1925
    return-void
.end method

.method public playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .parameter "activity"
    .parameter "uri"
    .parameter "title"

    .prologue
    .line 1555
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "video/*"

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "treat-up-as-back"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 1559
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0e00a8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public refreshBottomControlsWhenReady()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1866
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 1867
    .local v0, currentPhoto:Lcom/android/gallery3d/data/MediaObject;
    if-nez v0, :cond_0

    .line 1868
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1872
    :goto_0
    return-void

    .line 1870
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaObject;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    goto :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 1277
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimation(I)Z

    move-result v0

    return v0
.end method

.method public toasText(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2146
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3071
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    invoke-static {}, Lcom/android/gallery3d/ui/ShareView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3072
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ShareView;->dismissPopupWindow()V

    .line 3073
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareView:Lcom/android/gallery3d/ui/ShareView;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareLayout:Landroid/widget/LinearLayout;

    const/16 v2, -0xaa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/ShareView;->show(Landroid/widget/LinearLayout;II)V

    .line 3075
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MoreMenuListView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3076
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MoreMenuListView;->dismissPopupWindow()V

    .line 3077
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->moveX()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/MoreMenuListView;->show(Landroid/widget/LinearLayout;II)V

    .line 3079
    :cond_1
    return-void
.end method
