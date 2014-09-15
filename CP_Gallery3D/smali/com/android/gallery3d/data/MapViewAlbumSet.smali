.class public Lcom/android/gallery3d/data/MapViewAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "MapViewAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# static fields
.field public static mIsOne:Z

.field public static mShowOnMap:Z

.field private static final mWatchUriImage:Landroid/net/Uri;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MapViewAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field public mGPSAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mShowOnMap:Z

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mIsOne:Z

    .line 24
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaSet;Z)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "baseSet"
    .parameter "ShowOnMap"

    .prologue
    .line 29
    invoke-static {}, Lcom/android/gallery3d/data/MapViewAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mGPSAlbums:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 31
    sput-boolean p4, Lcom/android/gallery3d/data/MapViewAlbumSet;->mShowOnMap:Z

    .line 32
    iput-object p3, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 33
    invoke-virtual {p3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 34
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/data/MapViewAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 35
    return-void
.end method

.method private resumeMapview(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MapViewAlbumSet;->UpdateAlbumNumbers()V

    .line 113
    iget-object v1, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mGPSAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-boolean v1, Lcom/android/gallery3d/data/MapViewAlbumSet;->mShowOnMap:Z

    if-eqz v1, :cond_0

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/PhotoDisplayMap;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "gpsAlbums"

    iget-object v2, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mGPSAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 116
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/gallery3d/data/MapViewAlbumSet;->mShowOnMap:Z

    .line 121
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateLocationAlbumsContents()V
    .locals 11

    .prologue
    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 125
    .local v1, existing:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    new-instance v10, Lcom/android/gallery3d/data/MapViewAlbumSet$1;

    invoke-direct {v10, p0, v1}, Lcom/android/gallery3d/data/MapViewAlbumSet$1;-><init>(Lcom/android/gallery3d/data/MapViewAlbumSet;Ljava/util/HashSet;)V

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 133
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 137
    .local v5, n:I
    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_3

    .line 138
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/MapViewAlbum;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MapViewAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 139
    .local v7, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v6, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 141
    .local v4, m:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 142
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/Path;

    .line 143
    .local v8, p:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 144
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    .end local v8           #p:Lcom/android/gallery3d/data/Path;
    :cond_1
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/MapViewAlbum;

    invoke-virtual {v9, v6}, Lcom/android/gallery3d/data/MapViewAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 148
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 149
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 154
    .end local v3           #j:I
    .end local v4           #m:I
    .end local v6           #newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v7           #oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MapViewAlbumSet;->UpdateAlbumNumbers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_2
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public UpdateAlbumNumbers()V
    .locals 14

    .prologue
    .line 163
    iget-object v10, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mGPSAlbums:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 164
    iget-object v10, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mGPSAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 166
    :cond_0
    iget-object v10, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 167
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e00b1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, mNoLocationString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    .line 170
    iget-object v10, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 171
    .local v9, size:I
    const-string v10, "MapViewAlbumSet"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "album size:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_4

    .line 173
    iget-object v10, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MapViewAlbum;

    .line 174
    .local v0, album:Lcom/android/gallery3d/data/MapViewAlbum;
    const-string v10, "MapViewAlbumSet"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get album:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MapViewAlbum;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MapViewAlbum;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 177
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 178
    .local v1, childPath:Lcom/android/gallery3d/data/Path;
    const/4 v7, 0x0

    .line 179
    .local v7, mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Lcom/android/gallery3d/data/MapViewAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Lcom/android/gallery3d/data/MapViewAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 181
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Lcom/android/gallery3d/data/MapViewAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    check-cast v7, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 183
    .restart local v7       #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :cond_1
    const-string v8, ""

    .line 184
    .local v8, path:Ljava/lang/String;
    const/4 v10, 0x2

    new-array v5, v10, [D

    .line 185
    .local v5, lat:[D
    if-eqz v7, :cond_2

    .line 186
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    .line 187
    invoke-virtual {v7, v5}, Lcom/android/gallery3d/data/LocalMediaItem;->getLatLong([D)V

    .line 189
    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MapViewAlbum;->getMediaItemCount()I

    move-result v3

    .line 190
    .local v3, count:I
    iget-object v10, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mGPSAlbums:Ljava/util/ArrayList;

    if-eqz v10, :cond_3

    .line 191
    iget-object v10, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mGPSAlbums:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-wide v12, v5, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-wide v12, v5, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v1           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v3           #count:I
    .end local v5           #lat:[D
    .end local v7           #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    .end local v8           #path:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 197
    .end local v0           #album:Lcom/android/gallery3d/data/MapViewAlbum;
    .end local v4           #i:I
    .end local v9           #size:I
    :cond_4
    return-void
.end method

.method public createMapview()V
    .locals 10

    .prologue
    .line 83
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mGPSAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    .line 87
    .local v5, context:Landroid/content/Context;
    new-instance v4, Lcom/android/gallery3d/data/LocationClustering;

    invoke-direct {v4, v5}, Lcom/android/gallery3d/data/LocationClustering;-><init>(Landroid/content/Context;)V

    .line 88
    .local v4, clustering:Lcom/android/gallery3d/data/Clustering;
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4, v9}, Lcom/android/gallery3d/data/LocationClustering;->run(Lcom/android/gallery3d/data/MediaSet;)V

    .line 89
    invoke-virtual {v4}, Lcom/android/gallery3d/data/LocationClustering;->getNumberOfClusters()I

    move-result v8

    .line 90
    .local v8, n:I
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    .line 91
    .local v6, dataManager:Lcom/android/gallery3d/data/DataManager;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 93
    invoke-virtual {v4, v7}, Lcom/android/gallery3d/data/LocationClustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, childName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v9, v7}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 95
    .local v3, childPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v6, v3}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MapViewAlbum;

    .line 97
    .local v1, album:Lcom/android/gallery3d/data/MapViewAlbum;
    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/android/gallery3d/data/MapViewAlbum;

    .end local v1           #album:Lcom/android/gallery3d/data/MapViewAlbum;
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, v3, v9, v6, p0}, Lcom/android/gallery3d/data/MapViewAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    .line 102
    .restart local v1       #album:Lcom/android/gallery3d/data/MapViewAlbum;
    :cond_0
    invoke-virtual {v4, v7}, Lcom/android/gallery3d/data/LocationClustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    .local v0, Clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/MapViewAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 104
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/MapViewAlbum;->setName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4, v7}, Lcom/android/gallery3d/data/Clustering;->getClusterCover(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/gallery3d/data/MapViewAlbum;->setCoverMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 106
    iget-object v9, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 108
    .end local v0           #Clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v1           #album:Lcom/android/gallery3d/data/MapViewAlbum;
    .end local v2           #childName:Ljava/lang/String;
    .end local v3           #childPath:Lcom/android/gallery3d/data/Path;
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/gallery3d/data/MapViewAlbumSet;->resumeMapview(Landroid/content/Context;)V

    .line 109
    return-void
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
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public getGPSAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mGPSAlbums:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 80
    return-void
.end method

.method public orderAlbumSets()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public reload()J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    iget-object v1, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    .line 60
    .local v0, isRoad:Z
    iget-object v1, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 61
    sget-boolean v1, Lcom/android/gallery3d/data/MapViewAlbumSet;->mShowOnMap:Z

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MapViewAlbumSet;->createMapview()V

    .line 63
    sput-boolean v5, Lcom/android/gallery3d/data/MapViewAlbumSet;->mShowOnMap:Z

    .line 75
    :cond_0
    :goto_0
    iget-wide v1, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v1

    .line 64
    :cond_1
    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/android/gallery3d/data/MapViewAlbumSet;->updateLocationAlbumsContents()V

    .line 66
    invoke-static {}, Lcom/android/gallery3d/data/MapViewAlbumSet;->nextVersionNumber()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    goto :goto_0

    .line 68
    :cond_2
    sget-boolean v1, Lcom/android/gallery3d/data/MapViewAlbumSet;->mShowOnMap:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MapViewAlbumSet;->createMapview()V

    .line 70
    sput-boolean v5, Lcom/android/gallery3d/data/MapViewAlbumSet;->mShowOnMap:Z

    goto :goto_0

    .line 71
    :cond_3
    sget-boolean v1, Lcom/android/gallery3d/data/MapViewAlbumSet;->mShowOnMap:Z

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/data/MapViewAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/data/MapViewAlbumSet;->resumeMapview(Landroid/content/Context;)V

    .line 73
    sput-boolean v5, Lcom/android/gallery3d/data/MapViewAlbumSet;->mShowOnMap:Z

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
    .line 217
    .local p1, albumSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    return-void
.end method
