.class public Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

.field private final mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

.field private final mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

.field private final mThreadPool:Lcom/android/gallery3d/util/JobLimiter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumDataLoader;I)V
    .locals 3
    .parameter "activity"
    .parameter "source"
    .parameter "cacheSize"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 84
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 86
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 87
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 91
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 92
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 119
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/app/AlbumDataLoader;->setDataListener(Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;)V

    .line 120
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    .line 121
    new-array v0, p3, [Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 122
    invoke-virtual {p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 124
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 134
    new-instance v0, Lcom/android/gallery3d/util/JobLimiter;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/JobLimiter;-><init>(Lcom/android/gallery3d/util/ThreadPool;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/JobLimiter;

    .line 149
    new-instance v0, Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TextureUploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    .line 151
    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/JobLimiter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/JobLimiter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$606(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    return-object v0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 317
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 319
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 320
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 321
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method

.method private cancelSlotImage(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 326
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 328
    .local v0, item:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private freeSlotContent(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    const/4 v4, 0x0

    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 333
    .local v0, data:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    array-length v3, v0

    rem-int v2, p1, v3

    .line 334
    .local v2, index:I
    aget-object v1, v0, v2

    .line 335
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 336
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 337
    #setter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 339
    :cond_0
    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v3, :cond_1

    .line 340
    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 341
    iput-object v4, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 344
    :cond_1
    aput-object v4, v0, v2

    .line 345
    return-void
.end method

.method private prepareSlotContent(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    const/4 v3, 0x0

    .line 348
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;-><init>()V

    .line 349
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 350
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    iput-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    .line 351
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    .line 354
    if-nez v1, :cond_1

    move-object v2, v3

    :goto_1
    iput-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    .line 355
    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_2
    iput v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    .line 368
    new-instance v2, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;

    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v2, p0, p1, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;ILcom/android/gallery3d/data/MediaItem;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 369
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v4, v4

    rem-int v4, p1, v4

    aput-object v0, v2, v4

    .line 370
    if-nez v1, :cond_3

    :goto_3
    iput-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->filePath:Ljava/lang/String;

    .line 371
    return-void

    .line 351
    :cond_0
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v2

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    goto :goto_2

    .line 370
    :cond_3
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 277
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 279
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 280
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    .line 281
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method private requestSlotImage(I)Z
    .locals 4
    .parameter "slotIndex"

    .prologue
    const/4 v1, 0x0

    .line 291
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v1

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aget-object v0, v2, v3

    .line 293
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    .line 296
    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mPanoSupportListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$002(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    .line 297
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mPanoSupportListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/MediaObject;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 299
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 300
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v1

    goto :goto_0
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 170
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 205
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v2, :cond_1

    .line 173
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 174
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 175
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    goto :goto_0

    .line 179
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_2

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_4

    .line 180
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 181
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    .line 184
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_8

    .line 185
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 188
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_5

    .line 189
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 191
    :cond_5
    move v0, p2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_6

    .line 192
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 194
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    .line 195
    move v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_7

    .line 196
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 198
    :cond_7
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_8

    .line 199
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 203
    :cond_8
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 204
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private updateAllImageRequests()V
    .locals 3

    .prologue
    .line 374
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 375
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 376
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 375
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v2, :cond_2

    .line 382
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    .line 386
    :goto_1
    return-void

    .line 384
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 7

    .prologue
    .line 239
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_1

    .line 269
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 249
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 250
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    .line 251
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v4, :cond_2

    .line 257
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 249
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_3
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 265
    .local v3, range:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 266
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 267
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadBgTextureInSlot(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 225
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 227
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 236
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const-string v0, "invalid slot: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 467
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 469
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 470
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 471
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    .line 475
    :cond_0
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 457
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    .line 458
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 459
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onSizeChanged(I)V

    .line 460
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 461
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 463
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 487
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 493
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 496
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 497
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 478
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 480
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 481
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 484
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, 0x0

    .line 208
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le p2, v3, :cond_1

    .line 209
    :cond_0
    const-string v3, "%s, %s, %s, %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 213
    .local v2, data:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 214
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 216
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 218
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 219
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setContentWindow(II)V

    .line 220
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateTextureUploadQueue()V

    .line 221
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 222
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    .line 155
    return-void
.end method
