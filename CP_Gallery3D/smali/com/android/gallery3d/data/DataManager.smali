.class public Lcom/android/gallery3d/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/android/gallery3d/app/StitchingChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DataManager$1;,
        Lcom/android/gallery3d/data/DataManager$NotifyBroker;,
        Lcom/android/gallery3d/data/DataManager$DateTakenComparator;
    }
.end annotation


# static fields
.field public static final LOCK:Ljava/lang/Object;

.field public static final TOP_IMAGE_SET_PATH:Ljava/lang/String;

.field private static final TOP_SET_PATH:Ljava/lang/String;

.field public static final sDateTakenComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveCount:I

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field private mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/gallery3d/data/DataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/MediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    .line 90
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MTP:Z

    if-eqz v0, :cond_0

    const-string v0, "/combo/{/mtp,/local/all,/picasa/all}"

    :goto_0
    sput-object v0, Lcom/android/gallery3d/data/DataManager;->TOP_SET_PATH:Ljava/lang/String;

    .line 94
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MTP:Z

    if-eqz v0, :cond_1

    const-string v0, "/combo/{/mtp,/local/image,/picasa/image}"

    :goto_1
    sput-object v0, Lcom/android/gallery3d/data/DataManager;->TOP_IMAGE_SET_PATH:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/android/gallery3d/data/DataManager$DateTakenComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/DataManager$DateTakenComparator;-><init>(Lcom/android/gallery3d/data/DataManager$1;)V

    sput-object v0, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    return-void

    .line 90
    :cond_0
    const-string v0, "/combo/{/local/all,/picasa/all}"

    goto :goto_0

    .line 94
    :cond_1
    const-string v0, "/combo/{/local/image,/picasa/image}"

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    .line 161
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    .line 165
    iput-object p1, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    .line 167
    return-void
.end method

