.class public Lcom/android/gallery3d/ui/MoveCopyExecutor;
.super Ljava/lang/Object;
.source "MoveCopyExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;
    }
.end annotation


# instance fields
.field private FAIL:I

.field private final MSG_FINISH_COPY_MOVE_PICTURES:I

.field private final MSG_STATR_MOVE_COPY_PICTURES:I

.field private final MSG_UPDATE_COPY_MOVE_PICTURES:I

.field private final READ_SIZE:I

.field private SUCCESS:I

.field private final TAG:Ljava/lang/String;

.field private albumPath:Ljava/lang/String;

.field data:Landroid/os/Bundle;

.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mCopyPic:Z

.field mHandler:Landroid/os/Handler;

.field private mIntoSecubox:Z

.field private mIsPause:Z

.field private mMovePic:Z

.field mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

.field mProgressListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field picList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field totalFileSize:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "data1"
    .parameter "album"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "MoveCopyExecutor"

    iput-object v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->TAG:Ljava/lang/String;

    .line 88
    iput v1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->MSG_STATR_MOVE_COPY_PICTURES:I

    .line 89
    iput v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->MSG_UPDATE_COPY_MOVE_PICTURES:I

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->MSG_FINISH_COPY_MOVE_PICTURES:I

    .line 91
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->READ_SIZE:I

    .line 92
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIsPause:Z

    .line 94
    iput v1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->FAIL:I

    .line 95
    iput v2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->SUCCESS:I

    .line 98
    iput-object p1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 99
    iput-object p2, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->data:Landroid/os/Bundle;

    .line 100
    iput-object p3, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->data:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->initialData(Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->initialHandler()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/ui/MoveCopyExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mMovePic:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/ui/MoveCopyExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mMovePic:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/MoveCopyExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->newAlbum()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/util/Future;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/ui/MoveCopyExecutor;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/MoveCopyExecutor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->FAIL:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIsPause:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/ui/MoveCopyExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIsPause:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/ui/MoveCopyExecutor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIntoSecubox:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/gallery3d/ui/MoveCopyExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIntoSecubox:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/MoveCopyExecutor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->SUCCESS:I

    return v0
.end method

.method private initialData(Landroid/os/Bundle;)V
    .locals 10
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 106
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->totalFileSize:J

    .line 107
    const-string v5, "copy-picture"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z

    .line 108
    const-string v5, "move-picture"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mMovePic:Z

    .line 109
    const-string v5, "secure-path"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIntoSecubox:Z

    .line 110
    const-string v5, "pic-path-list"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    .line 112
    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 113
    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    .line 114
    .local v2, mMediaObject:Lcom/android/gallery3d/data/MediaObject;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->isAlbum(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 116
    .local v3, mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    invoke-virtual {v3, v7, v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 117
    .local v4, mediaItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 119
    iget-wide v6, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->totalFileSize:J

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v8

    add-long v5, v6, v8

    iput-wide v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->totalFileSize:J

    .line 120
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0           #i:I
    .end local v3           #mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #mediaItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_0
    if-eqz v2, :cond_2

    .line 123
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 124
    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    .line 125
    iget-wide v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->totalFileSize:J

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getSize()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->totalFileSize:J

    .line 126
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    .end local v1           #j:I
    .end local v2           #mMediaObject:Lcom/android/gallery3d/data/MediaObject;
    :cond_2
    iget-wide v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->totalFileSize:J

    long-to-float v5, v5

    const/high16 v6, 0x4980

    div-float/2addr v5, v6

    float-to-long v5, v5

    iput-wide v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->totalFileSize:J

    .line 132
    const-string v5, "MoveCopyExecutor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "album path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; is move: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mMovePic:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; is copy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";totalFileSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->totalFileSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/MoveCopyExecutor$1;-><init>(Lcom/android/gallery3d/ui/MoveCopyExecutor;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    .line 218
    return-void
.end method

.method private insertImage(Ljava/lang/String;)Z
    .locals 7
    .parameter "fileAbsolutePath"

    .prologue
    const/4 v3, 0x0

    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 305
    :cond_0
    const-string v4, "MoveCopyExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return v3

    .line 309
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 310
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :try_start_0
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    const-string v3, "MoveCopyExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success to insert image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v3, 0x1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 320
    .local v1, th:Ljava/lang/Throwable;
    const-string v4, "MoveCopyExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAlbum(Lcom/android/gallery3d/data/MediaObject;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, result:Z
    if-nez p1, :cond_1

    .line 237
    .end local v0           #result:Z
    :cond_0
    :goto_0
    return v0

    .line 226
    .restart local v0       #result:Z
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v2, :cond_2

    move v0, v1

    .line 227
    goto :goto_0

    .line 230
    :cond_2
    instance-of v2, p1, Lcom/android/gallery3d/data/MapViewAlbum;

    if-eqz v2, :cond_3

    move v0, v1

    .line 231
    goto :goto_0

    .line 234
    :cond_3
    instance-of v2, p1, Lcom/android/gallery3d/data/ClusterAlbum;

    if-eqz v2, :cond_0

    move v0, v1

    .line 235
    goto :goto_0
.end method

.method private newAlbum()V
    .locals 17

    .prologue
    .line 247
    const/4 v12, 0x0

    .line 248
    .local v12, isAlbumExist:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 249
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 250
    .local v2, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 251
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "bucket_id"

    aput-object v5, v3, v4

    .line 253
    .local v3, project:[Ljava/lang/String;
    const-string v4, "bucket_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 255
    if-eqz v8, :cond_1

    .line 256
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    const/4 v12, 0x1

    .line 259
    :cond_0
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 262
    :cond_1
    if-eqz v12, :cond_2

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e02e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 265
    .local v15, text:Ljava/lang/String;
    const-string v4, "MoveCopyExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newAlbum and  albumPath "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has exist >>>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x1

    invoke-static {v4, v15, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 300
    .end local v15           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 269
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201d1

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 271
    .local v7, bitmap:Landroid/graphics/Bitmap;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v9, dir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 273
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 275
    :cond_3
    new-instance v11, Ljava/io/File;

    const-string v4, "cover_for_new_album.jpeg"

    invoke-direct {v11, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_4

    .line 278
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_4
    :goto_1
    const/4 v13, 0x0

    .line 286
    .local v13, out:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    .end local v13           #out:Ljava/io/FileOutputStream;
    .local v14, out:Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v7, v4, v5, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 290
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->insertImage(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 296
    :cond_5
    invoke-static {v14}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 297
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    const/4 v7, 0x0

    move-object v13, v14

    .line 299
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 279
    .end local v13           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 280
    .local v10, e:Ljava/io/IOException;
    const-string v4, "MoveCopyExecutor"

    const-string v5, "create new file exception"

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 292
    .end local v10           #e:Ljava/io/IOException;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v10

    .line 293
    .local v10, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v4, "MoveCopyExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new FileOutputStream() exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 297
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    const/4 v7, 0x0

    .line 299
    goto/16 :goto_0

    .line 296
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 297
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    const/4 v7, 0x0

    throw v4

    .line 296
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 292
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 572
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 575
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 576
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/AlertDialog;->dismiss()V

    .line 577
    iput-object v1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mProgress:Lcom/yulong/android/view/dialog/AnimatedDialog;

    .line 578
    iput-object v1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 580
    :cond_0
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mIsPause:Z

    .line 568
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->stopTaskAndDismissDialog()V

    .line 569
    return-void
.end method

.method public startMvOrCopyTask()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 243
    return-void
.end method
