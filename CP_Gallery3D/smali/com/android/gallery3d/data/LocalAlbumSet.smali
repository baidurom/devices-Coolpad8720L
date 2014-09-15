.class public Lcom/android/gallery3d/data/LocalAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/gallery3d/data/MediaSet;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final PATH_ALL:Lcom/android/gallery3d/data/Path;

.field public static final PATH_IMAGE:Lcom/android/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcom/android/gallery3d/data/Path;

.field private static final PROJECTION_BUCKET:[Ljava/lang/String;

.field private static final PROJECTION_BUCKET_SEC:[Ljava/lang/String;

.field private static final mWatchUris:[Landroid/net/Uri;


# instance fields
.field private isHasAudioJpeg:Z

.field public isHasImageNum:Z

.field public isHasPrivate:Z

.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private mOrder:Z

.field private mSupportSecureBox:Z

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcom/android/gallery3d/data/Path;

    .line 60
    const-string v0, "/local/image"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    .line 61
    const-string v0, "/local/video"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    .line 65
    new-array v0, v5, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    const-string v1, "secure"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUris:[Landroid/net/Uri;

    .line 97
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v2

    const-string v1, "media_type"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    .line 101
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET_SEC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "path"
    .parameter "application"

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 77
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mSupportSecureBox:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasImageNum:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasAudioJpeg:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasPrivate:Z

    .line 86
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mOrder:Z

    .line 114
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    .line 116
    invoke-static {p1}, Lcom/android/gallery3d/data/LocalAlbumSet;->getTypeFromPath(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    .line 117
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 118
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public static getFilesContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 343
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;Z)Lcom/android/gallery3d/data/MediaSet;
    .locals 16
    .parameter "manager"
    .parameter "type"
    .parameter "parent"
    .parameter "id"
    .parameter "name"
    .parameter "isOutPrivate"

    .prologue
    .line 162
    sget-object v13, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v13

    .line 163
    :try_start_0
    invoke-virtual/range {p3 .. p4}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 164
    .local v2, path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v12

    .line 165
    .local v12, object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v12, :cond_0

    if-nez p6, :cond_0

    .line 166
    move-object v0, v12

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    move-object v10, v0

    .line 167
    .local v10, album:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v10}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 168
    check-cast v12, Lcom/android/gallery3d/data/MediaSet;

    .end local v12           #object:Lcom/android/gallery3d/data/MediaObject;
    monitor-exit v13

    move-object v1, v12

    .line 187
    .end local v10           #album:Lcom/android/gallery3d/data/MediaSet;
    :goto_0
    return-object v1

    .line 170
    .restart local v12       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    .end local v12           #object:Lcom/android/gallery3d/data/MediaObject;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 172
    .restart local v2       #path:Lcom/android/gallery3d/data/Path;
    .restart local v12       #object:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_0
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/data/LocalAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasAudioJpeg:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasPrivate:Z

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;ZZ)V

    monitor-exit v13

    goto :goto_0

    .line 175
    :sswitch_1
    new-instance v1, Lcom/android/gallery3d/data/LocalAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasAudioJpeg:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasPrivate:Z

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;ZZZ)V

    monitor-exit v13

    goto :goto_0

    .line 178
    :sswitch_2
    new-instance v1, Lcom/android/gallery3d/data/LocalAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasAudioJpeg:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasPrivate:Z

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;ZZ)V

    monitor-exit v13

    goto :goto_0

    .line 181
    :sswitch_3
    new-instance v1, Lcom/android/gallery3d/data/LocalAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasAudioJpeg:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasPrivate:Z

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;ZZ)V

    monitor-exit v13

    goto :goto_0

    .line 184
    :sswitch_4
    sget-object v11, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 187
    .local v11, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    new-instance v1, Lcom/android/gallery3d/data/LocalMergeAlbum;

    const/4 v3, 0x2

    new-array v14, v3, [Lcom/android/gallery3d/data/MediaSet;

    const/4 v15, 0x0

    const/4 v5, 0x2

    sget-object v6, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;Z)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    aput-object v3, v14, v15

    const/4 v15, 0x1

    const/4 v5, 0x4

    sget-object v6, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;Z)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    aput-object v3, v14, v15

    move/from16 v0, p4

    invoke-direct {v1, v2, v11, v14, v0}, Lcom/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;I)V

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 170
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getTypeFromPath(Lcom/android/gallery3d/data/Path;)I
    .locals 6
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x2

    .line 123
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, name:[Ljava/lang/String;
    array-length v3, v1

    if-ge v3, v5, :cond_0

    .line 125
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_0
    const-string v3, "image"

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v1

    if-le v3, v5, :cond_1

    move v0, v2

    .line 128
    .local v0, isMoreOrSecure:Z
    :goto_0
    if-eqz v0, :cond_2

    const-string v3, "more"

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    const/16 v2, 0x8

    .line 133
    :goto_1
    return v2

    .line 127
    .end local v0           #isMoreOrSecure:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    .restart local v0       #isMoreOrSecure:Z
    :cond_2
    if-eqz v0, :cond_3

    const-string v3, "secure"

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    const/16 v2, 0x10

    goto :goto_1

    .line 133
    :cond_3
    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/android/gallery3d/data/LocalAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method private loadBucketEntriesFromFilesTable(Landroid/database/Cursor;)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .locals 22
    .parameter "cursor"

    .prologue
    .line 348
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v4, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v2, allEntryBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v5, cameraBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v18, stairBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/data/LocalAlbumSet;->getCameraBuffer(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/LocalAlbumSet;->getBuffer(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v18

    .line 357
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v6, cameraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    const/4 v12, 0x0

    .line 360
    .local v12, imageDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e02e8

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 362
    .local v17, myCameraAlbum:Ljava/lang/String;
    const/16 v19, 0x0

    .line 363
    .local v19, typeBits:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_0

    .line 364
    or-int/lit8 v19, v19, 0x2

    .line 366
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x4

    if-eqz v20, :cond_1

    .line 367
    or-int/lit8 v19, v19, 0x8

    .line 369
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x8

    if-eqz v20, :cond_2

    .line 370
    or-int/lit8 v19, v19, 0x2

    .line 378
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v15

    .line 379
    .local v15, internalSdRootDir:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v9

    .line 380
    .local v9, externalSdRootDir:Ljava/lang/String;
    const/4 v14, 0x0

    .line 381
    .local v14, internalSdOutMore:Ljava/lang/String;
    const/4 v8, 0x0

    .line 382
    .local v8, externalSdOutMore:Ljava/lang/String;
    if-eqz v15, :cond_3

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/galleryAlbum"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 383
    :cond_3
    if-eqz v9, :cond_4

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/galleryAlbum"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 385
    :cond_4
    :goto_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 387
    if-eqz p1, :cond_5

    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    if-nez v20, :cond_6

    .line 438
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 442
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_b

    .line 443
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 442
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 391
    .end local v10           #i:I
    :cond_6
    const/16 v20, 0x3

    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v11

    .line 392
    .local v11, imageDataLen:I
    if-lez v11, :cond_7

    .line 393
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 394
    .local v13, imageDirLen:I
    if-ge v13, v11, :cond_7

    .line 395
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 397
    .end local v13           #imageDirLen:I
    :cond_7
    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    shl-int v20, v20, v21

    and-int v20, v20, v19

    if-eqz v20, :cond_4

    .line 398
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 399
    .local v3, bucket_id:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/LocalAlbumSet;->isDisplayAlbum(I)Z

    move-result v16

    .line 400
    .local v16, isDisplayAlbum:Z
    if-eqz v16, :cond_4

    .line 401
    new-instance v7, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v21, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 404
    .local v7, entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 405
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_8
    if-eqz v12, :cond_4

    .line 411
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 412
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 438
    .end local v3           #bucket_id:I
    .end local v7           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .end local v11           #imageDataLen:I
    .end local v16           #isDisplayAlbum:Z
    :catchall_0
    move-exception v20

    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v20

    .line 414
    .restart local v3       #bucket_id:I
    .restart local v7       #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .restart local v11       #imageDataLen:I
    .restart local v16       #isDisplayAlbum:Z
    :cond_9
    if-eqz v14, :cond_a

    :try_start_2
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 415
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 416
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_a
    if-eqz v8, :cond_4

    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 420
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 421
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 447
    .end local v3           #bucket_id:I
    .end local v7           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .end local v11           #imageDataLen:I
    .end local v16           #isDisplayAlbum:Z
    .restart local v10       #i:I
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/gallery3d/data/LocalAlbumSet;->getBucketEntry(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 449
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    return-object v20
.end method

.method private loadBucketEntriesFromSecureTable()[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 601
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v8, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    const-string v0, "secure"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 603
    .local v1, mBaseUri:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 604
    .local v13, secureCursor:Landroid/database/Cursor;
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasImageNum:Z

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET_SEC:[Ljava/lang/String;

    const-string v3, "1) GROUP BY 1,(2"

    const-string v5, "image_number ASC, MIN(date_added) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 612
    :goto_0
    if-nez v13, :cond_1

    .line 613
    const-string v0, "LocalAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot open local database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :goto_1
    return-object v4

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET_SEC:[Ljava/lang/String;

    const-string v3, "1) GROUP BY 1,(2"

    const-string v5, "MAX(datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_0

    .line 618
    :cond_1
    :goto_2
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 620
    .local v11, mimeType:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v6

    .line 621
    .local v6, FileType:I
    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v10

    .line 622
    .local v10, isImage:Z
    if-eqz v10, :cond_1

    .line 623
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 625
    .local v7, albumName:Ljava/lang/String;
    const-string v0, "yulong_secure"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 627
    .local v12, resources:Landroid/content/res/Resources;
    const v0, 0x7f0e0136

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 629
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_2
    new-instance v9, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {v9, v0, v7}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 631
    .local v9, entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 637
    .end local v6           #FileType:I
    .end local v7           #albumName:Ljava/lang/String;
    .end local v9           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .end local v10           #isImage:Z
    .end local v11           #mimeType:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_3
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 639
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    move-object v4, v0

    goto :goto_1
.end method


# virtual methods
.method public addCameraOrSecureEntry(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 545
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->internalCameraId()I

    move-result v2

    .line 546
    .local v2, inCameraId:I
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->externalCameraId()I

    move-result v0

    .line 547
    .local v0, exCameraId:I
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0e0136

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, secureBox:Ljava/lang/String;
    const/4 v4, 0x0

    .line 550
    .local v4, secureEntry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    iget-boolean v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mSupportSecureBox:Z

    if-eqz v5, :cond_0

    .line 551
    new-instance v4, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .end local v4           #secureEntry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    const-string v5, "/data/yulong_secure/"

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-direct {v4, v5, v3}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 555
    .restart local v4       #secureEntry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 556
    invoke-virtual {p0, p1, v4}, Lcom/android/gallery3d/data/LocalAlbumSet;->addCameraOrSecureEntry(Ljava/util/ArrayList;Lcom/android/gallery3d/data/BucketHelper$BucketEntry;)V

    .line 578
    :cond_1
    :goto_0
    return-void

    .line 557
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 558
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    iget v5, v5, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-eq v5, v2, :cond_3

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    iget v5, v5, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v5, v0, :cond_4

    :cond_3
    move v1, v7

    .line 561
    .local v1, hasOneCamera:Z
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v7, :cond_5

    if-eqz v1, :cond_5

    .line 562
    iget-boolean v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mSupportSecureBox:Z

    if-eqz v5, :cond_1

    invoke-virtual {p1, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .end local v1           #hasOneCamera:Z
    :cond_4
    move v1, v6

    .line 558
    goto :goto_1

    .line 564
    .restart local v1       #hasOneCamera:Z
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 565
    invoke-virtual {p0, p1, v4}, Lcom/android/gallery3d/data/LocalAlbumSet;->addCameraOrSecureEntry(Ljava/util/ArrayList;Lcom/android/gallery3d/data/BucketHelper$BucketEntry;)V

    goto :goto_0

    .line 567
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v7, :cond_1

    .line 568
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    iget v5, v5, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v5, v0, :cond_7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    iget v5, v5, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v5, v2, :cond_7

    .line 570
    iget-boolean v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mSupportSecureBox:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 571
    :cond_7
    if-eqz v1, :cond_8

    .line 572
    iget-boolean v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mSupportSecureBox:Z

    if-eqz v5, :cond_1

    invoke-virtual {p1, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 574
    :cond_8
    invoke-virtual {p0, p1, v4}, Lcom/android/gallery3d/data/LocalAlbumSet;->addCameraOrSecureEntry(Ljava/util/ArrayList;Lcom/android/gallery3d/data/BucketHelper$BucketEntry;)V

    goto :goto_0
.end method

.method public addCameraOrSecureEntry(Ljava/util/ArrayList;Lcom/android/gallery3d/data/BucketHelper$BucketEntry;)V
    .locals 10
    .parameter
    .parameter "secureEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    const/4 v9, 0x0

    .line 581
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->internalCameraId()I

    move-result v4

    .line 582
    .local v4, inCameraId:I
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->externalCameraId()I

    move-result v1

    .line 583
    .local v1, exCameraId:I
    const/4 v2, 0x2

    .line 584
    .local v2, external:I
    invoke-static {v2}, Lcom/android/gallery3d/util/CacheManager;->getSdcardState(I)Z

    move-result v5

    .line 586
    .local v5, isExsdcard:Z
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0101

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 587
    .local v6, myCamreName:Ljava/lang/String;
    new-instance v3, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-direct {v3, v4, v6}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 588
    .local v3, inCameraEntry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    new-instance v0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-direct {v0, v1, v6}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 589
    .local v0, exCameraEntry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    if-nez v5, :cond_1

    .line 590
    invoke-virtual {p1, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 594
    :goto_0
    if-eqz p2, :cond_0

    iget-boolean v7, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mSupportSecureBox:Z

    if-eqz v7, :cond_0

    .line 595
    const/4 v7, 0x1

    invoke-virtual {p1, v7, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 596
    :cond_0
    return-void

    .line 592
    :cond_1
    invoke-virtual {p1, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
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
    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBucketEntry(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, cameraBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    .local p2, stairBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    .local p3, allEntryBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v13}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 469
    .local v12, resources:Landroid/content/res/Resources;
    const v13, 0x7f0e0124

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 470
    .local v11, moreSet:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v3, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    const/4 v7, 0x0

    .line 478
    .local v7, index:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_3

    .line 479
    const/4 v8, 0x0

    .line 480
    .local v8, isFind:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .line 481
    .local v4, entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    iget v2, v4, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    .line 482
    .local v2, bucketId:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_1

    .line 483
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    iget v13, v13, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v2, v13, :cond_0

    .line 484
    invoke-virtual {v3, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 485
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 486
    add-int/lit8 v9, v9, -0x1

    .line 487
    add-int/lit8 v7, v7, 0x1

    .line 488
    const/4 v8, 0x1

    .line 490
    :cond_0
    if-eqz v8, :cond_2

    .line 478
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 482
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 496
    .end local v2           #bucketId:I
    .end local v4           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .end local v8           #isFind:Z
    .end local v9           #j:I
    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_7

    .line 497
    const/4 v8, 0x0

    .line 498
    .restart local v8       #isFind:Z
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .line 499
    .restart local v4       #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    iget v2, v4, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    .line 500
    .restart local v2       #bucketId:I
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_5

    .line 501
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    iget v13, v13, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v2, v13, :cond_4

    .line 502
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 503
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 504
    add-int/lit8 v7, v7, 0x1

    .line 505
    add-int/lit8 v6, v6, -0x1

    .line 506
    const/4 v8, 0x1

    .line 508
    :cond_4
    if-eqz v8, :cond_6

    .line 496
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 500
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 513
    .end local v2           #bucketId:I
    .end local v4           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .end local v8           #isFind:Z
    .end local v9           #j:I
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_9

    .line 514
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/LocalAlbumSet;->addCameraOrSecureEntry(Ljava/util/ArrayList;)V

    .line 515
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 516
    new-instance v10, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    const/4 v13, 0x0

    invoke-direct {v10, v13, v11}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 517
    .local v10, moreEntry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .end local v10           #moreEntry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    :cond_8
    :goto_4
    return-object v3

    .line 519
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_8

    .line 521
    const/4 v6, 0x0

    :goto_5
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_d

    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, breakFor:Z
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_b

    .line 524
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    iget v14, v13, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    iget v13, v13, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v14, v13, :cond_a

    .line 526
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    add-int/lit8 v6, v6, -0x1

    .line 528
    const/4 v1, 0x1

    .line 530
    :cond_a
    if-eqz v1, :cond_c

    .line 521
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 523
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 533
    .end local v1           #breakFor:Z
    .end local v9           #j:I
    :cond_d
    move-object/from16 v3, p3

    goto :goto_4

    .line 535
    :catch_0
    move-exception v5

    .line 536
    .local v5, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v13, "LocalAlbumSet"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 537
    .end local v5           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    throw v13
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    return v0
.end method

.method public getBuffer(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v8, listBucketName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v11}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 706
    .local v10, resources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v6

    .line 707
    .local v6, internalSdRootDir:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    .line 709
    .local v3, externalSdRootDir:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 710
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0e0115

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0e0116

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0e0117

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0e0118

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0e0119

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, imageShow:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "01"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "02"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "03"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "04"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "05"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "06"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "07"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    const v11, 0x7f0e011e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    const v11, 0x7f0e011f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    const v11, 0x7f0e0120

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    const v11, 0x7f0e0121

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    const v11, 0x7f0e0122

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 728
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "01"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "02"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "03"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "04"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "05"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "06"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "07"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    .end local v5           #imageShow:Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 738
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0e0114

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0e0115

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0e0116

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0e0117

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0e0118

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    iget-object v11, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v11}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0e0129

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 746
    .local v9, mExsdcardname:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0e011d

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0e011e

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0e011f

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0e0120

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0e0121

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    .end local v9           #mExsdcardname:Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v11, v12, :cond_2

    .line 758
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "list.size() != listBucketName.size()"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 764
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 765
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, StrUri:Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, bucketName:Ljava/lang/String;
    new-instance v2, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-direct {v2, v11, v1}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 785
    .local v2, entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 788
    .end local v0           #StrUri:Ljava/lang/String;
    .end local v1           #bucketName:Ljava/lang/String;
    .end local v2           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    :cond_3
    return-object p1
.end method

.method public getCameraBuffer(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 647
    .local v15, resources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v10

    .line 648
    .local v10, internalSdRootDir:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v8

    .line 649
    .local v8, externalSdRootDir:Ljava/lang/String;
    const v19, 0x7f0e0112

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 650
    .local v4, camera:Ljava/lang/String;
    if-eqz v8, :cond_0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_0
    if-eqz v10, :cond_1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f0e0129

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 656
    .local v13, mExsdcardname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f0e012a

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 659
    .local v14, mSdcardname:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_4

    .line 660
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, StrUri:Ljava/lang/String;
    const v19, 0x7f0e011b

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, bucketName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    const-string v20, "mounted"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 667
    if-eqz v8, :cond_3

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 668
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 674
    :cond_2
    :goto_1
    new-instance v6, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v6, v0, v3}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 676
    .local v6, entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 671
    .end local v6           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 679
    .end local v2           #StrUri:Ljava/lang/String;
    .end local v3           #bucketName:Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_5

    .line 680
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0e0113

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 681
    .local v5, collectPic:Ljava/lang/String;
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 682
    .local v11, len:I
    const v19, 0x7f0e011c

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 683
    .restart local v3       #bucketName:Ljava/lang/String;
    new-instance v6, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v6, v0, v3}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 685
    .restart local v6       #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    .end local v3           #bucketName:Ljava/lang/String;
    .end local v5           #collectPic:Ljava/lang/String;
    .end local v6           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .end local v11           #len:I
    :cond_5
    if-eqz v10, :cond_6

    .line 688
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0e0114

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 689
    .local v16, savePic:Ljava/lang/String;
    const-string v19, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    .line 690
    .local v18, savePiclen:I
    const v19, 0x7f0e011d

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 691
    .local v17, savePicName:Ljava/lang/String;
    new-instance v7, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 693
    .local v7, entry1:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    .end local v7           #entry1:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .end local v16           #savePic:Ljava/lang/String;
    .end local v17           #savePicName:Ljava/lang/String;
    .end local v18           #savePiclen:I
    :cond_6
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isDisplayAlbum(I)Z
    .locals 1
    .parameter "bucket_id"

    .prologue
    .line 455
    const v0, 0x33216d8e

    if-eq p1, v0, :cond_0

    const v0, -0x2e5f70a3

    if-eq p1, v0, :cond_0

    const v0, -0x6c34b3ec

    if-eq p1, v0, :cond_0

    const v0, -0x383d865b

    if-eq p1, v0, :cond_0

    const v0, -0x2fc91b64

    if-eq p1, v0, :cond_0

    const v0, 0x20bdae05

    if-eq p1, v0, :cond_0

    const v0, 0x11093599

    if-eq p1, v0, :cond_0

    const v0, -0x1c6db71

    if-eq p1, v0, :cond_0

    const v0, 0x2293b53d

    if-eq p1, v0, :cond_0

    const v0, 0x21f70390

    if-eq p1, v0, :cond_0

    const v0, -0x7cbff074

    if-eq p1, v0, :cond_0

    const v0, 0x15fb5997

    if-eq p1, v0, :cond_0

    const v0, 0x63c17fa1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasColumnIndex(Ljava/lang/String;)Z
    .locals 9
    .parameter "columnIndex"

    .prologue
    const/4 v2, 0x0

    .line 798
    const/4 v6, 0x0

    .line 799
    .local v6, hasColumnIndex:Z
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 802
    .local v8, mCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 803
    const/4 v6, 0x0

    .line 808
    :goto_0
    if-nez v8, :cond_1

    move v7, v6

    .line 815
    .end local v6           #hasColumnIndex:Z
    .local v7, hasColumnIndex:I
    :goto_1
    return v7

    .line 805
    .end local v7           #hasColumnIndex:I
    .restart local v6       #hasColumnIndex:Z
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 810
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v7, v6

    .line 815
    .restart local v7       #hasColumnIndex:I
    goto :goto_1

    .line 808
    .end local v7           #hasColumnIndex:I
    :catchall_0
    move-exception v0

    if-nez v8, :cond_2

    move v7, v6

    .restart local v7       #hasColumnIndex:I
    goto :goto_1

    .line 810
    .end local v7           #hasColumnIndex:I
    :cond_2
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 813
    :goto_3
    throw v0

    .line 811
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadSubMediaSets(Z)Ljava/util/ArrayList;
    .locals 25
    .parameter "isOutPrivate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    sget-boolean v11, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    .line 281
    .local v11, FilesTable:Z
    const/16 v17, 0x0

    .line 283
    .local v17, entries:[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    const-string v2, "com.yulong.android.feature.FeatureConfig"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v4}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 285
    .local v15, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v15, v2}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 286
    .local v21, instance:Ljava/lang/Object;
    const-string v2, "com.yulong.android.feature.FeatureConfig"

    const-string v4, "getBooleanValue"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v2, v4, v6}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    .line 288
    .local v23, method:Ljava/lang/reflect/Method;
    const-string v2, "image_number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasColumnIndex(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasImageNum:Z

    .line 291
    const-string v2, "isprivate_model"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasColumnIndex(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasPrivate:Z

    .line 292
    if-eqz v23, :cond_0

    .line 293
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "enable_secure"

    aput-object v6, v2, v4

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mSupportSecureBox:Z

    .line 296
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mOrder:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/data/LocalAlbumSet;->orderAlbumSets()V

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    const/16 v4, 0x10

    if-ne v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mSupportSecureBox:Z

    if-eqz v2, :cond_3

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/data/LocalAlbumSet;->loadBucketEntriesFromSecureTable()[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    move-result-object v17

    .line 299
    if-nez v17, :cond_6

    .line 300
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 339
    :cond_2
    :goto_0
    return-object v13

    .line 302
    :cond_3
    if-eqz v11, :cond_8

    .line 303
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->getFilesContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 304
    .local v3, uri:Landroid/net/Uri;
    const/16 v16, 0x0

    .line 305
    .local v16, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasImageNum:Z

    if-eqz v2, :cond_4

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v5, "1) GROUP BY 1,(2"

    const/4 v6, 0x0

    const-string v7, "image_number ASC, MIN(date_added) DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 313
    :goto_1
    if-nez v16, :cond_5

    .line 314
    const-string v2, "LocalAlbumSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot open local database: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 309
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v5, "1) GROUP BY 1,(2"

    const/4 v6, 0x0

    const-string v7, "MAX(datetaken) DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    goto :goto_1

    .line 317
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalAlbumSet;->loadBucketEntriesFromFilesTable(Landroid/database/Cursor;)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    move-result-object v17

    .line 322
    .end local v3           #uri:Landroid/net/Uri;
    .end local v16           #cursor:Landroid/database/Cursor;
    :cond_6
    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v13, albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    .line 325
    .local v5, dataManager:Lcom/android/gallery3d/data/DataManager;
    move-object/from16 v14, v17

    .local v14, arr$:[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    array-length v0, v14

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v18, v14, v20

    .line 326
    .local v18, entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v4, p0

    move/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;Z)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v12

    .line 328
    .local v12, album:Lcom/android/gallery3d/data/MediaSet;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    const/16 v4, 0x10

    if-ne v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mSupportSecureBox:Z

    if-eqz v2, :cond_9

    .line 329
    invoke-virtual {v12}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 330
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_7
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 319
    .end local v5           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v12           #album:Lcom/android/gallery3d/data/MediaSet;
    .end local v13           #albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    .end local v14           #arr$:[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .end local v18           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .end local v20           #i$:I
    .end local v22           #len$:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    invoke-static {v2, v4}, Lcom/android/gallery3d/data/BucketHelper;->loadBucketEntries(Landroid/content/ContentResolver;I)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    move-result-object v17

    goto :goto_2

    .line 332
    .restart local v5       #dataManager:Lcom/android/gallery3d/data/DataManager;
    .restart local v12       #album:Lcom/android/gallery3d/data/MediaSet;
    .restart local v13       #albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    .restart local v14       #arr$:[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .restart local v18       #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .restart local v20       #i$:I
    .restart local v22       #len$:I
    :cond_9
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 336
    .end local v12           #album:Lcom/android/gallery3d/data/MediaSet;
    .end local v18           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    :cond_a
    const/16 v19, 0x0

    .local v19, i:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v24

    .local v24, n:I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 337
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    .line 336
    add-int/lit8 v19, v19, 0x1

    goto :goto_5
.end method

.method public declared-synchronized onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 233
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mIsLoading:Z

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/data/LocalAlbumSet$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/LocalAlbumSet$1;-><init>(Lcom/android/gallery3d/data/LocalAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public orderAlbumSets()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 257
    iget-boolean v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->isHasImageNum:Z

    if-nez v5, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-boolean v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mOrder:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 259
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 260
    .local v0, baseUri:Landroid/net/Uri;
    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_2

    iget-boolean v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mSupportSecureBox:Z

    if-eqz v5, :cond_2

    .line 261
    const-string v5, "secure"

    invoke-static {v5}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 263
    :cond_2
    const-string v4, "bucket_id = ?"

    .line 264
    .local v4, whereClause:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v5, 0x3

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 266
    .local v3, values:Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 267
    const-string v5, "image_number"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    .line 270
    .local v1, bucketId:I
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v0, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 274
    .end local v1           #bucketId:I
    :cond_3
    iput-boolean v8, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mOrder:Z

    goto :goto_0
.end method

.method public declared-synchronized reload()J
    .locals 2

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/LocalAlbumSet;->loadSubMediaSets(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 211
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reloadPrivateModel()V
    .locals 2

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/LocalAlbumSet;->loadSubMediaSets(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAlbumSets(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 251
    .local p1, albumSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mOrder:Z

    .line 253
    return-void
.end method
