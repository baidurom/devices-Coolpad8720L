.class Lcom/android/gallery3d/data/BucketHelper;
.super Ljava/lang/Object;
.source "BucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    }
.end annotation


# static fields
.field private static final PROJECTION_BUCKET:[Ljava/lang/String;

.field private static final PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

.field private static final PROJECTION_BUCKET_SEC:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v2

    const-string v1, "media_type"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET:[Ljava/lang/String;

    .line 48
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET_SEC:[Ljava/lang/String;

    .line 80
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v2

    const-string v1, "MAX(datetaken)"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public static getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 2
    .parameter "resolver"
    .parameter "bucketId"

    .prologue
    .line 210
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    if-eqz v1, :cond_1

    .line 211
    invoke-static {}, Lcom/android/gallery3d/data/BucketHelper;->getFilesContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/android/gallery3d/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 219
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    .line 212
    goto :goto_0

    .line 214
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, p1}, Lcom/android/gallery3d/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0       #result:Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    .line 217
    :cond_2
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, p1}, Lcom/android/gallery3d/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 219
    if-nez v0, :cond_3

    const-string v1, ""

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private static getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 7
    .parameter "resolver"
    .parameter "tableUri"
    .parameter "bucketId"

    .prologue
    const/4 v5, 0x0

    .line 188
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 189
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 192
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 199
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 201
    :goto_0
    return-object v5

    .line 199
    :cond_0
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getFilesContentUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 206
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static loadBucketEntries(Landroid/content/ContentResolver;I)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .locals 1
    .parameter "resolver"
    .parameter "type"

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/android/gallery3d/data/BucketHelper;->loadBucketEntriesFromImagesAndVideoTable(Landroid/content/ContentResolver;I)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    move-result-object v0

    return-object v0
.end method

.method private static loadBucketEntriesFromImagesAndVideoTable(Landroid/content/ContentResolver;I)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .locals 4
    .parameter "resolver"
    .parameter "type"

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 130
    .local v0, buckets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    .line 131
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v2, v0}, Lcom/android/gallery3d/data/BucketHelper;->updateBucketEntriesFromTable(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 134
    :cond_0
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1

    .line 135
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v2, v0}, Lcom/android/gallery3d/data/BucketHelper;->updateBucketEntriesFromTable(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 138
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .line 139
    .local v1, entries:[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    new-instance v2, Lcom/android/gallery3d/data/BucketHelper$1;

    invoke-direct {v2}, Lcom/android/gallery3d/data/BucketHelper$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 146
    return-object v1
.end method

.method private static updateBucketEntriesFromTable(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V
    .locals 10
    .parameter "resolver"
    .parameter "tableUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, buckets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    const/4 v4, 0x0

    .line 103
    sget-object v2, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const-string v3, "1) GROUP BY (1"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 105
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 106
    const-string v0, "BucketHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot open media database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 110
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 112
    .local v6, bucketId:I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 113
    .local v8, dateTaken:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .line 114
    .local v9, entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    if-nez v9, :cond_1

    .line 115
    new-instance v9, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .end local v9           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v6, v0}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 116
    .restart local v9       #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iput v8, v9, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->dateTaken:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 123
    .end local v6           #bucketId:I
    .end local v8           #dateTaken:I
    .end local v9           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    .line 119
    .restart local v6       #bucketId:I
    .restart local v8       #dateTaken:I
    .restart local v9       #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    :cond_1
    :try_start_1
    iget v0, v9, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->dateTaken:I

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->dateTaken:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 123
    .end local v6           #bucketId:I
    .end local v8           #dateTaken:I
    .end local v9           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    :cond_2
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0
.end method
