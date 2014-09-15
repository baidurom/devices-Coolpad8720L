.class public Lcom/android/gallery3d/data/ClusterAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mFirstReloadDone:Z

.field private mKind:I

.field private mSize:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "baseSet"
    .parameter "kind"

    .prologue
    .line 40
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 41
    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 42
    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 43
    iput p4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    .line 44
    invoke-virtual {p3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 45
    return-void
.end method

.method private updateClusters()V
    .locals 12

    .prologue
    .line 87
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 88
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mSize:I

    .line 90
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    .line 91
    .local v4, context:Landroid/content/Context;
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    packed-switch v10, :pswitch_data_0

    .line 105
    :pswitch_0
    new-instance v3, Lcom/android/gallery3d/data/SizeClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/SizeClustering;-><init>(Landroid/content/Context;)V

    .line 109
    .local v3, clustering:Lcom/android/gallery3d/data/Clustering;
    :goto_0
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/Clustering;->run(Lcom/android/gallery3d/data/MediaSet;)V

    .line 110
    invoke-virtual {v3}, Lcom/android/gallery3d/data/Clustering;->getNumberOfClusters()I

    move-result v9

    .line 111
    .local v9, n:I
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    .line 112
    .local v5, dataManager:Lcom/android/gallery3d/data/DataManager;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v9, :cond_3

    .line 114
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, childName:Ljava/lang/String;
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 116
    iget-object v10, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 125
    .local v2, childPath:Lcom/android/gallery3d/data/Path;
    :goto_2
    sget-object v11, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 126
    :try_start_0
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 127
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-direct {v0, v2, v5, p0}, Lcom/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    .line 130
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_0
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getClusterCover(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/ClusterAlbum;->setCoverMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 136
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mSize:I

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->getTotalMediaItemCount()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mSize:I

    .line 139
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 93
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    .end local v5           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v6           #i:I
    .end local v9           #n:I
    :pswitch_1
    new-instance v3, Lcom/android/gallery3d/data/TimeClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/TimeClustering;-><init>(Landroid/content/Context;)V

    .line 94
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 96
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_2
    new-instance v3, Lcom/android/gallery3d/data/LocationClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/LocationClustering;-><init>(Landroid/content/Context;)V

    .line 97
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 99
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_3
    new-instance v3, Lcom/android/gallery3d/data/TagClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/TagClustering;-><init>(Landroid/content/Context;)V

    .line 100
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 102
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_4
    new-instance v3, Lcom/android/gallery3d/data/FaceClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/FaceClustering;-><init>(Landroid/content/Context;)V

    .line 103
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 117
    .restart local v1       #childName:Ljava/lang/String;
    .restart local v5       #dataManager:Lcom/android/gallery3d/data/DataManager;
    .restart local v6       #i:I
    .restart local v9       #n:I
    :cond_1
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    move-object v10, v3

    .line 118
    check-cast v10, Lcom/android/gallery3d/data/SizeClustering;

    invoke-virtual {v10, v6}, Lcom/android/gallery3d/data/SizeClustering;->getMinSize(I)J

    move-result-wide v7

    .line 119
    .local v7, minSize:J
    iget-object v10, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v7, v8}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 120
    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto :goto_2

    .line 121
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v7           #minSize:J
    :cond_2
    iget-object v10, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v6}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto :goto_2

    .line 130
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 141
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    :cond_3
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateClustersContents()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 145
    .local v0, existing:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    new-instance v10, Lcom/android/gallery3d/data/ClusterAlbumSet$1;

    invoke-direct {v10, p0, v0}, Lcom/android/gallery3d/data/ClusterAlbumSet$1;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;Ljava/util/HashSet;)V

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 153
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v5

    .line 154
    .local v5, nSize:I
    const-string v9, "ClusterAlbumSet"

    const-string v10, "clusters existing images:%s"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/data/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mSize:I

    if-le v5, v9, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 158
    const-string v9, "ClusterAlbumSet"

    const-string v10, "clusters updateClusters images:%s"

    new-array v11, v14, [Ljava/lang/Object;

    iget v12, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mSize:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/data/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mSize:I

    if-ne v5, v9, :cond_2

    .line 161
    const-string v9, "ClusterAlbumSet"

    const-string v10, "do nothing for update clusters"

    invoke-static {v9, v10}, Lcom/android/gallery3d/data/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_2
    iput v13, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mSize:I

    .line 168
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 172
    .local v4, n:I
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 173
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 174
    .local v7, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v6, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 176
    .local v3, m:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 177
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/Path;

    .line 178
    .local v8, p:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 179
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 183
    .end local v8           #p:Lcom/android/gallery3d/data/Path;
    :cond_4
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v9, v6}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 184
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 185
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 188
    :cond_5
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mSize:I

    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/ClusterAlbum;->getTotalMediaItemCount()I

    move-result v9

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mSize:I

    goto :goto_3
.end method


# virtual methods
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
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 84
    return-void
.end method

.method public orderAlbumSets()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 65
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V

    .line 71
    :goto_0
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 73
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    goto :goto_0
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
    .line 210
    .local p1, albumSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    return-void
.end method
