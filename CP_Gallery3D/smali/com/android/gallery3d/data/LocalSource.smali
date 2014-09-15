.class Lcom/android/gallery3d/data/LocalSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalSource$1;,
        Lcom/android/gallery3d/data/LocalSource$IdComparator;
    }
.end annotation


# static fields
.field public static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isHasAudioJpeg:Z

.field public isHasPrivate:Z

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mClient:Landroid/content/ContentProviderClient;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/android/gallery3d/data/LocalSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalSource$IdComparator;-><init>(Lcom/android/gallery3d/data/LocalSource$1;)V

    sput-object v0, Lcom/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 72
    const-string v0, "local"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 68
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalSource;->isHasAudioJpeg:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalSource;->isHasPrivate:Z

    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 74
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image"

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/all"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/more/"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/secure/"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/secure/"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/*"

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/*"

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/more/*"

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/secure/*"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/secure/*"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/*"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/item/*"

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/item/*"

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/more/item/*"

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/secure/item/*"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/secure/item/*"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/file"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    const-string v0, "isprivate_model"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/LocalSource;->isHasColumnIndex(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalSource;->isHasPrivate:Z

    .line 123
    return-void
.end method

.method private getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;
    .locals 7
    .parameter "uri"
    .parameter "defaultType"

    .prologue
    .line 195
    const-string v4, "mediaTypes"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/gallery3d/data/LocalSource;->getMediaType(Ljava/lang/String;I)I

    move-result v3

    .line 198
    .local v3, mediaType:I
    const-string v4, "bucketId"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, bucketId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 201
    .local v2, id:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 206
    sparse-switch v3, :sswitch_data_0

    .line 214
    const-string v4, "/local/all"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    :goto_0
    return-object v4

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid bucket id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const/4 v4, 0x0

    goto :goto_0

    .line 208
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :sswitch_0
    const-string v4, "/local/image"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 210
    :sswitch_1
    const-string v4, "/local/video"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 212
    :sswitch_2
    const-string v4, "/local/image/secure"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getMediaType(Ljava/lang/String;I)I
    .locals 5
    .parameter "type"
    .parameter "defaultType"

    .prologue
    .line 177
    if-nez p0, :cond_1

    .line 185
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 179
    .restart local p1
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    .local v1, value:I
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_0

    move p1, v1

    .line 181
    goto :goto_0

    .line 182
    .end local v1           #value:I
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "LocalSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;ZZ)V
    .locals 14
    .parameter
    .parameter "consumer"
    .parameter "isImage"
    .parameter "isSecure"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    sget-object v12, Lcom/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 289
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 290
    .local v8, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_3

    .line 291
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 294
    .local v9, pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v4, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v12, v9, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v12}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 296
    .local v11, startId:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v6, v3, 0x1

    .local v6, j:I
    :goto_1
    if-ge v6, v8, :cond_0

    .line 300
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 301
    .local v10, pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget-object v12, v10, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v12}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 302
    .local v2, curId:I
    sub-int v12, v2, v11

    const/16 v13, 0x1f4

    if-lt v12, v13, :cond_1

    .line 308
    .end local v2           #curId:I
    .end local v10           #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    :cond_0
    iget-object v12, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v12, v0, v1, v4}, Lcom/android/gallery3d/data/LocalAlbum;->getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;ZZLjava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    .line 310
    .local v5, items:[Lcom/android/gallery3d/data/MediaItem;
    move v7, v3

    .local v7, k:I
    :goto_2
    if-ge v7, v6, :cond_2

    .line 311
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 312
    .restart local v10       #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget v12, v10, Lcom/android/gallery3d/data/MediaSource$PathId;->id:I

    sub-int v13, v7, v3

    aget-object v13, v5, v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/android/gallery3d/data/MediaItem;)V

    .line 310
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 305
    .end local v5           #items:[Lcom/android/gallery3d/data/MediaItem;
    .end local v7           #k:I
    .restart local v2       #curId:I
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 315
    .end local v2           #curId:I
    .end local v10           #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    .restart local v5       #items:[Lcom/android/gallery3d/data/MediaItem;
    .restart local v7       #k:I
    :cond_2
    move v3, v6

    .line 316
    goto :goto_0

    .line 317
    .end local v4           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5           #items:[Lcom/android/gallery3d/data/MediaItem;
    .end local v6           #j:I
    .end local v7           #k:I
    .end local v9           #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    .end local v11           #startId:I
    :cond_3
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 14
    .parameter "path"

    .prologue
    .line 127
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 128
    .local v2, app:Lcom/android/gallery3d/app/GalleryApp;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_1
    new-instance v0, Lcom/android/gallery3d/data/LocalAlbumSet;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/data/LocalAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    .line 170
    :goto_0
    return-object v0

    .line 134
    :pswitch_2
    new-instance v0, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/gallery3d/data/LocalSource;->isHasAudioJpeg:Z

    iget-boolean v6, p0, Lcom/android/gallery3d/data/LocalSource;->isHasPrivate:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZZZ)V

    goto :goto_0

    .line 138
    :pswitch_3
    new-instance v0, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/gallery3d/data/LocalSource;->isHasAudioJpeg:Z

    iget-boolean v7, p0, Lcom/android/gallery3d/data/LocalSource;->isHasPrivate:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZZZZ)V

    goto :goto_0

    .line 141
    :pswitch_4
    new-instance v0, Lcom/android/gallery3d/data/LocalAlbumSet;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/data/LocalAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    .line 143
    :pswitch_5
    new-instance v0, Lcom/android/gallery3d/data/LocalAlbumSet;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/data/LocalAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    .line 145
    :pswitch_6
    new-instance v0, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/gallery3d/data/LocalSource;->isHasAudioJpeg:Z

    iget-boolean v6, p0, Lcom/android/gallery3d/data/LocalSource;->isHasPrivate:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZZZ)V

    goto :goto_0

    .line 148
    :pswitch_7
    new-instance v0, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/gallery3d/data/LocalSource;->isHasAudioJpeg:Z

    iget-boolean v7, p0, Lcom/android/gallery3d/data/LocalSource;->isHasPrivate:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZZZZ)V

    goto :goto_0

    .line 150
    :pswitch_8
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v9

    .line 151
    .local v9, bucketId:I
    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v11

    .line 152
    .local v11, dataManager:Lcom/android/gallery3d/data/DataManager;
    sget-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/data/MediaSet;

    .line 154
    .local v12, imageSet:Lcom/android/gallery3d/data/MediaSet;
    sget-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/data/MediaSet;

    .line 156
    .local v13, videoSet:Lcom/android/gallery3d/data/MediaSet;
    sget-object v10, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 159
    .local v10, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    new-instance v0, Lcom/android/gallery3d/data/LocalMergeAlbum;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/gallery3d/data/MediaSet;

    const/4 v3, 0x0

    aput-object v12, v1, v3

    const/4 v3, 0x1

    aput-object v13, v1, v3

    invoke-direct {v0, p1, v10, v1, v9}, Lcom/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_0

    .line 164
    .end local v9           #bucketId:I
    .end local v10           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v11           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v12           #imageSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v13           #videoSet:Lcom/android/gallery3d/data/MediaSet;
    :pswitch_9
    new-instance v3, Lcom/android/gallery3d/data/LocalImage;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v6

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/gallery3d/data/LocalSource;->isHasAudioJpeg:Z

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZZ)V

    move-object v0, v3

    goto/16 :goto_0

    .line 166
    :pswitch_a
    new-instance v0, Lcom/android/gallery3d/data/LocalVideo;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    invoke-direct {v0, p1, v1, v3}, Lcom/android/gallery3d/data/LocalVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_0

    .line 168
    :pswitch_b
    new-instance v3, Lcom/android/gallery3d/data/LocalImage;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v6

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/gallery3d/data/LocalSource;->isHasAudioJpeg:Z

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZZ)V

    move-object v0, v3

    goto/16 :goto_0

    .line 170
    :pswitch_c
    new-instance v0, Lcom/android/gallery3d/data/LocalVideo;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    invoke-direct {v0, p1, v1, v3}, Lcom/android/gallery3d/data/LocalVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_b
        :pswitch_0
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 7
    .parameter "uri"
    .parameter "type"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    .line 221
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 246
    :cond_0
    :goto_0
    :pswitch_0
    return-object v3

    .line 223
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 224
    .local v1, id:J
    cmp-long v4, v1, v5

    if-ltz v4, :cond_0

    sget-object v4, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4, v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 227
    .end local v1           #id:J
    :pswitch_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 228
    .restart local v1       #id:J
    cmp-long v4, v1, v5

    if-ltz v4, :cond_0

    sget-object v4, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4, v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 231
    .end local v1           #id:J
    :pswitch_3
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 234
    :pswitch_4
    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 237
    :pswitch_5
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 240
    :pswitch_6
    const/16 v4, 0x8

    invoke-direct {p0, p1, v4}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 3
    .parameter "item"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 252
    .local v0, object:Lcom/android/gallery3d/data/MediaObject;
    instance-of v1, v0, Lcom/android/gallery3d/data/LocalMediaItem;

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "/local/all"

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .end local v0           #object:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 256
    :goto_0
    return-object v1

    .restart local v0       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHasColumnIndex(Ljava/lang/String;)Z
    .locals 9
    .parameter "columnIndex"

    .prologue
    const/4 v2, 0x0

    .line 351
    const/4 v6, 0x0

    .line 352
    .local v6, hasColumnIndex:Z
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 354
    .local v8, mCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 355
    const/4 v6, 0x0

    .line 360
    :goto_0
    if-nez v8, :cond_1

    move v7, v6

    .line 367
    .end local v6           #hasColumnIndex:Z
    .local v7, hasColumnIndex:I
    :goto_1
    return v7

    .line 357
    .end local v7           #hasColumnIndex:I
    .restart local v6       #hasColumnIndex:Z
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 362
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v7, v6

    .line 367
    .restart local v7       #hasColumnIndex:I
    goto :goto_1

    .line 360
    .end local v7           #hasColumnIndex:I
    :catchall_0
    move-exception v0

    if-nez v8, :cond_2

    move v7, v6

    .restart local v7       #hasColumnIndex:I
    goto :goto_1

    .line 362
    .end local v7           #hasColumnIndex:I
    :cond_2
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 365
    :goto_3
    throw v0

    .line 363
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 10
    .parameter
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v1, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v5, secureImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v6, videoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 266
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 267
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 270
    .local v4, pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget-object v7, v4, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/Path;->getParent()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 271
    .local v3, parent:Lcom/android/gallery3d/data/Path;
    sget-object v7, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    if-ne v3, v7, :cond_1

    .line 272
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    sget-object v7, Lcom/android/gallery3d/data/LocalImage;->ITEM_SECURE_PATH:Lcom/android/gallery3d/data/Path;

    if-ne v3, v7, :cond_2

    .line 274
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :cond_2
    sget-object v7, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    if-ne v3, v7, :cond_0

    .line 276
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    .end local v3           #parent:Lcom/android/gallery3d/data/Path;
    .end local v4           #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    :cond_3
    invoke-direct {p0, v1, p2, v9, v8}, Lcom/android/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;ZZ)V

    .line 281
    invoke-direct {p0, v5, p2, v9, v9}, Lcom/android/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;ZZ)V

    .line 282
    invoke-direct {p0, v6, p2, v8, v8}, Lcom/android/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;ZZ)V

    .line 283
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 347
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 348
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 341
    return-void
.end method
