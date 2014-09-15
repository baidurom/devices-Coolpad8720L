.class public Lcom/android/gallery3d/app/AlbumPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;
    }
.end annotation


# instance fields
.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

.field private mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

.field private mEmptyAlbum:Z

.field private mFavorite:Z

.field private mFocusIndex:I

.field private mGetContent:Z

.field public mGps:Z

.field private mHandler:Landroid/os/Handler;

.field private mInCameraApp:Z

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLaunchedFromPhotoPage:Z

.field private mLoadingBits:I

.field private mLoadingFailed:Z

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMediaSetPath:Lcom/android/gallery3d/data/Path;

.field private mMoveCopyExecutor:Lcom/android/gallery3d/ui/MoveCopyExecutor;

.field private mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSecureAlbum:Z

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field public mSwitchState:Z

.field private mSyncResult:I

.field private mSyncTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDistance:F

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 102
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGps:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSwitchState:Z

    .line 119
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 129
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFavorite:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mEmptyAlbum:Z

    .line 132
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 133
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    .line 136
    new-instance v0, Lcom/android/gallery3d/ui/RelativePosition;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    .line 145
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$1;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 173
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$2;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 985
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$8;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$8;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumPage;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onSingleTapUp(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/AlbumPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncResult:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/AlbumPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->showSyncErrorIfNecessary(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/RelativePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mEmptyAlbum:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PhotoFallbackEffect;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method private clearLoadingBit(I)V
    .locals 5
    .parameter "loadTaskBit"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 898
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 899
    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 901
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFavorite:Z

    if-eqz v1, :cond_1

    .line 902
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mEmptyAlbum:Z

    .line 903
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 904
    .local v0, result:Landroid/content/Intent;
    const-string v1, "empty-album"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 905
    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/app/ActivityState;->setStateResult(ILandroid/content/Intent;)V

    .line 914
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 908
    .restart local v0       #result:Landroid/content/Intent;
    const-string v1, "empty-album"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 909
    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/app/ActivityState;->setStateResult(ILandroid/content/Intent;)V

    .line 910
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0
.end method

.method private finishSecureOrPrivateModel()V
    .locals 2

    .prologue
    .line 1031
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->getActivityState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1032
    .local v0, activityState:Lcom/android/gallery3d/app/ActivityState;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 1034
    instance-of v1, v0, Lcom/android/gallery3d/app/SlideshowPage;

    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1036
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->getActivityState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1039
    :cond_0
    instance-of v1, v0, Lcom/android/gallery3d/app/PhotoPage;

    if-eqz v1, :cond_1

    .line 1040
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1041
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->getActivityState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1044
    :cond_1
    instance-of v1, v0, Lcom/android/gallery3d/app/AlbumPage;

    if-eqz v1, :cond_2

    .line 1045
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1046
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->getActivityState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1049
    :cond_2
    return-void
.end method

.method private getActivityState()Lcom/android/gallery3d/app/ActivityState;
    .locals 3

    .prologue
    .line 1052
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStack()Ljava/util/Stack;

    move-result-object v1

    .line 1053
    .local v1, stateStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/gallery3d/app/StateManager$StateEntry;>;"
    const/4 v0, 0x0

    .line 1054
    .local v0, activityState:Lcom/android/gallery3d/app/ActivityState;
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1055
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1057
    :cond_0
    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 999
    if-eqz p1, :cond_0

    .line 1000
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v6, "isVerifyCheck"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1003
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 1004
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1006
    .local v2, isSafeModel:Z
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 1007
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->finishSecureOrPrivateModel()V

    .line 1027
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #isSafeModel:Z
    .end local v3           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1008
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #isSafeModel:Z
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_1
    const-string v5, "com.yulong.android.privatemode.PRIVATE_MODE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1009
    const-string v5, "MODE_CHANGED"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, flag:Ljava/lang/String;
    const-string v5, "ENTER_PRIVATE_MODE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "QUIT_PRIVATE_MODE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1011
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->finishSecureOrPrivateModel()V

    goto :goto_0

    .line 1024
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #flag:Ljava/lang/String;
    .end local v2           #isSafeModel:Z
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1013
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #isSafeModel:Z
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_3
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 1014
    const-string v5, "reason"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1015
    .local v4, reason:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1016
    const-string v5, "homekey"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1017
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 1018
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->finishSecureOrPrivateModel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 638
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 639
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 640
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 641
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 610
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    .line 611
    const-string v0, "parent-media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 613
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 614
    const-string v0, "MediaSet is null. Path = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 617
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/AlbumDataLoader;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    .line 618
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 619
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setModel(Lcom/android/gallery3d/app/AlbumDataLoader;)V

    .line 620
    return-void
.end method

.method private initializeViews()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 567
    new-instance v1, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, v4}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 568
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 569
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/android/gallery3d/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumPage;

    move-result-object v0

    .line 570
    .local v0, config:Lcom/android/gallery3d/app/Config$AlbumPage;
    new-instance v1, Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 572
    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget v5, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->placeholderColor:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SelectionManager;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    .line 577
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 578
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 579
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$4;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 600
    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 601
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$5;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$5;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 607
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 317
    return-void
.end method

.method private onGetContent(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 394
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 395
    .local v1, dm:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 396
    .local v0, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v5, "crop"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 398
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v3

    .line 399
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 402
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v5, "output"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 403
    const-string v4, "return-data"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 406
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 414
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 408
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 411
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 412
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onSingleTapUp(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 333
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 335
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 338
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 339
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    .line 340
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private onUpPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 297
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 300
    .local v1, isVideo:Z
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraApp:Z

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, v1}, Lcom/android/gallery3d/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;Z)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 304
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-ne v2, v4, :cond_3

    if-nez v1, :cond_4

    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSwitchState:Z

    if-nez v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mGps:Z

    if-eqz v2, :cond_5

    .line 306
    :cond_4
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 307
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 309
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "media-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private pickPhoto(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(IZ)V

    .line 347
    return-void
.end method

.method private pickPhoto(IZ)V
    .locals 7
    .parameter "slotIndex"
    .parameter "startInFilmstrip"

    .prologue
    const/4 v6, 0x1

    .line 350
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v3, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    if-nez p2, :cond_2

    .line 354
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 357
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 358
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 359
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v3, :cond_3

    .line 360
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumPage;->onGetContent(Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 361
    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSecureAlbum:Z

    if-nez v3, :cond_4

    .line 362
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    .line 363
    .local v2, transitions:Lcom/android/gallery3d/app/TransitionStore;
    const-string v3, "albumpage-transition"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    const-string v3, "index-hint"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->onBackPressed()V

    goto :goto_0

    .line 371
    .end local v2           #transitions:Lcom/android/gallery3d/app/TransitionStore;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 372
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "index-hint"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    const-string v3, "open-animation-rect"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v4, p1, v5}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(ILcom/android/gallery3d/ui/GLView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 375
    const-string v3, "media-set-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v3, "media-item-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v3, "albumpage-transition"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    const-string v3, "start-in-filmstrip"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    const-string v3, "in_camera_roll"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    if-eqz p2, :cond_5

    .line 385
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v3, p0, v4, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 387
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/PhotoPage;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private prepareAnimationBackToFilmstrip(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 684
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 686
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 687
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    .line 688
    .local v1, transitions:Lcom/android/gallery3d/app/TransitionStore;
    const-string v2, "index-hint"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 689
    const-string v2, "open-animation-rect"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(ILcom/android/gallery3d/ui/GLView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private registerPrivateModelReceiver()V
    .locals 3

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1063
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1064
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1065
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1066
    const-string v1, "com.yulong.android.privatemode.PRIVATE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1067
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1068
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1070
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadTaskBit"

    .prologue
    .line 894
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 895
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 624
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 626
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$6;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 634
    return-void
.end method

.method private showSyncErrorIfNecessary(Z)V
    .locals 3
    .parameter "loadingFailed"

    .prologue
    .line 886
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncResult:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0e00b3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 891
    :cond_1
    return-void
.end method

.method private switchToFilmstrip()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 694
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 702
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v0

    .line 696
    .local v0, targetPhoto:I
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->prepareAnimationBackToFilmstrip(I)V

    .line 697
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v1, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->onBackPressed()V

    goto :goto_0

    .line 700
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(IZ)V

    goto :goto_0
.end method

.method private unregisterPrivateModelReceiver()V
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1076
    :cond_0
    return-void
.end method


# virtual methods
.method public doCluster(I)V
    .locals 8
    .parameter "clusterType"

    .prologue
    .line 427
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, basePath:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, newPath:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 430
    .local v2, data:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 432
    .local v3, isVideo:Z
    const-string v5, "media-path"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-boolean v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    if-eqz v5, :cond_0

    .line 434
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 435
    .local v1, context:Landroid/content/Context;
    const-string v5, "set-title"

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v5, "set-subtitle"

    invoke-static {v1, p1, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getClusterByTypeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v5

    const-class v6, Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 443
    return-void
.end method

.method public exitSecureModel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1113
    const-string v3, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v4, "isVerifyCheck"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1115
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, isSafeModel:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1119
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1120
    :cond_0
    if-eqz v0, :cond_1

    .line 1121
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->finishSecureOrPrivateModel()V

    .line 1124
    .end local v0           #isSafeModel:Z
    :cond_1
    return-void
.end method

.method public getAlbumPath()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1079
    const-string v7, ""

    .line 1080
    .local v7, filePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1081
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1082
    .local v1, targetUri:Landroid/net/Uri;
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSecureAlbum:Z

    if-eqz v2, :cond_0

    const-string v2, "secure"

    invoke-static {v2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1083
    :cond_0
    const-string v3, "bucket_id = ?"

    .line 1084
    .local v3, whereClause:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1086
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1090
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1091
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1096
    :cond_1
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 1098
    :goto_0
    return-object v7

    .line 1093
    :catch_0
    move-exception v2

    .line 1096
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 170
    const v0, 0x7f0b0006

    return v0
.end method

.method public getRunningTasks(Ljava/lang/String;)Z
    .locals 5
    .parameter "application"

    .prologue
    .line 1102
    const/4 v1, 0x0

    .line 1103
    .local v1, launcher:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1106
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1107
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

    .line 1109
    return v1
.end method

.method public onAlbumModeSelected(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 961
    if-nez p1, :cond_0

    .line 962
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->switchToFilmstrip()V

    .line 964
    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 3

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    .line 294
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 281
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string v1, "albumpage-transition"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/TransitionStore;->putIfNotPresent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraApp:Z

    if-eqz v0, :cond_3

    .line 289
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 291
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onUpPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 968
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 969
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    .line 970
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-le v2, v3, :cond_2

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v5, :cond_0

    move v4, v3

    :cond_0
    or-int v1, v2, v4

    .line 972
    .local v1, enableHomeButton:Z
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    .line 975
    .local v0, actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 976
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mGps:Z

    if-nez v2, :cond_1

    .line 977
    invoke-virtual {v0, v3, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 979
    :cond_1
    return-void

    .end local v0           #actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    .end local v1           #enableHomeButton:Z
    :cond_2
    move v2, v4

    .line 970
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v3, 0x0

    .line 447
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 448
    const v1, 0x3e99999a

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    .line 449
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->initializeViews()V

    .line 450
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->initializeData(Landroid/os/Bundle;)V

    .line 451
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    .line 452
    const-string v1, "cluster-menu"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    .line 453
    const-string v1, "gps_pic"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGps:Z

    .line 454
    const-string v1, "switchState"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSwitchState:Z

    .line 455
    const-string v1, "favorite"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFavorite:Z

    .line 456
    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    .line 457
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 458
    .local v0, context:Landroid/content/Context;
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mVibrator:Landroid/os/Vibrator;

    .line 459
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/local/image/secure/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSecureAlbum:Z

    .line 461
    const-string v1, "auto-select-all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->registerPrivateModelReceiver()V

    .line 465
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    .line 467
    const-string v1, "app-bridge"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraApp:Z

    .line 469
    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$3;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumPage$3;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    .line 486
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const v9, 0x7f100158

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 645
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    .line 646
    .local v0, actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getSupportMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 647
    .local v2, inflator:Landroid/view/MenuInflater;
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 649
    .local v3, isVideo:Z
    iget-boolean v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v5, :cond_0

    .line 650
    const v5, 0x7f12000c

    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 651
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v7, "type-bits"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 653
    .local v4, typeBits:I
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 679
    .end local v4           #typeBits:I
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 680
    return v6

    .line 655
    :cond_0
    const/high16 v5, 0x7f12

    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 656
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v8, "copy-picture"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v8, "move-picture"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    move v1, v6

    .line 660
    .local v1, bMvOrCp:Z
    :goto_1
    if-eqz v1, :cond_5

    .line 661
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 662
    const v5, 0x7f100157

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 663
    const v5, 0x7f100159

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 668
    :goto_2
    iget-boolean v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mFavorite:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mEmptyAlbum:Z

    if-eqz v5, :cond_2

    .line 669
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 672
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v0, v5, v6}, Lcom/android/gallery3d/app/FilterUtils;->setupMenuItems(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/data/Path;Z)V

    .line 674
    const v5, 0x7f100156

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v8}, Lcom/android/gallery3d/util/MediaSetUtils;->isCameraSource(Lcom/android/gallery3d/data/Path;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v7, v6

    :cond_3
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v1           #bMvOrCp:Z
    :cond_4
    move v1, v7

    .line 658
    goto :goto_1

    .line 665
    .restart local v1       #bMvOrCp:Z
    :cond_5
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/MtpDevice;

    if-nez v5, :cond_6

    move v5, v6

    :goto_3
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_6
    move v5, v7

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 557
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 558
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->destroy()V

    .line 563
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->unregisterPrivateModelReceiver()V

    .line 564
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/high16 v12, 0x1400

    const v11, 0x10a0002

    const v10, 0x10a0001

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 706
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 708
    .local v4, isVideo:Z
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "video"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 709
    const/4 v4, 0x1

    .line 711
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    move v6, v7

    .line 797
    :goto_0
    return v6

    .line 713
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onUpPressed()V

    goto :goto_0

    .line 717
    :sswitch_1
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 728
    :sswitch_2
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "slideshow"

    const-string v9, "click"

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 729
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v2, data:Landroid/os/Bundle;
    const-string v7, "media-set-path"

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v7, "repeat"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 733
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    const-class v8, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v7, v8, v6, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 738
    .end local v2           #data:Landroid/os/Bundle;
    :sswitch_3
    iget-boolean v7, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v7, :cond_1

    .line 739
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    goto :goto_0

    .line 741
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->showDetails()V

    goto :goto_0

    .line 748
    :sswitch_4
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "move"

    const-string v9, "click"

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 749
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 750
    .local v5, moveIntent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MOVE_PICTURE"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string v7, "move-picture"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 752
    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 754
    const-string v7, "image/*"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-string v7, "pic-path-list"

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedPathList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 756
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 757
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v11, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 759
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "copy-picture"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "move-picture"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 764
    .end local v5           #moveIntent:Landroid/content/Intent;
    :sswitch_5
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "copy"

    const-string v9, "click"

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 765
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 766
    .local v1, copyIntent:Landroid/content/Intent;
    const-string v7, "android.intent.action.CROP_PICTURE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    const-string v7, "copy-picture"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 768
    const-string v7, "image/*"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const-string v7, "pic-path-list"

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedPathList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 770
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 772
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 773
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v11, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 778
    .end local v1           #copyIntent:Landroid/content/Intent;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getAlbumPath()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, album:Ljava/lang/String;
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 780
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 781
    .local v3, data1:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/StateManager;->cleanAllMoveCopyBit()V

    .line 782
    new-instance v7, Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v8, v3, v0}, Lcom/android/gallery3d/ui/MoveCopyExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/gallery3d/app/AlbumPage;->mMoveCopyExecutor:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    .line 783
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage;->mMoveCopyExecutor:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->startMvOrCopyTask()V

    goto/16 :goto_0

    .line 787
    .end local v0           #album:Ljava/lang/String;
    .end local v3           #data1:Landroid/os/Bundle;
    :sswitch_7
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/StateManager;->cleanAllMoveCopyBit()V

    .line 788
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->onBackPressed()V

    goto/16 :goto_0

    .line 792
    :sswitch_8
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "camera"

    const-string v9, "click"

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 793
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7, v4}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 711
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100156 -> :sswitch_8
        0x7f100157 -> :sswitch_6
        0x7f100158 -> :sswitch_2
        0x7f100159 -> :sswitch_7
        0x7f10018a -> :sswitch_3
        0x7f10018c -> :sswitch_4
        0x7f10018d -> :sswitch_5
        0x7f100192 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 417
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 419
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 420
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 421
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 422
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 528
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 529
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 530
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->dismissClusterDialog()V

    .line 531
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 536
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->pause()V

    .line 537
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->pause()V

    .line 538
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMoveCopyExecutor:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMoveCopyExecutor:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->pause()V

    .line 539
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 541
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    .line 542
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v1, :cond_3

    .line 543
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    .line 545
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_4

    .line 546
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 547
    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 548
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    .line 550
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 551
    const-string v1, "com.yulong.android.launcher3"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/AlbumPage;->getRunningTasks(Ljava/lang/String;)Z

    move-result v0

    .line 552
    .local v0, has_launcher:Z
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->exitSecureModel()V

    .line 553
    :cond_5
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 490
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 491
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 493
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    const-string v5, "resume_animation"

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 494
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 496
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setPositionProvider(Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 497
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2}, Lcom/android/gallery3d/anim/Animation;->start()V

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/ActivityState;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 502
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-le v2, v3, :cond_3

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v5, :cond_4

    move v5, v3

    :goto_1
    or-int v1, v2, v5

    .line 504
    .local v1, enableHomeButton:Z
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    .line 507
    .local v0, actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 508
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mGps:Z

    if-nez v2, :cond_1

    .line 509
    invoke-virtual {v0, v3, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 513
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 514
    iput-boolean v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    .line 515
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumDataLoader;->resume()V

    .line 517
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->resume()V

    .line 518
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 519
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->resume()V

    .line 520
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    if-nez v2, :cond_2

    .line 521
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 522
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 524
    :cond_2
    return-void

    .end local v0           #actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    .end local v1           #enableHomeButton:Z
    :cond_3
    move v2, v4

    .line 502
    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 6
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 850
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 851
    .local v0, count:I
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110001

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, format:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 854
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V

    .line 855
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 829
    packed-switch p1, :pswitch_data_0

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 831
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()V

    .line 832
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mHapticsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 836
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 837
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 841
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 842
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 803
    packed-switch p1, :pswitch_data_0

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 806
    :pswitch_0
    if-eqz p3, :cond_0

    .line 807
    const-string v0, "photo-index"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 808
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    goto :goto_0

    .line 812
    :pswitch_1
    if-eqz p3, :cond_0

    .line 813
    const-string v0, "return-index-hint"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 814
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    goto :goto_0

    .line 818
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 3
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    .line 859
    const-string v0, "AlbumPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$7;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/AlbumPage$7;-><init>(Lcom/android/gallery3d/app/AlbumPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 878
    return-void
.end method
