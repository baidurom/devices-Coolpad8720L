.class public Lcom/android/gallery3d/data/MapViewAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "MapViewAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private mCover:Lcom/android/gallery3d/data/MediaItem;

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mMapAlbumSet:Lcom/android/gallery3d/data/MediaSet;

.field private mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "dataManager"
    .parameter "MapAlbumSet"

    .prologue
    .line 25
    invoke-static {}, Lcom/android/gallery3d/data/MapViewAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mPaths:Ljava/util/ArrayList;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 27
    iput-object p3, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 28
    iput-object p4, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mMapAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mMapAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 30
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mBaseUri:Landroid/net/Uri;

    .line 31
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 32
    return-void
.end method

.method public static getMediaItemFromPath(Ljava/util/ArrayList;IILcom/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "start"
    .parameter "count"
    .parameter "dataManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;II",
            "Lcom/android/gallery3d/data/DataManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    :cond_0
    return-object v4

    .line 82
    :cond_1
    add-int v6, p1, p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 83
    .local v2, end:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .local v5, subset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    sub-int v6, v2, p1

    new-array v0, v6, [Lcom/android/gallery3d/data/MediaItem;

    .line 85
    .local v0, buf:[Lcom/android/gallery3d/data/MediaItem;
    new-instance v1, Lcom/android/gallery3d/data/MapViewAlbum$1;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/data/MapViewAlbum$1;-><init>([Lcom/android/gallery3d/data/MediaItem;)V

    .line 90
    .local v1, consumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    const/4 v6, 0x0

    invoke-virtual {p3, v5, v1, v6}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    sub-int v6, v2, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 93
    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 128
    new-instance v0, Lcom/android/gallery3d/data/MapViewAlbum$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/MapViewAlbum$2;-><init>(Lcom/android/gallery3d/data/MapViewAlbum;)V

    .line 135
    .local v0, consumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    iget-object v1, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 136
    return-void
.end method

.method protected enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 2
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    iget-object v1, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mCover:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mCover:Lcom/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getCoverMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/android/gallery3d/data/MapViewAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/android/gallery3d/data/MapViewAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMediaItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x405

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 119
    return-void
.end method

.method public orderAlbumSets()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mMapAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/data/MapViewAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 114
    :cond_1
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public setCoverMediaItem(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "cover"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mCover:Lcom/android/gallery3d/data/MediaItem;

    .line 36
    return-void
.end method

.method setMediaItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iput-object p1, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mPaths:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/gallery3d/data/MapViewAlbum;->mName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public updateAlbumSets(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, albumSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    return-void
.end method
