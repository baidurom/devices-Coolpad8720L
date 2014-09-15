.class public Lcom/android/gallery3d/data/LocalAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private isHasAudioImage:Z

.field private final isHasPrivate:Z

.field private mAlbumDir:Ljava/lang/String;

.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field public final mHasCrypto:Z

.field private final mIsImage:Z

.field private final mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;ZZ)V
    .locals 3
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"
    .parameter "name"
    .parameter "hasImageNum"
    .parameter "hasPrivate"

    .prologue
    .line 75
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->isHasAudioImage:Z

    .line 76
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 77
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 78
    iput p3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    .line 79
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3, p5}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 80
    iput-boolean p4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    .line 81
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_CRYPTO:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mHasCrypto:Z

    .line 83
    const-string v0, "LocalAlbum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zjj @@@1 isHasAudioImage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->isHasAudioImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-boolean p7, p0, Lcom/android/gallery3d/data/LocalAlbum;->isHasPrivate:Z

    .line 86
    if-eqz p4, :cond_1

    .line 87
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 88
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 90
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 91
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->isHasAudioImage:Z

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION_HASAUDIO:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 95
    :goto_0
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 104
    :goto_1
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 106
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 98
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 100
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 101
    sget-object v0, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;ZZZ)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"
    .parameter "name"
    .parameter "isSecure"
    .parameter "hasImageNum"
    .parameter "hasPrivate"

    .prologue
    .line 110
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->isHasAudioImage:Z

    .line 111
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 112
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 113
    iput p3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    .line 114
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3, p5}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 115
    iput-boolean p4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    .line 116
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_CRYPTO:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mHasCrypto:Z

    .line 119
    iput-boolean p8, p0, Lcom/android/gallery3d/data/LocalAlbum;->isHasPrivate:Z

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/LocalAlbum;->initWhereClause([Ljava/lang/String;)[Ljava/lang/String;

    .line 121
    const-string v0, "_id DESC, datetaken DESC"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 123
    const-string v0, "secure"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 124
    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->isHasAudioImage:Z

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION_HASAUDIO:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 130
    :goto_0
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_SECURE_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 131
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 132
    return-void

    .line 126
    :cond_0
    if-eqz p4, :cond_1

    .line 127
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_1
    sget-object v0, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZZZ)V
    .locals 8
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"
    .parameter "hasImageNum"
    .parameter "hasPrivate"

    .prologue
    .line 136
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/gallery3d/data/BucketHelper;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;ZZ)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZZZZ)V
    .locals 9
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"
    .parameter "isSecure"
    .parameter "hasImageNum"
    .parameter "hasPrivate"

    .prologue
    .line 143
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/gallery3d/data/BucketHelper;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;ZZZ)V

    .line 146
    return-void
.end method

