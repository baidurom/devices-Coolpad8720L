.class public Lcom/android/gallery3d/app/AlbumSetPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;
    }
.end annotation


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private intoSecureBox:Z

.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

.field private mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

.field private mCameraButton:Landroid/widget/Button;

.field private mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

.field private mCopyOrMove:Z

.field private mCopyPic:Z

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

.field mEmptyAlbumToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mEyePosition:Lcom/android/gallery3d/app/EyePosition;

.field private mGetAlbum:Z

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mIsHomeAlbums:Z

.field private mIsMoreAlbums:Z

.field private mIsSecureAlbums:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMoveCopyExecutor:Lcom/android/gallery3d/ui/MoveCopyExecutor;

.field private mMovePic:Z

.field private mNewAlbumDlg:Landroid/app/Dialog;

.field private mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

.field mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSelectedAction:I

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mShowedEmptyToastForSelf:Z

.field private mSlotIndex:I

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mSubtitle:Ljava/lang/String;

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

.field private mTitle:Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;

.field private mX:F

.field private mY:F

.field private mZ:F

.field private picList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 143
    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 146
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    .line 152
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsMoreAlbums:Z

    .line 160
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsHomeAlbums:Z

    .line 161
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsSecureAlbums:Z

    .line 198
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 206
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 311
    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 1361
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$12;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$12;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->pickAlbum(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/AlbumSetPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/app/AlbumSetPage;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->dismissNewAlbumDlg()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/Config$AlbumSetPage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/yulong/android/view/dialog/LoginDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/AlbumSetPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotIndex:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->intoSecureBox:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->finishSecureModel()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->updataPrivateModel()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsHomeAlbums:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    return v0
.end method

.method private static albumShouldOpenInFilmstrip(Lcom/android/gallery3d/data/MediaSet;)Z
    .locals 5
    .parameter "album"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 305
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 306
    .local v0, itemCount:I
    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v3, v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 308
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    return v2

    .line 306
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_1
    move v2, v3

    .line 308
    goto :goto_1
.end method

.method private cleanupCameraButton()V
    .locals 3

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v1, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f1000a4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 640
    .local v0, galleryRoot:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 641
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 642
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    goto :goto_0
.end method

.method private clearLoadingBit(I)V
    .locals 6
    .parameter "loadingBit"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 656
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 657
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-eqz v1, :cond_3

    .line 658
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 663
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v2, "media-path"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/local/image/secure"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 666
    .local v0, result:Landroid/content/Intent;
    const-string v1, "empty-album"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/app/ActivityState;->setStateResult(ILandroid/content/Intent;)V

    .line 668
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f100133

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSecureGuidView:Landroid/view/View;

    .line 669
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCopyOrMove:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSecureGuidView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 692
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 672
    .restart local v0       #result:Landroid/content/Intent;
    const-string v1, "empty-album"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/app/ActivityState;->setStateResult(ILandroid/content/Intent;)V

    .line 674
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 676
    .end local v0           #result:Landroid/content/Intent;
    :cond_2
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 677
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumSetPage;->showEmptyAlbumToast(I)V

    .line 678
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 679
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showCameraButton()V

    goto :goto_0

    .line 687
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    if-eqz v1, :cond_0

    .line 688
    iput-boolean v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 689
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideEmptyAlbumToast()V

    .line 690
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideCameraButton()V

    goto :goto_0
.end method

.method private dismissNewAlbumDlg()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNewAlbumDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNewAlbumDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1047
    :cond_0
    return-void
.end method

.method private finishSecureModel()V
    .locals 2

    .prologue
    .line 1418
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getActivityState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1419
    .local v0, activityState:Lcom/android/gallery3d/app/ActivityState;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1421
    instance-of v1, v0, Lcom/android/gallery3d/app/SlideshowPage;

    if-eqz v1, :cond_0

    .line 1422
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1423
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getActivityState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1426
    :cond_0
    instance-of v1, v0, Lcom/android/gallery3d/app/PhotoPage;

    if-eqz v1, :cond_1

    .line 1427
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1428
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getActivityState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1431
    :cond_1
    instance-of v1, v0, Lcom/android/gallery3d/app/AlbumPage;

    if-eqz v1, :cond_2

    .line 1432
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1433
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getActivityState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1436
    :cond_2
    instance-of v1, v0, Lcom/android/gallery3d/app/AlbumSetPage;

    if-eqz v1, :cond_3

    .line 1437
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 1440
    :cond_3
    return-void
.end method

.method private getActivityState()Lcom/android/gallery3d/app/ActivityState;
    .locals 3

    .prologue
    .line 1443
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStack()Ljava/util/Stack;

    move-result-object v1

    .line 1444
    .local v1, stateStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/gallery3d/app/StateManager$StateEntry;>;"
    const/4 v0, 0x0

    .line 1445
    .local v0, activityState:Lcom/android/gallery3d/app/ActivityState;
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1446
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1448
    :cond_0
    return-object v0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1137
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    .line 1138
    .local v1, count:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/GalleryActionBar;->getClusterTypeAction()I

    move-result v0

    .line 1139
    .local v0, action:I
    if-ne v0, v5, :cond_0

    const v3, 0x7f110002

    .line 1142
    .local v3, string:I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, format:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1139
    .end local v2           #format:Ljava/lang/String;
    .end local v3           #string:I
    :cond_0
    const v3, 0x7f110003

    goto :goto_0
.end method

.method private getSlotCenter(I[I)V
    .locals 8
    .parameter "slotIndex"
    .parameter "center"

    .prologue
    .line 261
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 262
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, v5, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 263
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 264
    .local v1, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v2

    .line 265
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v3

    .line 266
    .local v3, scrollY:I
    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    aput v5, p2, v4

    .line 267
    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    .line 268
    return-void
.end method

.method private hideCameraButton()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 1178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 1179
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 1180
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 1181
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 1182
    return-void
.end method

.method private hideEmptyAlbumToast()V
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 330
    .local v0, toast:Landroid/widget/Toast;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 332
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method private initializeAlbumSetType(Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 760
    if-eqz p1, :cond_1

    .line 761
    const-string v2, "media-path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, mediaPath:Ljava/lang/String;
    const-string v2, "cluster-gps"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 763
    .local v0, isClusterOrGps:Z
    const-string v2, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 764
    if-eqz v1, :cond_0

    .line 765
    const-string v2, "/local/image/more"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsMoreAlbums:Z

    .line 767
    :cond_0
    const-string v2, "/local/image/secure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsSecureAlbums:Z

    .line 769
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsMoreAlbums:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsSecureAlbums:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsHomeAlbums:Z

    .line 770
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsHomeAlbums:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsHomeAlbums:Z

    .line 772
    .end local v0           #isClusterOrGps:Z
    .end local v1           #mediaPath:Ljava/lang/String;
    :cond_1
    return-void

    .restart local v0       #isClusterOrGps:Z
    .restart local v1       #mediaPath:Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 769
    goto :goto_0
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 776
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, mediaPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 778
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 779
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 781
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 782
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    .line 783
    return-void
.end method

.method private initializeViews()V
    .locals 6

    .prologue
    .line 786
    new-instance v0, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 787
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 789
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/android/gallery3d/app/Config$AlbumSetPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumSetPage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    .line 790
    new-instance v0, Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsHomeAlbums:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 791
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    iget v5, v5, Lcom/android/gallery3d/app/Config$AlbumSetPage;->placeholderColor:I

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    .line 794
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 795
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSelectionManager(Lcom/android/gallery3d/ui/SelectionManager;)V

    .line 796
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$4;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 818
    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 819
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$5;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 825
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 826
    return-void
.end method

.method private mvOrCpToNewFolder()V
    .locals 10

    .prologue
    .line 1051
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1052
    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsMoreAlbums:Z

    if-eqz v6, :cond_1

    .line 1053
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/coolpad/gallery"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1065
    .local v4, temp:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNewAlbumDlg:Landroid/app/Dialog;

    if-nez v6, :cond_0

    .line 1066
    new-instance v6, Landroid/app/Dialog;

    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f003f

    invoke-direct {v6, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNewAlbumDlg:Landroid/app/Dialog;

    .line 1067
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNewAlbumDlg:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1068
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040037

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1069
    .local v1, custom:Landroid/view/View;
    const v6, 0x7f1000af

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1070
    .local v5, text:Landroid/widget/EditText;
    const v6, 0x7f1000b1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1071
    .local v3, okBtn:Landroid/widget/Button;
    const v6, 0x7f1000b0

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1072
    .local v0, cancelBtn:Landroid/widget/Button;
    const v6, 0x7f0e003e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1073
    invoke-virtual {v5}, Landroid/widget/EditText;->selectAll()V

    .line 1075
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/gallery3d/app/AlbumSetPage$6;

    invoke-direct {v7, p0, v5}, Lcom/android/gallery3d/app/AlbumSetPage$6;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Landroid/widget/EditText;)V

    const-wide/16 v8, 0x118

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1086
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNewAlbumDlg:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1087
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mNewAlbumDlg:Landroid/app/Dialog;

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1090
    new-instance v6, Lcom/android/gallery3d/app/AlbumSetPage$7;

    invoke-direct {v6, p0}, Lcom/android/gallery3d/app/AlbumSetPage$7;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    new-instance v6, Lcom/android/gallery3d/app/AlbumSetPage$8;

    invoke-direct {v6, p0, v5, v4}, Lcom/android/gallery3d/app/AlbumSetPage$8;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1122
    return-void

    .line 1055
    .end local v0           #cancelBtn:Landroid/widget/Button;
    .end local v1           #custom:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #okBtn:Landroid/widget/Button;
    .end local v4           #temp:Ljava/lang/String;
    .end local v5           #text:Landroid/widget/EditText;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/galleryAlbum"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #temp:Ljava/lang/String;
    goto/16 :goto_0

    .line 1058
    .end local v4           #temp:Ljava/lang/String;
    :cond_2
    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsMoreAlbums:Z

    if-eqz v6, :cond_3

    .line 1059
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/coolpad/gallery"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #temp:Ljava/lang/String;
    goto/16 :goto_0

    .line 1061
    .end local v4           #temp:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/galleryAlbum"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #temp:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 470
    return-void
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private pickAlbum(I)V
    .locals 14
    .parameter "slotIndex"

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 335
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v10, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v10, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    .line 338
    .local v7, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v7, :cond_0

    .line 340
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, mediaPath:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/gallery3d/app/AlbumSetPage;->pickOtherAlbumSet(Lcom/android/gallery3d/data/MediaSet;)Z

    move-result v4

    .line 342
    .local v4, isReturn:Z
    if-nez v4, :cond_0

    .line 345
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCopyPic:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMovePic:Z

    if-eqz v10, :cond_3

    .line 346
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 350
    .local v2, data:Landroid/os/Bundle;
    :goto_1
    new-array v1, v13, [I

    .line 351
    .local v1, center:[I
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->getSlotCenter(I[I)V

    .line 352
    const-string v10, "set-center"

    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 353
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v10, :cond_4

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 355
    .local v0, activity:Landroid/app/Activity;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "album-path"

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 357
    .local v6, result:Landroid/content/Intent;
    const/4 v8, -0x1

    invoke-virtual {v0, v8, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 358
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 348
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #center:[I
    .end local v2           #data:Landroid/os/Bundle;
    .end local v6           #result:Landroid/content/Intent;
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .restart local v2       #data:Landroid/os/Bundle;
    goto :goto_1

    .line 359
    .restart local v1       #center:[I
    :cond_4
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v10

    if-lez v10, :cond_5

    .line 360
    const-string v8, "media-path"

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v8

    const-class v10, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v8, v10, v9, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 364
    :cond_5
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v10, :cond_8

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v10

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_8

    .line 366
    const-string v10, "auto-select-all"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    :cond_6
    const-string v10, "media-path"

    invoke-virtual {v2, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v10

    const-class v11, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    .line 385
    .local v3, inAlbum:Z
    const-string v10, "cluster-menu"

    if-nez v3, :cond_7

    move v8, v9

    :cond_7
    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v8

    const-class v10, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v8, v10, v9, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 367
    .end local v3           #inAlbum:Z
    :cond_8
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v10, :cond_6

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetPage;->albumShouldOpenInFilmstrip(Lcom/android/gallery3d/data/MediaSet;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCopyPic:Z

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMovePic:Z

    if-nez v10, :cond_6

    .line 368
    const-string v10, "open-animation-rect"

    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v12, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v11, p1, v12}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(ILcom/android/gallery3d/ui/GLView;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 370
    const-string v10, "index-hint"

    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 371
    const-string v8, "media-set-path"

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v8, "start-in-filmstrip"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    const-string v8, "in_camera_roll"

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v8

    const-class v9, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v8, v9, v13, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private registerPrivateModelReceiver()V
    .locals 3

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1453
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1454
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1455
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1456
    const-string v1, "com.yulong.android.privatemode.PRIVATE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1457
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1458
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1460
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadingBit"

    .prologue
    .line 695
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 696
    return-void
.end method

.method private setupCameraButton()Z
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 611
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v2

    .line 612
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f1000a4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 614
    .local v0, galleryRoot:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 616
    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    .line 617
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const v4, 0x7f0e014e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 618
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const v4, 0x7f020108

    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 619
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/gallery3d/app/AlbumSetPage$3;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/AlbumSetPage$3;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 631
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 632
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showCameraButton()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->setupCameraButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 1185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 1186
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 1188
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$9;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 1196
    return-void
.end method

.method private showEmptyAlbumToast(I)V
    .locals 3
    .parameter "toastLength"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 317
    .local v0, toast:Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 325
    :goto_0
    return-void

    .line 322
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0e00bb

    invoke-static {v1, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 323
    .restart local v0       #toast:Landroid/widget/Toast;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 324
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private unregisterPrivateModelReceiver()V
    .locals 2

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPrivateModelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1466
    :cond_0
    return-void
.end method

.method private updataPrivateModel()V
    .locals 6

    .prologue
    .line 1403
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1404
    .local v0, activityState:Lcom/android/gallery3d/app/ActivityState;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 1405
    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v5, "media-path"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1406
    .local v2, mediaPath:Ljava/lang/String;
    const-string v3, "/local/image/secure"

    .line 1407
    .local v3, securePath:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1408
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 1410
    .local v1, localAlbumSet:Lcom/android/gallery3d/data/MediaObject;
    check-cast v1, Lcom/android/gallery3d/data/LocalAlbumSet;

    .end local v1           #localAlbumSet:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/LocalAlbumSet;->reloadPrivateModel()V

    .line 1413
    .end local v2           #mediaPath:Ljava/lang/String;
    .end local v3           #securePath:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;)V

    .line 1414
    return-void
.end method


# virtual methods
.method public checkCoolPassword()V
    .locals 2

    .prologue
    .line 1308
    new-instance v0, Lcom/yulong/android/view/dialog/LoginDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    .line 1309
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    const v1, 0x7f0e013b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 1310
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->show()V

    .line 1311
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$11;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$11;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;->setLoginListener(Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;)V

    .line 1359
    return-void
.end method

.method public doCluster(I)V
    .locals 10
    .parameter "clusterType"

    .prologue
    const/4 v9, 0x1

    .line 493
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 494
    .local v1, data:Landroid/os/Bundle;
    const/4 v3, 0x1

    .line 495
    .local v3, isClusterOrGps:Z
    if-ne p1, v9, :cond_0

    .line 496
    const/4 v3, 0x0

    .line 498
    :cond_0
    const/4 v6, 0x5

    if-ne p1, v6, :cond_2

    .line 501
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 502
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0113

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, favoritePath:Ljava/lang/String;
    const-string v6, "media-path"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/local/image/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v6, "favorite"

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 505
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->cleanupCameraButton()V

    .line 506
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v6, v7, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 527
    .end local v2           #favoritePath:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 510
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, basePath:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    const-string v5, "{/combo/{/mtp,/local/image,/local/image/more,/picasa/image}}"

    .line 512
    .local v5, path:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    const-string v6, "/mapview/{/combo/{/mtp,/local/image,/local/image/more,/picasa/image}}/maplocation"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 513
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 515
    :cond_3
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, newPath:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 517
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    sget-object v4, Lcom/android/gallery3d/data/DataManager;->TOP_IMAGE_SET_PATH:Ljava/lang/String;

    .line 520
    :cond_4
    const-string v6, "media-path"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v6, "selected-cluster"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->intoSecureBox:Z

    if-eqz v6, :cond_5

    .line 523
    const-string v6, "secure-cluster-path"

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 525
    :cond_5
    const-string v6, "cluster-gps"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 526
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v6, p0, v7, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public doMap()V
    .locals 5

    .prologue
    .line 530
    const/4 v1, 0x1

    .line 531
    .local v1, isClusterOrGps:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    const-string v2, "/mapview/{/combo/{/mtp,/local/image,/local/image/more,/picasa/image}}/maplocation"

    .line 532
    .local v2, newPath:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 533
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "media-path"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v3, "cluster-gps"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    const-string v3, "show_on_map"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 536
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3, p0, v4, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 537
    return-void
.end method

.method public exitSecureModel()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1504
    const-string v4, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v5, "isVerifyCheck"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1507
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 1509
    const/4 v1, 0x0

    .line 1510
    .local v1, isVerifyCheck:Z
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1511
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1513
    :cond_0
    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->intoSecureBox:Z

    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1514
    .local v0, isSafeModel:Z
    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->finishSecureModel()V

    .line 1516
    .end local v0           #isSafeModel:Z
    .end local v1           #isVerifyCheck:Z
    :cond_3
    return-void
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 203
    const v0, 0x7f0b0001

    return v0
.end method

.method public getRunningTasks(Ljava/lang/String;)Z
    .locals 5
    .parameter "application"

    .prologue
    .line 1493
    const/4 v1, 0x0

    .line 1494
    .local v1, launcher:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1497
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1498
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

    .line 1500
    return v1
.end method

.method public loginSecureBox()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1268
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "coolpadSystem"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 1270
    .local v4, mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    invoke-virtual {v4}, Lcom/yulong/android/server/systeminterface/SystemManager;->isSecurityManagerPasswordExist()Z

    move-result v1

    .line 1272
    .local v1, isExist:Z
    const-string v6, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v7, "isVerifyCheck"

    new-array v8, v10, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1274
    .local v5, method:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 1275
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1277
    .local v2, isVerifyCheck:Z
    if-nez v1, :cond_1

    .line 1279
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1280
    .local v3, mIntent:Landroid/content/Intent;
    const-string v6, "com.yulong.android.seccenter"

    const-string v7, "com.yulong.android.createpassword.CreateSecurityPasswordStep1Activity"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    .end local v2           #isVerifyCheck:Z
    .end local v3           #mIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1284
    .restart local v2       #isVerifyCheck:Z
    :catch_0
    move-exception v0

    .line 1285
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1288
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    if-eqz v2, :cond_2

    .line 1290
    const-string v6, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v7, "notifySecureServer"

    new-array v8, v11, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string v6, "AlbumSetPage"

    const-string v7, "loginSecureBox notifySecureServer Vertify = 1"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotIndex:I

    invoke-virtual {v7, v11, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xb4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1301
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->checkCoolPassword()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    .line 258
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 256
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    .line 1521
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableClusterMenu(ILcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    .line 1524
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v3, 0x0

    .line 541
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 542
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeAlbumSetType(Landroid/os/Bundle;)V

    .line 543
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeViews()V

    .line 544
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 545
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 546
    .local v0, context:Landroid/content/Context;
    const-string v1, "move_copy_sucess"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCopyOrMove:Z

    .line 547
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    .line 548
    const-string v1, "move-picture"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMovePic:Z

    .line 549
    const-string v1, "copy-picture"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCopyPic:Z

    .line 550
    const-string v1, "pic-path-list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->picList:Ljava/util/ArrayList;

    .line 551
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    .line 552
    const-string v1, "set-title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    .line 553
    const-string v1, "set-subtitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSubtitle:Ljava/lang/String;

    .line 554
    new-instance v1, Lcom/android/gallery3d/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/android/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    .line 555
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    .line 556
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mVibrator:Landroid/os/Vibrator;

    .line 557
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 558
    const-string v1, "selected-cluster"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    .line 560
    const-string v1, "secure-path"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->intoSecureBox:Z

    .line 562
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->registerPrivateModelReceiver()V

    .line 563
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$2;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$2;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    .line 574
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 17
    .parameter "menu"

    .prologue
    .line 830
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 831
    .local v1, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v14

    const-class v15, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v14, v15}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v7

    .line 832
    .local v7, inAlbum:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    .line 834
    .local v9, isVideo:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/ActivityState;->getSupportMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    .line 836
    .local v8, inflater:Landroid/view/MenuInflater;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz v14, :cond_1

    .line 837
    const v14, 0x7f12000c

    move-object/from16 v0, p1

    invoke-virtual {v8, v14, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v15, "type-bits"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 840
    .local v12, typeBits:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-static {v12}, Lcom/android/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 911
    .end local v12           #typeBits:I
    :cond_0
    :goto_0
    const/4 v14, 0x1

    return v14

    .line 841
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v14, :cond_2

    .line 842
    const v14, 0x7f12000c

    move-object/from16 v0, p1

    invoke-virtual {v8, v14, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v15, 0x7f0e0089

    invoke-virtual {v14, v15}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    goto :goto_0

    .line 845
    :cond_2
    if-eqz v9, :cond_4

    .line 846
    const v14, 0x7f12000e

    move-object/from16 v0, p1

    invoke-virtual {v8, v14, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 851
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "copy-picture"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "move-picture"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_3
    const/4 v2, 0x1

    .line 853
    .local v2, bMvOrCp:Z
    :goto_2
    if-eqz v2, :cond_6

    .line 854
    const v14, 0x7f100157

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 855
    const v14, 0x7f100159

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 856
    const v14, 0x7f10015a

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 857
    const v14, 0x7f100156

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 858
    const v14, 0x7f10015b

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 859
    const v14, 0x7f10015c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 848
    .end local v2           #bMvOrCp:Z
    :cond_4
    const v14, 0x7f120001

    move-object/from16 v0, p1

    invoke-virtual {v8, v14, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 851
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 861
    .restart local v2       #bMvOrCp:Z
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    .line 862
    .local v13, wasShowingClusterMenu:Z
    if-nez v7, :cond_a

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    .line 863
    if-nez v7, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v14}, Lcom/android/gallery3d/app/GalleryActionBar;->getClusterTypeAction()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    const/4 v11, 0x1

    .line 870
    .local v11, selectAlbums:Z
    :goto_4
    const v14, 0x7f100156

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 871
    .local v3, cameraItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v14

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 872
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->intoSecureBox:Z

    if-eqz v14, :cond_7

    .line 873
    const v14, 0x7f10015a

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 875
    .local v4, gpsItem:Landroid/view/MenuItem;
    const/4 v14, 0x0

    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 878
    const v14, 0x7f10015b

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 880
    .local v10, newAlbumItem:Landroid/view/MenuItem;
    const/4 v14, 0x0

    invoke-interface {v10, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 882
    const/4 v14, 0x0

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 888
    .end local v4           #gpsItem:Landroid/view/MenuItem;
    .end local v10           #newAlbumItem:Landroid/view/MenuItem;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/gallery3d/app/FilterUtils;->setupMenuItems(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/data/Path;Z)V

    .line 890
    const v14, 0x7f0e0107

    invoke-static {v1, v14}, Lcom/android/gallery3d/util/HelpUtils;->getHelpIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v5

    .line 892
    .local v5, helpIntent:Landroid/content/Intent;
    const v14, 0x7f10015d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 893
    .local v6, helpItem:Landroid/view/MenuItem;
    if-eqz v5, :cond_c

    const/4 v14, 0x1

    :goto_5
    invoke-interface {v6, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 894
    if-eqz v5, :cond_8

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 896
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 898
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eq v14, v13, :cond_9

    .line 899
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eqz v14, :cond_d

    .line 900
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    move-object/from16 v0, p0

    invoke-virtual {v14, v15, v0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableClusterMenu(ILcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    .line 905
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->intoSecureBox:Z

    if-eqz v14, :cond_0

    .line 906
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    goto/16 :goto_0

    .line 862
    .end local v3           #cameraItem:Landroid/view/MenuItem;
    .end local v5           #helpIntent:Landroid/content/Intent;
    .end local v6           #helpItem:Landroid/view/MenuItem;
    .end local v11           #selectAlbums:Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 863
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 893
    .restart local v3       #cameraItem:Landroid/view/MenuItem;
    .restart local v5       #helpIntent:Landroid/content/Intent;
    .restart local v6       #helpItem:Landroid/view/MenuItem;
    .restart local v11       #selectAlbums:Z
    :cond_c
    const/4 v14, 0x0

    goto :goto_5

    .line 902
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    goto :goto_6
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    .line 579
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->destroy()V

    .line 581
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->cleanupCameraButton()V

    .line 582
    const/4 v1, 0x0

    .line 584
    .local v1, isVerifyCheck:Z
    :try_start_0
    const-string v3, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v4, "isVerifyCheck"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 586
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 587
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 588
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->intoSecureBox:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    .line 589
    :cond_0
    const-string v3, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v4, "notifySecureServer"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v3, "AlbumSetPage"

    const-string v4, "onDestroy() notifySecureServer LONGIN_OFF = 0"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->unregisterPrivateModelReceiver()V

    .line 602
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v3}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 604
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    if-eqz v3, :cond_3

    .line 605
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->destroy()V

    .line 606
    :cond_3
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 608
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "AlbumSetPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDestroy when "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "happened the intoSecureBox = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->intoSecureBox:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and isVerifyCheck = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->unregisterPrivateModelReceiver()V

    .line 602
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 603
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v3}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 604
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    if-eqz v3, :cond_5

    .line 605
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->destroy()V

    .line 606
    :cond_5
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    goto :goto_0

    .line 601
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->unregisterPrivateModelReceiver()V

    .line 602
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 603
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v4}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 604
    :cond_6
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    if-eqz v4, :cond_7

    .line 605
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/ActionModeHandler;->destroy()V

    .line 606
    :cond_7
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    throw v3
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->lockRendering()V

    .line 242
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    .line 243
    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    .line 244
    iput p3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->unlockRendering()V

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 247
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 916
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 917
    .local v0, activity:Landroid/app/Activity;
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 919
    .local v3, isVideo:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    move v6, v7

    .line 1034
    :goto_0
    return v6

    .line 921
    :sswitch_0
    invoke-virtual {v0, v7}, Landroid/app/Activity;->setResult(I)V

    .line 922
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 929
    :sswitch_1
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 930
    iget-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v7, :cond_0

    .line 931
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    goto :goto_0

    .line 933
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showDetails()V

    goto :goto_0

    .line 936
    :cond_1
    const v8, 0x7f0e00ba

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 942
    :sswitch_2
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "camera"

    const-string v9, "click"

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 943
    invoke-static {v0, v3}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;Z)V

    goto :goto_0

    .line 965
    :sswitch_3
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;)V

    .line 966
    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->requestSync(Landroid/content/Context;)V

    goto :goto_0

    .line 974
    :sswitch_4
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "gps"

    const-string v9, "click"

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 975
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->doMap()V

    goto :goto_0

    .line 979
    :sswitch_5
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "newalbum"

    const-string v9, "click"

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 981
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->mvOrCpToNewFolder()V

    goto :goto_0

    .line 987
    :sswitch_6
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "move"

    const-string v9, "click"

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 988
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 989
    .local v4, moveIntent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MOVE_PICTURE"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    const-string v7, "move-picture"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 991
    const/high16 v7, 0x1400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 993
    const-string v7, "image/*"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    const-string v7, "pic-path-list"

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedPathList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 995
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 996
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x10a0002

    const v9, 0x10a0001

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 998
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "copy-picture"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 999
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "move-picture"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1005
    .end local v4           #moveIntent:Landroid/content/Intent;
    :sswitch_7
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1006
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/galleryAlbum"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, album:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsMoreAlbums:Z

    if-eqz v7, :cond_2

    .line 1009
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/coolpad/gallery"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1011
    :cond_2
    iget-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->intoSecureBox:Z

    if-eqz v7, :cond_3

    const-string v1, "/data/yulong_secure"

    .line 1012
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1013
    .local v2, data1:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "copy-picture"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "move-picture"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "secure-path"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "move_copy_sucess"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1017
    new-instance v7, Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v8, v2, v1}, Lcom/android/gallery3d/ui/MoveCopyExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMoveCopyExecutor:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    .line 1018
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMoveCopyExecutor:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->startMvOrCopyTask()V

    goto/16 :goto_0

    .line 1007
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #data1:Landroid/os/Bundle;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "paste picture fail due to album is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1022
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "copy-picture"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "move-picture"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "pic-path-list"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1025
    iget-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsMoreAlbums:Z

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "media-path"

    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v5

    .line 1030
    .local v5, state:Lcom/android/gallery3d/app/ActivityState;
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    const-class v8, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1027
    .end local v5           #state:Lcom/android/gallery3d/app/ActivityState;
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "media-path"

    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 919
    :sswitch_data_0
    .sparse-switch
        0x7f100156 -> :sswitch_2
        0x7f100157 -> :sswitch_7
        0x7f100159 -> :sswitch_8
        0x7f10015a -> :sswitch_4
        0x7f10015b -> :sswitch_5
        0x7f10015c -> :sswitch_3
        0x7f10018a -> :sswitch_1
        0x7f10018c -> :sswitch_6
        0x7f100192 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    const/4 v2, 0x1

    .line 482
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 484
    .local v0, set:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 487
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 488
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 700
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 701
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 702
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 703
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->pause()V

    .line 704
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->orderAlbumSets()V

    .line 705
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->pause()V

    .line 706
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/EyePosition;->pause()V

    .line 707
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMoveCopyExecutor:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMoveCopyExecutor:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->pause()V

    .line 708
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 710
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    .line 711
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 712
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 714
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSecureGuidView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 715
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mSecureGuidView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 720
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    .line 721
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_4

    .line 722
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 723
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 724
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    .line 726
    :cond_4
    const-string v1, "com.yulong.android.launcher3"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->getRunningTasks(Ljava/lang/String;)Z

    move-result v0

    .line 727
    .local v0, has_launcher:Z
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->exitSecureModel()V

    .line 729
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->dismissNewAlbumDlg()V

    .line 730
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 734
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 735
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 736
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/ActivityState;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 738
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 739
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->resume()V

    .line 740
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    .line 741
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->resume()V

    .line 742
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->resume()V

    .line 743
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableClusterMenu(ILcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSecureGuidView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSecureGuidView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 749
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    if-nez v0, :cond_2

    .line 750
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 753
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "copy-picture"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCopyPic:Z

    .line 754
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "move-picture"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMovePic:Z

    .line 756
    return-void
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 1174
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V

    .line 1175
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 1148
    packed-switch p1, :pswitch_data_0

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1150
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    .line 1151
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()V

    .line 1152
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mHapticsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 1156
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 1157
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->intoSecureBox:Z

    if-nez v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableClusterMenu(ILcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1164
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1165
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 8
    .parameter "slotIndex"

    .prologue
    const-wide/16 v6, 0xb4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 271
    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v4, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotIndex:I

    .line 273
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 274
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    .line 275
    .local v1, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v1, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 277
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 278
    .end local v1           #targetSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    .line 281
    .restart local v1       #targetSet:Lcom/android/gallery3d/data/MediaSet;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 282
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    .line 283
    if-eqz v1, :cond_7

    .line 284
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v4

    const-string v5, "/data/yulong_secure/"

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-ne v4, v5, :cond_4

    move v0, v2

    .line 286
    .local v0, isSecure:Z
    :goto_1
    if-eqz v0, :cond_5

    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz v4, :cond_5

    .line 287
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0e0126

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v0           #isSecure:Z
    :cond_4
    move v0, v3

    .line 284
    goto :goto_1

    .line 291
    .restart local v0       #isSecure:Z
    :cond_5
    if-eqz v0, :cond_6

    .line 292
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->loginSecureBox()V

    goto :goto_0

    .line 294
    :cond_6
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 298
    .end local v0           #isSecure:Z
    :cond_7
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 1126
    if-eqz p3, :cond_0

    const-string v0, "empty-album"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->showEmptyAlbumToast(I)V

    .line 1129
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1134
    :goto_0
    return-void

    .line 1131
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 1129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 3
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    .line 1200
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1201
    const-string v0, "AlbumSetPage"

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

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$10;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/AlbumSetPage$10;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1222
    return-void
.end method

.method public pickOtherAlbumSet(Lcom/android/gallery3d/data/MediaSet;)Z
    .locals 13
    .parameter "targetSet"

    .prologue
    const/16 v12, 0x11

    const/16 v11, 0x9

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 392
    const/4 v4, 0x0

    .line 393
    .local v4, isOtherAlbum:Z
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    .line 394
    .local v6, mediaPath:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    .line 395
    .local v0, bucketId:I
    const-string v10, "/local/image/0"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 396
    .local v3, isMore:Z
    const-string v10, "/data/yulong_secure/"

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-ne v0, v10, :cond_2

    move v5, v8

    .line 398
    .local v5, isSecure:Z
    :goto_0
    if-eqz v5, :cond_3

    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz v10, :cond_3

    .line 399
    :cond_0
    const/4 v4, 0x1

    move v8, v4

    .line 465
    :cond_1
    :goto_1
    return v8

    .end local v5           #isSecure:Z
    :cond_2
    move v5, v9

    .line 396
    goto :goto_0

    .line 403
    .restart local v5       #isSecure:Z
    :cond_3
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v10

    if-nez v10, :cond_6

    .line 404
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->internalCameraId()I

    move-result v10

    if-eq v0, v10, :cond_4

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->externalCameraId()I

    move-result v10

    if-ne v0, v10, :cond_5

    .line 406
    :cond_4
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v10}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 407
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v10, v9}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;Z)V

    goto :goto_1

    .line 409
    :cond_5
    if-nez v3, :cond_6

    if-nez v5, :cond_6

    .line 410
    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/AlbumSetPage;->showEmptyAlbumToast(I)V

    goto :goto_1

    .line 414
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideEmptyAlbumToast()V

    .line 415
    if-eqz v3, :cond_b

    .line 416
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 418
    .local v2, dm:Lcom/android/gallery3d/data/DataManager;
    iget-boolean v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCopyPic:Z

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMovePic:Z

    if-eqz v8, :cond_a

    .line 419
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 424
    .local v1, data1:Landroid/os/Bundle;
    :goto_2
    const-string v8, "type-bits"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 425
    const-string v8, "media-path"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 426
    const-string v8, "copy-picture"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 427
    const-string v8, "move-picture"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 428
    const-string v8, "type-bits"

    invoke-virtual {v1, v8, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    const-string v8, "media-path"

    invoke-virtual {v2, v11}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-boolean v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMovePic:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCopyPic:Z

    if-eqz v8, :cond_9

    .line 433
    :cond_8
    const-string v8, "move-picture"

    iget-boolean v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMovePic:Z

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 434
    const-string v8, "copy-picture"

    iget-boolean v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCopyPic:Z

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    const-string v8, "pic-path-list"

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->picList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 437
    :cond_9
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v8

    const-class v9, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v8, v9, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 438
    const/4 v4, 0x1

    move v8, v4

    .line 439
    goto/16 :goto_1

    .line 421
    .end local v1           #data1:Landroid/os/Bundle;
    :cond_a
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .restart local v1       #data1:Landroid/os/Bundle;
    goto :goto_2

    .line 440
    .end local v1           #data1:Landroid/os/Bundle;
    .end local v2           #dm:Lcom/android/gallery3d/data/DataManager;
    :cond_b
    if-eqz v5, :cond_e

    .line 441
    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "securebox"

    const-string v11, "click"

    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 442
    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;)V

    .line 443
    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 447
    .restart local v2       #dm:Lcom/android/gallery3d/data/DataManager;
    iget-boolean v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mCopyPic:Z

    if-nez v9, :cond_c

    iget-boolean v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMovePic:Z

    if-eqz v9, :cond_d

    .line 448
    :cond_c
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 453
    .local v7, secureData:Landroid/os/Bundle;
    :goto_3
    const-string v9, "type-bits"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 454
    const-string v9, "media-path"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 455
    const-string v9, "secure-path"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    const-string v8, "type-bits"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v8, "media-path"

    invoke-virtual {v2, v12}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v8

    const-class v9, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v8, v9, v7}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 462
    const/4 v4, 0x1

    move v8, v4

    .line 463
    goto/16 :goto_1

    .line 450
    .end local v7           #secureData:Landroid/os/Bundle;
    :cond_d
    new-instance v7, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .restart local v7       #secureData:Landroid/os/Bundle;
    goto :goto_3

    .end local v2           #dm:Lcom/android/gallery3d/data/DataManager;
    .end local v7           #secureData:Landroid/os/Bundle;
    :cond_e
    move v8, v4

    .line 465
    goto/16 :goto_1
.end method