.method private updateItem(ILjava/lang/String;Z)Z
    .locals 8
    .parameter "id"
    .parameter "newPath"
    .parameter "isSetPrivate"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 594
    const-string v3, "secure"

    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 595
    .local v0, baseUri:Landroid/net/Uri;
    const-string v2, "_id = ?"

    .line 596
    .local v2, whereClause:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 597
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "_data"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    if-eqz p3, :cond_0

    .line 600
    const-string v3, "isprivate_model"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 606
    return v6

    .line 602
    :cond_0
    const-string v3, "isprivate_model"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method addSource(Lcom/android/gallery3d/data/MediaSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSource;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public broadcastLocalDeletion()V
    .locals 2

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.gallery3d.action.DELETE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 412
    return-void
.end method

.method public delete(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->delete()V

    .line 331
    return-void
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter "uri"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 346
    if-nez p1, :cond_0

    move-object v1, v3

    .line 351
    :goto_0
    return-object v1

    .line 347
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaSource;

    .line 348
    .local v2, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/data/MediaSource;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 349
    .local v1, path:Lcom/android/gallery3d/data/Path;
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #path:Lcom/android/gallery3d/data/Path;
    .end local v2           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_2
    move-object v1, v3

    .line 351
    goto :goto_0
.end method

.method public getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 3
    .parameter "item"

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSource;

    .line 356
    .local v0, source:Lcom/android/gallery3d/data/MediaSource;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSource;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 12
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 227
    sget-object v8, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 228
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    .line 230
    .local v3, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/local/image/secure/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 231
    .local v1, isPrivate:Z
    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 232
    instance-of v7, v3, Lcom/android/gallery3d/data/MapViewAlbumSet;

    if-eqz v7, :cond_1

    .line 233
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getGPSAlbums()Ljava/util/ArrayList;

    move-result-object v2

    .line 234
    .local v2, mGPSAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 235
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const-class v9, Lcom/android/gallery3d/app/PhotoDisplayMap;

    invoke-direct {v0, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v0, intent:Landroid/content/Intent;
    const-string v7, "gpsAlbums"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 237
    const/high16 v7, 0x1400

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    iget-object v7, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit v8

    .line 262
    .end local v2           #mGPSAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #obj:Lcom/android/gallery3d/data/MediaObject;
    :goto_0
    return-object v3

    .line 243
    .restart local v3       #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_1
    monitor-exit v8

    goto :goto_0

    .line 264
    .end local v1           #isPrivate:Z
    .end local v3           #obj:Lcom/android/gallery3d/data/MediaObject;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 248
    .restart local v1       #isPrivate:Z
    .restart local v3       #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaSource;

    .line 249
    .local v5, source:Lcom/android/gallery3d/data/MediaSource;
    if-nez v5, :cond_3

    .line 250
    const-string v9, "DataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot find media source for path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v7

    goto :goto_0

    .line 255
    :cond_3
    :try_start_2
    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/MediaSource;->createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 256
    .local v4, object:Lcom/android/gallery3d/data/MediaObject;
    if-nez v4, :cond_4

    .line 257
    const-string v9, "DataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot create media object: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 259
    :cond_4
    :try_start_3
    monitor-exit v8

    move-object v3, v4

    goto :goto_0

    .line 260
    .end local v4           #object:Lcom/android/gallery3d/data/MediaObject;
    :catch_0
    move-exception v6

    .line 261
    .local v6, t:Ljava/lang/Throwable;
    const-string v9, "DataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception in creating media object: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v7

    goto :goto_0
.end method

.method public getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;
    .locals 1
    .parameter "s"

    .prologue
    .line 268
    invoke-static {p1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "path"

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "s"

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;
    .locals 5
    .parameter "segment"

    .prologue
    .line 280
    invoke-static {p1}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, seq:[Ljava/lang/String;
    array-length v1, v2

    .line 282
    .local v1, n:I
    new-array v3, v1, [Lcom/android/gallery3d/data/MediaSet;

    .line 283
    .local v3, sets:[Lcom/android/gallery3d/data/MediaSet;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 284
    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    return-object v3
.end method

.method public getMediaType(Lcom/android/gallery3d/data/Path;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations(Lcom/android/gallery3d/data/Path;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    return v0
.end method

.method public getTopSetPath(I)Ljava/lang/String;
    .locals 1
    .parameter "typeBits"

    .prologue
    .line 196
    packed-switch p1, :pswitch_data_0

    .line 205
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 197
    :pswitch_1
    sget-object v0, Lcom/android/gallery3d/data/DataManager;->TOP_IMAGE_SET_PATH:Ljava/lang/String;

    .line 204
    :goto_0
    return-object v0

    .line 198
    :pswitch_2
    const-string v0, "/combo/{/local/video,/picasa/video}"

    goto :goto_0

    .line 199
    :pswitch_3
    sget-object v0, Lcom/android/gallery3d/data/DataManager;->TOP_SET_PATH:Ljava/lang/String;

    goto :goto_0

    .line 200
    :pswitch_4
    const-string v0, "/local/image"

    goto :goto_0

    .line 201
    :pswitch_5
    const-string v0, "/local/video"

    goto :goto_0

    .line 202
    :pswitch_6
    const-string v0, "/local/all"

    goto :goto_0

    .line 203
    :pswitch_7
    const-string v0, "/local/image/more"

    goto :goto_0

    .line 204
    :pswitch_8
    const-string v0, "/local/image/secure"

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public declared-synchronized initializeSourceMap()V
    .locals 4

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 192
    :cond_0
    monitor-exit p0

    return-void

    .line 173
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/gallery3d/data/LocalSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/LocalSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 174
    new-instance v2, Lcom/android/gallery3d/picasasource/PicasaSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/picasasource/PicasaSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 175
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_MTP:Z

    if-eqz v2, :cond_2

    .line 176
    new-instance v2, Lcom/android/gallery3d/data/MtpSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/MtpSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 178
    :cond_2
    new-instance v2, Lcom/android/gallery3d/data/ComboSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/ComboSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 179
    new-instance v2, Lcom/android/gallery3d/data/ClusterSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/ClusterSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 180
    new-instance v2, Lcom/android/gallery3d/data/FilterSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/FilterSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 181
    new-instance v2, Lcom/android/gallery3d/data/SecureSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/SecureSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 182
    new-instance v2, Lcom/android/gallery3d/data/UriSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/UriSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 183
    new-instance v2, Lcom/android/gallery3d/data/SnailSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/SnailSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 185
    new-instance v2, Lcom/android/gallery3d/data/MapViewSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/MapViewSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 187
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    if-lez v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 189
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public managePrivateModel(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Z)Z
    .locals 17
    .parameter "path"
    .parameter "filePath"
    .parameter "isSetPrivate"

    .prologue
    .line 549
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 550
    .local v4, mediaObject:Lcom/android/gallery3d/data/MediaObject;
    move-object/from16 v9, p2

    .line 551
    .local v9, originalPath:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 552
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v9

    .line 555
    :cond_0
    const-string v12, "com.yulong.android.crypto.PrivateFile"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-static {v12, v13}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 557
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v2, v12}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 559
    .local v10, privateFile:Ljava/lang/Object;
    const-string v12, "com.yulong.android.crypto.PrivateFile"

    const-string v13, "isPrivateFile"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 562
    .local v5, method:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    .line 563
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    invoke-static {v5, v10, v12}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 564
    .local v3, isPrivate:Z
    move-object v7, v9

    .line 565
    .local v7, newPath:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 566
    const-string v12, "com.yulong.android.crypto.PrivateFile"

    const-string v13, "setPrivateFile"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v12, v10, v13}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #newPath:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 574
    .restart local v7       #newPath:Ljava/lang/String;
    :goto_0
    const/4 v11, 0x0

    .line 575
    .local v11, reNameSuccess:Z
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v8, originalFilePath:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    .local v6, newFilePath:Ljava/io/File;
    invoke-virtual {v8, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    .line 578
    if-eqz v11, :cond_1

    .line 579
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getId()I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v7, v1}, Lcom/android/gallery3d/data/DataManager;->updateItem(ILjava/lang/String;Z)Z

    .line 583
    .end local v3           #isPrivate:Z
    .end local v6           #newFilePath:Ljava/io/File;
    .end local v7           #newPath:Ljava/lang/String;
    .end local v8           #originalFilePath:Ljava/io/File;
    .end local v11           #reNameSuccess:Z
    :cond_1
    const/4 v12, 0x1

    return v12

    .line 570
    .restart local v3       #isPrivate:Z
    .restart local v7       #newPath:Ljava/lang/String;
    :cond_2
    const-string v12, "com.yulong.android.crypto.PrivateFile"

    const-string v13, "cancelPrivateFile"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v12, v10, v13}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #newPath:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7       #newPath:Ljava/lang/String;
    goto :goto_0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V
    .locals 11
    .parameter
    .parameter "consumer"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 301
    .local v5, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 302
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    .line 303
    .local v6, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, prefix:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 305
    .local v1, group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    if-nez v1, :cond_0

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .restart local v1       #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_0
    new-instance v9, Lcom/android/gallery3d/data/MediaSource$PathId;

    add-int v10, v2, p3

    invoke-direct {v9, v6, v10}, Lcom/android/gallery3d/data/MediaSource$PathId;-><init>(Lcom/android/gallery3d/data/Path;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    .end local v1           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    .end local v7           #prefix:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 314
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 315
    .restart local v7       #prefix:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSource;

    .line 316
    .local v8, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v8, v9, p2}, Lcom/android/gallery3d/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    goto :goto_1

    .line 318
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    .end local v7           #prefix:Ljava/lang/String;
    .end local v8           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_2
    return-void
.end method

.method public movePicToSecureBox(Lcom/android/gallery3d/data/Path;)Z
    .locals 8
    .parameter "path"

    .prologue
    .line 508
    const/4 v4, 0x0

    .line 509
    .local v4, saveSuccess:Z
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    .line 510
    .local v3, mediaObject:Lcom/android/gallery3d/data/MediaObject;
    instance-of v5, v3, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v5, :cond_1

    .line 511
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/MediaObject;->moveAlbumToSecureBox(Lcom/android/gallery3d/data/Path;)Z

    move-result v4

    .line 522
    :cond_0
    :goto_0
    return v4

    .line 512
    :cond_1
    instance-of v5, v3, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v5, :cond_0

    .line 513
    const/4 v2, 0x0

    .line 515
    .local v2, isAudioJpeg:Z
    :try_start_0
    move-object v0, v3

    check-cast v0, Lcom/android/gallery3d/data/LocalImage;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/LocalImage;->isAudioImage()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 519
    :goto_1
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/android/gallery3d/data/MediaObject;->movePicToSecureBox(Landroid/net/Uri;Z)Z

    move-result v4

    goto :goto_0

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 401
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    if-nez v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 403
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->pause()V

    goto :goto_0

    .line 406
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-void
.end method

.method public peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 1
    .parameter "path"

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcom/android/gallery3d/data/ChangeNotifier;)V
    .locals 6
    .parameter "uri"
    .parameter "notifier"

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 381
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/gallery3d/data/DataManager$NotifyBroker;

    move-object v1, v0

    .line 382
    if-nez v1, :cond_0

    .line 383
    new-instance v2, Lcom/android/gallery3d/data/DataManager$NotifyBroker;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/DataManager$NotifyBroker;-><init>(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v1           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .local v2, broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 386
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 388
    .end local v2           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v1       #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    invoke-virtual {v1, p2}, Lcom/android/gallery3d/data/DataManager$NotifyBroker;->registerNotifier(Lcom/android/gallery3d/data/ChangeNotifier;)V

    .line 390
    return-void

    .line 388
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v2       #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v1       #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    goto :goto_0
.end method

.method public removePicFromSecureBox(Lcom/android/gallery3d/data/Path;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, saveSuccess:Z
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 532
    .local v0, mediaObject:Lcom/android/gallery3d/data/MediaObject;
    instance-of v2, v0, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v2, :cond_1

    .line 533
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaObject;->removeAlbumFromSecureBox(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    .line 538
    :cond_0
    :goto_0
    return v1

    .line 534
    :cond_1
    instance-of v2, v0, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/gallery3d/data/MediaObject;->removePicFromSecureBox(Lcom/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public removePrivateModelPic(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "path"
    .parameter "filePath"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 615
    iget-object v6, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 616
    .local v1, context:Landroid/content/Context;
    const-string v6, "coolpadSystem"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 620
    .local v3, mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    const-string v6, "com.yulong.android.crypto.PrivateFile"

    new-array v7, v10, [Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 622
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 624
    .local v5, privateFile:Ljava/lang/Object;
    const-string v6, "com.yulong.android.crypto.PrivateFile"

    const-string v7, "isPrivateFile"

    new-array v8, v11, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 627
    .local v4, method:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 628
    new-array v6, v11, [Ljava/lang/Object;

    aput-object p2, v6, v10

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 629
    .local v2, isPrivate:Z
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/yulong/android/server/systeminterface/SystemManager;->isPrivateMode()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 632
    const-string v6, "com.yulong.android.crypto.PrivateFile"

    const-string v7, "cancelPrivateFile"

    new-array v8, v11, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p2, v7, v10

    invoke-static {v6, v5, v7}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    .line 639
    .end local v2           #isPrivate:Z
    .restart local p2
    :cond_0
    return-object p2
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 393
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 394
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 395
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->resume()V

    goto :goto_0

    .line 398
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-void
.end method

.method public rotate(Lcom/android/gallery3d/data/Path;I)V
    .locals 1
    .parameter "path"
    .parameter "degrees"

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/data/MediaObject;->rotate(I)V

    .line 335
    return-void
.end method

.method public savePicToCollect(Lcom/android/gallery3d/data/Path;)Z
    .locals 15
    .parameter "path"

    .prologue
    .line 464
    iget-object v13, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v13}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 465
    .local v7, mResources:Landroid/content/res/Resources;
    const/4 v12, 0x0

    .line 466
    .local v12, saveSuccess:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, availablePath:Ljava/lang/String;
    const/4 v10, 0x0

    .line 469
    .local v10, resultDir:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .local v11, rootFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, lists:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v13, v6

    if-ge v3, v13, :cond_0

    .line 472
    aget-object v13, v6, v3

    const-string v14, "coolpad"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 473
    aget-object v10, v6, v3

    .line 478
    :cond_0
    if-nez v10, :cond_2

    .line 479
    const v13, 0x7f0e0113

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, collected:Ljava/lang/String;
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    const-string v9, ""

    .line 489
    .local v9, result:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v8

    .line 490
    .local v8, mediaObject:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, itemFilePath:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v8, v13, v4, v2}, Lcom/android/gallery3d/data/MediaObject;->savePicToCollect(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 494
    if-eqz v12, :cond_3

    .line 495
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f0e012e

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 499
    :goto_2
    iget-object v13, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v13}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v9, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 501
    return v12

    .line 471
    .end local v2           #collected:Ljava/lang/String;
    .end local v4           #itemFilePath:Ljava/lang/String;
    .end local v8           #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    .end local v9           #result:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    :cond_2
    const v13, 0x7f0e0113

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, collecte:Ljava/lang/String;
    const-string v13, "/"

    invoke-virtual {v1, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 484
    .local v5, len:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #collected:Ljava/lang/String;
    goto :goto_1

    .line 497
    .end local v1           #collecte:Ljava/lang/String;
    .end local v5           #len:I
    .restart local v4       #itemFilePath:Ljava/lang/String;
    .restart local v8       #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    .restart local v9       #result:Ljava/lang/String;
    :cond_3
    const v13, 0x7f0e012f

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method
