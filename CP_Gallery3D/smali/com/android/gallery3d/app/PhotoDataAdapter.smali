.class public Lcom/android/gallery3d/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mCameraIndex:I

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private final mData:[Lcom/android/gallery3d/data/MediaItem;

.field private mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

.field private mFocusHintDirection:I

.field private mFocusHintPath:Lcom/android/gallery3d/data/Path;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedFullImage:Z

.field private final mPaths:[Lcom/android/gallery3d/data/Path;

.field private final mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

.field private mSize:I

.field private mSource:Lcom/android/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private final mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

.field private final mUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, k:I
    const/16 v3, 0xc

    new-array v3, v3, [Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    sput-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    .line 92
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .local v2, k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 94
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 95
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v0, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 96
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    neg-int v5, v0

    invoke-direct {v4, v5, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 100
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 101
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZZ)V
    .locals 6
    .parameter "activity"
    .parameter "view"
    .parameter "mediaSet"
    .parameter "itemPath"
    .parameter "indexHint"
    .parameter "cameraIndex"
    .parameter "isPanorama"
    .parameter "isStaticCamera"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    .line 117
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    .line 118
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 119
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    .line 128
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 129
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 138
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    .line 141
    new-array v0, v2, [Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    .line 150
    iput-wide v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    .line 151
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    .line 158
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 159
    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    .line 167
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-direct {v0, p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    .line 178
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 179
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 180
    invoke-static {p4}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 181
    iput p5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 182
    iput p6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    .line 183
    iput-boolean p7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    .line 184
    iput-boolean p8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStaticCamera:Z

    .line 185
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 190
    new-instance v0, Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    .line 192
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$1;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 221
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 222
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/PhotoDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateFullImage(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 979
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 980
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 983
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 985
    :goto_0
    return-object v2

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 986
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 987
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private fireDataChange()V
    .locals 15

    .prologue
    const v10, 0x7fffffff

    const/4 v14, 0x0

    const/4 v13, 0x5

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, changed:Z
    const/4 v3, -0x2

    .local v3, i:I
    :goto_0
    const/4 v9, 0x2

    if-gt v3, v9, :cond_1

    .line 248
    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v9, v3

    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    .line 249
    .local v5, newVersion:J
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x2

    aget-wide v11, v9, v11

    cmp-long v9, v11, v5

    if-eqz v9, :cond_0

    .line 250
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x2

    aput-wide v5, v9, v11

    .line 251
    const/4 v1, 0x1

    .line 247
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v5           #newVersion:J
    :cond_1
    if-nez v1, :cond_2

    .line 292
    :goto_1
    return-void

    .line 260
    :cond_2
    const/4 v0, 0x5

    .line 261
    .local v0, N:I
    new-array v2, v13, [I

    .line 264
    .local v2, fromIndex:[I
    new-array v7, v13, [Lcom/android/gallery3d/data/Path;

    .line 265
    .local v7, oldPaths:[Lcom/android/gallery3d/data/Path;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    invoke-static {v9, v14, v7, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v13, :cond_3

    .line 269
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    iget v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x2

    invoke-direct {p0, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    aput-object v11, v9, v3

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 273
    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v13, :cond_8

    .line 274
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    aget-object v8, v9, v3

    .line 275
    .local v8, p:Lcom/android/gallery3d/data/Path;
    if-nez v8, :cond_4

    .line 276
    aput v10, v2, v3

    .line 273
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 282
    :cond_4
    const/4 v4, 0x0

    .local v4, j:I
    :goto_5
    if-ge v4, v13, :cond_5

    .line 283
    aget-object v9, v7, v4

    if-ne v9, v8, :cond_6

    .line 287
    :cond_5
    if-ge v4, v13, :cond_7

    add-int/lit8 v9, v4, -0x2

    :goto_6
    aput v9, v2, v3

    goto :goto_4

    .line 282
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    move v9, v10

    .line 287
    goto :goto_6

    .line 290
    .end local v4           #j:I
    .end local v8           #p:Lcom/android/gallery3d/data/Path;
    :cond_8
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v10, v10

    iget v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v2, v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->notifyDataChange([III)V

    goto :goto_1
.end method

.method private getItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 411
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 417
    :goto_0
    return-object v0

    .line 412
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 414
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v1, p1, 0x100

    aget-object v0, v0, v1

    goto :goto_0

    .line 412
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 417
    goto :goto_0
.end method

.method private getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 225
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v1, p1, 0x100

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getPath(I)Lcom/android/gallery3d/data/Path;
    .locals 2
    .parameter "index"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 240
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 241
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private getVersion(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 234
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    .line 235
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v1

    goto :goto_0
.end method

.method private isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 6
    .parameter "mediaItem"

    .prologue
    const/4 v1, 0x0

    .line 806
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-gez v2, :cond_1

    .line 822
    :cond_0
    :goto_0
    return v1

    .line 808
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 809
    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 811
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->internalCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->externalCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 817
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 818
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 822
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 3
    .parameter "item"

    .prologue
    .line 829
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    .line 830
    .local v1, width:I
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 831
    .local v0, height:I
    new-instance v2, Lcom/android/gallery3d/ui/TiledScreenNail;

    invoke-direct {v2, v1, v0}, Lcom/android/gallery3d/ui/TiledScreenNail;-><init>(II)V

    return-object v2
.end method

.method private startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;
    .locals 10
    .parameter "index"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 836
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v4, :cond_0

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v4, :cond_1

    :cond_0
    move-object v4, v6

    .line 873
    :goto_0
    return-object v4

    .line 838
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 839
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_2

    move-object v4, v6

    goto :goto_0

    .line 840
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v7, p1, 0x100

    aget-object v1, v4, v7

    .line 841
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 842
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v2

    .line 844
    .local v2, version:J
    if-ne p2, v5, :cond_4

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v4, :cond_4

    iget-wide v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_4

    .line 846
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 841
    .end local v2           #version:J
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 847
    .restart local v2       #version:J
    :cond_4
    if-ne p2, v9, :cond_5

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v4, :cond_5

    iget-wide v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_5

    .line 849
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 852
    :cond_5
    if-ne p2, v5, :cond_7

    iget-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_7

    .line 853
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v4

    if-ne p1, v4, :cond_6

    .line 854
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 856
    :cond_6
    iput-wide v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 857
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v5, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v5, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v6, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v4

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 861
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 863
    :cond_7
    if-ne p2, v9, :cond_8

    iget-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_8

    .line 866
    iput-wide v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 867
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v5, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;

    invoke-direct {v5, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;

    invoke-direct {v6, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v4

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 871
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    :cond_8
    move-object v4, v6

    .line 873
    goto/16 :goto_0
.end method

.method private updateCurrentIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 421
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v1, p1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 422
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 423
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 425
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v2, p1, 0x100

    aget-object v0, v1, v2

    .line 426
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 428
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 429
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 430
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 432
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v1, p1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/android/gallery3d/data/Path;)V

    .line 436
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    goto :goto_0

    .line 426
    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_1
.end method

.method private updateFullImage(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 341
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eq v2, p2, :cond_2

    .line 342
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 343
    .local v1, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 356
    .end local v1           #fullImage:Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    :goto_0
    return-void

    .line 347
    :cond_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 348
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapRegionDecoder;

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 349
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v2, :cond_3

    .line 350
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 351
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 352
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 355
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0
.end method

.method private updateImageCache()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 877
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 878
    .local v6, toBeRemoved:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_0
    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v7, :cond_5

    .line 879
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v8, v1, 0x100

    aget-object v3, v7, v8

    .line 880
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v3, :cond_1

    .line 878
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 881
    :cond_1
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 882
    .local v4, path:Lcom/android/gallery3d/data/Path;
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 883
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 884
    if-eqz v0, :cond_4

    .line 885
    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 886
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_2

    .line 887
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 888
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 890
    :cond_2
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 892
    :cond_3
    iget-wide v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 895
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v7, v7, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-eqz v7, :cond_0

    .line 896
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v5, Lcom/android/gallery3d/ui/TiledScreenNail;

    .line 897
    .local v5, s:Lcom/android/gallery3d/ui/TiledScreenNail;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/android/gallery3d/ui/TiledScreenNail;->updatePlaceholderSize(II)V

    goto :goto_1

    .line 902
    .end local v5           #s:Lcom/android/gallery3d/ui/TiledScreenNail;
    :cond_4
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-direct {v0, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    .line 903
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 908
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v3           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    :cond_5
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 909
    .restart local v4       #path:Lcom/android/gallery3d/data/Path;
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 910
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 911
    :cond_7
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 912
    :cond_8
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_2

    .line 914
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    :cond_9
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    .line 915
    return-void
.end method

.method private updateImageRequests()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 717
    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v8, :cond_1

    .line 749
    :cond_0
    return-void

    .line 719
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 720
    .local v1, currentIndex:I
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v9, v1, 0x100

    aget-object v5, v8, v9

    .line 721
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v8, v9, :cond_0

    .line 727
    const/4 v7, 0x0

    .line 728
    .local v7, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 729
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v6, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 730
    .local v6, offset:I
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v0, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 731
    .local v0, bit:I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v8, :cond_3

    .line 728
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 732
    :cond_3
    add-int v8, v1, v6

    invoke-direct {p0, v8, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    .line 733
    if-eqz v7, :cond_2

    .line 737
    .end local v0           #bit:I
    .end local v6           #offset:I
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 738
    .local v2, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_6

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_6

    .line 739
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 740
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 741
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 743
    :cond_6
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_5

    .line 744
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 745
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 746
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    goto :goto_1
.end method

.method private updateScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 6
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/ui/ScreenNail;>;"
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 300
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/ScreenNail;

    .line 302
    .local v3, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v4, p2, :cond_2

    .line 303
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 310
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v4, v4, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-eqz v4, :cond_3

    .line 311
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/gallery3d/ui/TiledScreenNail;

    .line 312
    .local v2, original:Lcom/android/gallery3d/ui/TiledScreenNail;
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/TiledScreenNail;->combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 315
    .end local v2           #original:Lcom/android/gallery3d/ui/TiledScreenNail;
    :cond_3
    if-nez v3, :cond_7

    .line 317
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/snail/item"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-nez v4, :cond_4

    .line 318
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 319
    const-string v4, "PhotoDataAdapter"

    const-string v5, "!!! The camerascreennail load failed and try it again"

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 328
    :goto_1
    const/4 v1, -0x2

    .local v1, i:I
    :goto_2
    const/4 v4, 0x2

    if-gt v1, v4, :cond_6

    .line 329
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    if-ne p1, v4, :cond_8

    .line 330
    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 331
    :cond_5
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 335
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 336
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    goto :goto_0

    .line 324
    .end local v1           #i:I
    :cond_7
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 325
    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    .line 328
    .restart local v1       #i:I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private updateScreenNailUploadQueue()V
    .locals 2

    .prologue
    .line 457
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;->clear()V

    .line 458
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 459
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 460
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 461
    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method private updateSlidingWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 690
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 692
    .local v2, start:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 694
    .local v0, end:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 697
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 700
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x80

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit16 v4, v4, -0x100

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 702
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit16 v4, v2, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 703
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_0

    .line 705
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v1, v3, :cond_5

    .line 706
    if-lt v1, v2, :cond_3

    if-lt v1, v0, :cond_4

    .line 707
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v4, v1, 0x100

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 705
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 710
    :cond_5
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 711
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 712
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method private updateTileProvider()V
    .locals 3

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 663
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 668
    :goto_0
    return-void

    .line 666
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    goto :goto_0
.end method

.method private updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 7
    .parameter "entry"

    .prologue
    .line 671
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 672
    .local v2, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 673
    .local v0, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v2, :cond_1

    .line 674
    if-eqz v0, :cond_0

    .line 675
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 677
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 686
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    .line 680
    .local v3, width:I
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v1

    .line 681
    .local v1, height:I
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    goto :goto_0

    .line 684
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    goto :goto_0
.end method

.method private uploadScreenNail(I)V
    .locals 7
    .parameter "offset"

    .prologue
    .line 440
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v5, p1

    .line 441
    .local v1, index:I
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v1, v5, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 444
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    .line 446
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 447
    .local v0, e:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    .line 449
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 450
    .local v3, s:Lcom/android/gallery3d/ui/ScreenNail;
    instance-of v5, v3, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-eqz v5, :cond_0

    .line 451
    check-cast v3, Lcom/android/gallery3d/ui/TiledScreenNail;

    .end local v3           #s:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TiledScreenNail;->getTexture()Lcom/android/gallery3d/ui/TiledTexture;

    move-result-object v4

    .line 452
    .local v4, t:Lcom/android/gallery3d/ui/TiledTexture;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;->addTexture(Lcom/android/gallery3d/ui/TiledTexture;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;
    .locals 5

    .prologue
    .line 641
    const/4 v1, 0x0

    .line 644
    .local v1, mMediaItem:Lcom/android/gallery3d/data/MediaItem;
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit16 v3, v3, 0x100

    aget-object v1, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_0
    return-object v1

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "PhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 517
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 518
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v1

    goto :goto_0
.end method

.method public getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 3
    .parameter "offset"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 505
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 506
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    .line 507
    iput v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 508
    iput v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 513
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    iput v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 511
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    iput v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getLoadingState(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 567
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 568
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v1

    .line 569
    :cond_1
    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 570
    :cond_2
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 3
    .parameter "offset"

    .prologue
    .line 617
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v0, v1, p1

    .line 618
    .local v0, index:I
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v0, v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit16 v2, v0, 0x100

    aget-object v1, v1, v2

    .line 621
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 11
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 472
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v6, p1

    .line 473
    .local v1, index:I
    if-ltz v1, :cond_0

    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge v1, v6, :cond_0

    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v6, :cond_1

    :cond_0
    move-object v3, v5

    .line 500
    :goto_0
    return-object v3

    .line 474
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v6, :cond_2

    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v1, v6, :cond_3

    .line 477
    :cond_2
    const-string v6, "PhotoDataAdapter"

    const-string v7, "current index: %s, range(%s, %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v9, 0x2

    iget v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-nez v6, :cond_3

    if-nez p1, :cond_3

    move-object v3, v5

    .line 481
    goto :goto_0

    .line 484
    :cond_3
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v6, :cond_4

    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v6, :cond_4

    :goto_1
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 486
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 487
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v2, :cond_5

    move-object v3, v5

    goto :goto_0

    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_4
    move v3, v4

    .line 484
    goto :goto_1

    .line 489
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 490
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_6

    move-object v3, v5

    goto :goto_0

    .line 494
    :cond_6
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v3, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 500
    :cond_7
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method public getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"
    .parameter "pool"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isAudioJpeg(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 552
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 553
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->isAudioImage()Z

    move-result v1

    goto :goto_0
.end method

.method public isCamera(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 529
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeletable(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 559
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 560
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasCache()Z
    .locals 1

    .prologue
    .line 1206
    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStaticCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStaticCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo(I)Z
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 544
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 545
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 468
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 388
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v2, :cond_0

    .line 408
    :goto_0
    return-void

    .line 391
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 393
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->terminate()V

    .line 394
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 396
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 398
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 399
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 400
    :cond_2
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 401
    :cond_3
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_1

    .line 403
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 404
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 406
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/android/gallery3d/ui/TiledTexture$Uploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TiledTexture$Uploader;->clear()V

    .line 407
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->freeResources()V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 364
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->prepareResources()V

    .line 366
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 367
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 368
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 370
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 373
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    goto :goto_0
.end method

.method public setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 626
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v1, p1, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 628
    iput p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 629
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 630
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 631
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 634
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 635
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method public setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    .line 296
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 653
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 654
    return-void
.end method

.method public setFocusHintPath(Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    .line 659
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 523
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 524
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 525
    return-void
.end method