.method public static get(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 532
    packed-switch p0, :pswitch_data_0

    .line 538
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mCameraName:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 534
    :pswitch_0
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSdcardCameraName:Ljava/lang/String;

    goto :goto_0

    .line 536
    :pswitch_1
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mExsdcardCameraName:Ljava/lang/String;

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "id"

    .prologue
    .line 398
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "res"
    .parameter "bucketId"
    .parameter "name"

    .prologue
    .line 514
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->internalCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 515
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/gallery3d/data/LocalAlbum;->get(I)Ljava/lang/String;

    move-result-object p2

    .line 527
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 516
    .restart local p2
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->externalCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 517
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/gallery3d/data/LocalAlbum;->get(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 518
    :cond_2
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p1, v0, :cond_3

    .line 519
    const v0, 0x7f0e0102

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 520
    :cond_3
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p1, v0, :cond_4

    .line 521
    const v0, 0x7f0e0104

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 524
    :cond_4
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    if-ne p1, v0, :cond_0

    .line 525
    const v0, 0x7f0e0103

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;ZZLjava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 20
    .parameter "application"
    .parameter "isImage"
    .parameter "isSecure"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/app/GalleryApp;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/android/gallery3d/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 334
    .local p3, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/android/gallery3d/data/MediaItem;

    move-object/from16 v18, v0

    .line 335
    .local v18, result:[Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 392
    :goto_0
    return-object v18

    .line 336
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 337
    .local v14, idLow:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 343
    .local v13, idHigh:I
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 344
    const-string v5, "secure"

    invoke-static {v5}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 345
    .local v3, baseUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 346
    .local v4, projection:[Ljava/lang/String;
    sget-object v16, Lcom/android/gallery3d/data/LocalImage;->ITEM_SECURE_PATH:Lcom/android/gallery3d/data/Path;

    .line 357
    .local v16, itemPath:Lcom/android/gallery3d/data/Path;
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 358
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    .line 359
    .local v10, dataManager:Lcom/android/gallery3d/data/DataManager;
    const-string v5, "_id BETWEEN ? AND ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 362
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_3

    .line 363
    const-string v5, "LocalAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #baseUri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v16           #itemPath:Lcom/android/gallery3d/data/Path;
    :cond_1
    if-eqz p1, :cond_2

    .line 348
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 349
    .restart local v3       #baseUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 350
    .restart local v4       #projection:[Ljava/lang/String;
    sget-object v16, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .restart local v16       #itemPath:Lcom/android/gallery3d/data/Path;
    goto :goto_1

    .line 352
    .end local v3           #baseUri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v16           #itemPath:Lcom/android/gallery3d/data/Path;
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 353
    .restart local v3       #baseUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 354
    .restart local v4       #projection:[Ljava/lang/String;
    sget-object v16, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .restart local v16       #itemPath:Lcom/android/gallery3d/data/Path;
    goto :goto_1

    .line 367
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #dataManager:Lcom/android/gallery3d/data/DataManager;
    :cond_3
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 368
    .local v17, n:I
    const/4 v11, 0x0

    .line 370
    .local v11, i:I
    :cond_4
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 371
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 374
    .local v12, id:I
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v12, :cond_4

    .line 378
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ge v5, v12, :cond_6

    .line 379
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_5

    .line 392
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 384
    :cond_6
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v8

    .line 385
    .local v8, childPath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v8, v9, v10, v0, v1}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v15

    .line 387
    .local v15, item:Lcom/android/gallery3d/data/MediaItem;
    aput-object v15, v18, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    add-int/lit8 v11, v11, 0x1

    .line 389
    goto :goto_2

    .line 392
    .end local v8           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v12           #id:I
    .end local v15           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #i:I
    .end local v17           #n:I
    :catchall_0
    move-exception v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private static loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;
    .locals 3
    .parameter "path"
    .parameter "cursor"
    .parameter "dataManager"
    .parameter "app"
    .parameter "isImage"

    .prologue
    .line 302
    sget-object v2, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 304
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    if-nez v0, :cond_1

    .line 305
    if-eqz p4, :cond_0

    .line 306
    new-instance v0, Lcom/android/gallery3d/data/LocalImage;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 313
    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :goto_0
    monitor-exit v2

    return-object v0

    .line 308
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/LocalVideo;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0

    .line 314
    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;)Lcom/android/gallery3d/data/MediaItem;
    .locals 3
    .parameter "path"
    .parameter "dataManager"
    .parameter "app"
    .parameter "file"

    .prologue
    .line 320
    sget-object v2, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 321
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 322
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/android/gallery3d/data/LocalImage;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p2, p3}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 325
    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :cond_0
    monitor-exit v2

    return-object v0

    .line 326
    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 496
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 497
    const-string v0, "bucket_id = ?"

    .line 498
    .local v0, whereClause:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 500
    iget v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->internalCameraId()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->externalCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->DeleteAllData()V

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 504
    return-void
.end method

.method public getAlbumDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mAlbumDir:Ljava/lang/String;

    return-object v0
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
    .line 606
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getCoverMediaItem(II)Ljava/util/ArrayList;
    .locals 16
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
    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    .line 237
    .local v9, dataManager:Lcom/android/gallery3d/data/DataManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 239
    .local v2, uri:Landroid/net/Uri;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 241
    const/4 v11, 0x0

    .line 243
    .local v11, hasCoverMediaItem:Z
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    if-nez v1, :cond_1

    .line 244
    const-string v1, "/local/image/more/item"

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v15

    .line 245
    .local v15, morePath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const-string v3, "/res/drawable/more.png"

    invoke-static {v15, v9, v1, v3}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v13

    .line 247
    .local v13, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v13           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v15           #morePath:Lcom/android/gallery3d/data/Path;
    :cond_0
    :goto_0
    return-object v14

    .line 251
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    const-string v3, "/data/yulong_secure/"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 252
    const-string v1, "/local/image/secure/item"

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v15

    .line 253
    .restart local v15       #morePath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const-string v3, "/res/drawable/safebox.png"

    invoke-static {v15, v9, v1, v3}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v13

    .line 255
    .restart local v13       #item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    .end local v13           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v15           #morePath:Lcom/android/gallery3d/data/Path;
    :cond_2
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 260
    .local v5, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/secure/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mHasCrypto:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->isHasPrivate:Z

    if-eqz v1, :cond_3

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/data/LocalAlbum;->initWhereClause([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 265
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 268
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_4

    .line 269
    const-string v1, "LocalAlbum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_4
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 275
    const/4 v11, 0x1

    .line 276
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 277
    .local v12, id:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v12}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    .line 278
    .local v7, childPath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v7, v8, v9, v1, v3}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v13

    .line 280
    .restart local v13       #item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 283
    .end local v7           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v12           #id:I
    .end local v13           #item:Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    :cond_5
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 286
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->internalCameraId()I

    move-result v3

    if-eq v1, v3, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->externalCameraId()I

    move-result v3

    if-ne v1, v3, :cond_7

    :cond_6
    if-nez v11, :cond_7

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const-string v4, "/res/drawable/camera_cover.jpg"

    invoke-static {v1, v9, v3, v4}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v13

    .line 290
    .restart local v13       #item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 293
    .end local v13           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_7
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v10

    .line 295
    .local v10, filePath:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v10, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/data/LocalAlbum;->mAlbumDir:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
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
    const/4 v12, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    .line 195
    .local v8, dataManager:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 197
    .local v1, uri:Landroid/net/Uri;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 199
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    .line 200
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/secure/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mHasCrypto:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->isHasPrivate:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/data/LocalAlbum;->initWhereClause([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 205
    :cond_0
    const/4 v7, 0x0

    .line 206
    .local v7, cursor:Landroid/database/Cursor;
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->isHasAudioImage:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/gallery3d/data/LocalImage;->PROJECTION_HASAUDIO:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 215
    :goto_0
    if-nez v7, :cond_2

    .line 216
    const-string v0, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_1
    return-object v11

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 221
    :cond_2
    :goto_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 223
    .local v9, id:I
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 224
    .local v6, childPath:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v6, v7, v8, v0, v2}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    .line 226
    .local v10, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 229
    .end local v6           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v9           #id:I
    .end local v10           #item:Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public declared-synchronized getMediaItemCount()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 440
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 441
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 442
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/secure/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mHasCrypto:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->isHasPrivate:Z

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/data/LocalAlbum;->initWhereClause([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 449
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 450
    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v0, v7

    .line 460
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    monitor-exit p0

    return v0

    .line 454
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 455
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 460
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    goto :goto_0

    .line 457
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 440
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewAlbumCount()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 408
    const/4 v7, 0x0

    .line 409
    .local v7, result:I
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    .line 410
    .local v8, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/secure/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mHasCrypto:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->isHasPrivate:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/data/LocalAlbum;->initWhereClause([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, selection:Ljava/lang/String;
    array-length v0, v8

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 418
    .local v4, clause:[Ljava/lang/String;
    array-length v0, v8

    invoke-static {v8, v9, v4, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    array-length v0, v8

    const-string v1, "cover_for_new_album.jpeg"

    aput-object v1, v4, v0

    .line 421
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 424
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 425
    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 435
    :goto_0
    return v0

    .line 429
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 430
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 435
    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getSupportedOperations()I
    .locals 3

    .prologue
    .line 484
    const/16 v0, 0x401

    .line 485
    .local v0, operations:I
    iget-object v1, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/local/image/secure/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 490
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalAlbum;->isSupportRename()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    .line 491
    :cond_0
    return v0

    .line 488
    :cond_1
    const v1, 0x1040004

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public initWhereClause([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "whereArgs"

    .prologue
    const/4 v5, 0x1

    .line 150
    move-object v2, p1

    .line 151
    .local v2, where:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    .local v0, context:Landroid/content/Context;
    const-string v3, "coolpadSystem"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 153
    .local v1, mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yulong/android/server/systeminterface/SystemManager;->isPrivateMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const-string v3, "bucket_id = ?"

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 161
    :goto_0
    return-object v2

    .line 156
    :cond_0
    const-string v3, "bucket_id = ? and isprivate_model != ?"

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 158
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .end local v2           #where:[Ljava/lang/String;
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .restart local v2       #where:[Ljava/lang/String;
    goto :goto_0
.end method

.method public isCameraRoll()Z
    .locals 7

    .prologue
    .line 168
    const/4 v5, -0x1

    .local v5, mysdAlbumId:I
    const/4 v4, -0x1

    .line 169
    .local v4, myexsdAlbumId:I
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 170
    .local v3, mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, internalSdRootDir:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, externalSdRootDir:Ljava/lang/String;
    const v6, 0x7f0e0112

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, camera:Ljava/lang/String;
    if-eqz v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 174
    :cond_0
    if-eqz v1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 176
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    if-eq v6, v5, :cond_2

    iget v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    if-ne v6, v4, :cond_3

    :cond_2
    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportRename()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 586
    iget-boolean v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mAlbumDir:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 587
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, internalRootDir:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, externalRootDir:Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mAlbumDir:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/galleryAlbum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    .end local v0           #externalRootDir:Ljava/lang/String;
    .end local v1           #internalRootDir:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 591
    .restart local v0       #externalRootDir:Ljava/lang/String;
    .restart local v1       #internalRootDir:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mAlbumDir:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/galleryAlbum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 593
    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mAlbumDir:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/coolpad/gallery"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 595
    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mAlbumDir:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/coolpad/gallery"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    .line 597
    goto :goto_0

    .end local v0           #externalRootDir:Ljava/lang/String;
    .end local v1           #internalRootDir:Ljava/lang/String;
    :cond_5
    move v2, v3

    .line 599
    goto :goto_0
.end method

.method public moveAlbumToSecureBox(Lcom/android/gallery3d/data/Path;)Z
    .locals 12
    .parameter "path"

    .prologue
    .line 544
    const/4 v7, 0x0

    .line 545
    .local v7, saveSuccess:Z
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    .line 546
    .local v4, mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 547
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, title:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 549
    .local v0, count:I
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 550
    .local v6, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 551
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 552
    .local v5, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    const/4 v3, 0x0

    .line 554
    .local v3, isAudioJpeg:Z
    :try_start_0
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->isAudioImage()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 558
    :goto_1
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9, v3}, Lcom/android/gallery3d/data/MediaObject;->movePicToSecureBox(Landroid/net/Uri;Z)Z

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, ex:Ljava/lang/Exception;
    const-string v9, "LocalAlbum"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 561
    .end local v0           #count:I
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #i:I
    .end local v3           #isAudioJpeg:Z
    .end local v5           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v6           #mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v8           #title:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;)V

    .line 562
    return v7
.end method

.method public orderAlbumSets()V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method public declared-synchronized reload()J
    .locals 2

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 477
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 479
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAlbumFromSecureBox(Lcom/android/gallery3d/data/Path;)Z
    .locals 8
    .parameter "path"

    .prologue
    .line 567
    const/4 v5, 0x0

    .line 568
    .local v5, saveSuccess:Z
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 569
    .local v2, mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 570
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 571
    .local v0, count:I
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 572
    .local v4, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 573
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    .line 574
    .local v3, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v6, v7}, Lcom/android/gallery3d/data/MediaObject;->removePicFromSecureBox(Lcom/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;)V

    .line 578
    return v5
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
    .line 613
    .local p1, albumSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    return-void
.end method
