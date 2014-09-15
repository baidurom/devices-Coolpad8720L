.class public Lcom/android/gallery3d/data/LocalMergeAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalMergeAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;
    }
.end annotation


# instance fields
.field private mBucketId:I

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

.field private mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private final mSources:[Lcom/android/gallery3d/data/MediaSet;

.field private mSupportedOperation:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 6
    .parameter "path"
    .parameter
    .parameter "sources"
    .parameter "bucketId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;[",
            "Lcom/android/gallery3d/data/MediaSet;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    const-wide/16 v4, -0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 49
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    .line 54
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    .line 55
    iput-object p3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .line 56
    array-length v4, p3

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mBucketId:I

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 59
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    .end local v0           #arr$:[Lcom/android/gallery3d/data/MediaSet;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 61
    .restart local v0       #arr$:[Lcom/android/gallery3d/data/MediaSet;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->reload()J

    .line 62
    return-void
.end method

.method private invalidateCache()V
    .locals 5

    .prologue
    .line 88
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->invalidate()V

    .line 88
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 93
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [I

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method private updateData()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v4, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 76
    .local v2, supported:I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v1, v4

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 78
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    new-instance v5, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v6, v6, v0

    invoke-direct {v5, v6}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;-><init>(Lcom/android/gallery3d/data/MediaSet;)V

    aput-object v5, v4, v0

    .line 79
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v4

    and-int/2addr v2, v4

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #supported:I
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 81
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #supported:I
    :cond_1
    iput v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSupportedOperation:I

    .line 82
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->clear()V

    .line 83
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v6, v6

    new-array v6, v6, [I

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v4, v4

    if-nez v4, :cond_2

    const-string v3, ""

    :goto_2
    iput-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 85
    return-void

    .line 84
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 255
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->delete()V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
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
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mBucketId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 98
    iget v1, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mBucketId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, bucketId:Ljava/lang/String;
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "bucketId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "bucketId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getCoverMediaItem(II)Ljava/util/ArrayList;
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
    const/4 v12, -0x1

    .line 176
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v10, p1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 177
    .local v0, head:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 178
    .local v4, markPos:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    invoke-virtual {v9}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 179
    .local v8, subPos:[I
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v9, v9

    new-array v7, v9, [Lcom/android/gallery3d/data/MediaItem;

    .line 181
    .local v7, slot:[Lcom/android/gallery3d/data/MediaItem;
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v6, v9

    .line 184
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 185
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v9, v9, v1

    aget v10, v8, v1

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->getCoverItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    aput-object v9, v7, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    move v1, v4

    :goto_1
    add-int v9, p1, p2

    if-ge v1, v9, :cond_4

    .line 191
    const/4 v3, -0x1

    .line 192
    .local v3, k:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 193
    aget-object v9, v7, v2

    if-eqz v9, :cond_2

    .line 194
    if-eq v3, v12, :cond_1

    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    aget-object v10, v7, v2

    aget-object v11, v7, v3

    invoke-interface {v9, v10, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_2

    .line 195
    :cond_1
    move v3, v2

    .line 192
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 201
    :cond_3
    if-ne v3, v12, :cond_5

    .line 216
    .end local v2           #j:I
    .end local v3           #k:I
    :cond_4
    return-object v5

    .line 204
    .restart local v2       #j:I
    .restart local v3       #k:I
    :cond_5
    aget v9, v8, v3

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 205
    if-lt v1, p1, :cond_6

    .line 206
    aget-object v9, v7, v3

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_6
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v9, v9, v3

    aget v10, v8, v3

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    aput-object v9, v7, v3

    .line 211
    add-int/lit8 v9, v1, 0x1

    rem-int/lit8 v9, v9, 0x40

    if-nez v9, :cond_7

    .line 212
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    new-instance v10, Ljava/lang/Integer;

    add-int/lit8 v11, v1, 0x1

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
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
    const/4 v12, -0x1

    .line 125
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v10, p1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 129
    .local v0, head:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 130
    .local v4, markPos:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    invoke-virtual {v9}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 131
    .local v8, subPos:[I
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v9, v9

    new-array v7, v9, [Lcom/android/gallery3d/data/MediaItem;

    .line 133
    .local v7, slot:[Lcom/android/gallery3d/data/MediaItem;
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v6, v9

    .line 136
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 137
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v9, v9, v1

    aget v10, v8, v1

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    aput-object v9, v7, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    move v1, v4

    :goto_1
    add-int v9, p1, p2

    if-ge v1, v9, :cond_4

    .line 141
    const/4 v3, -0x1

    .line 142
    .local v3, k:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 143
    aget-object v9, v7, v2

    if-eqz v9, :cond_2

    .line 144
    if-eq v3, v12, :cond_1

    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    aget-object v10, v7, v2

    aget-object v11, v7, v3

    invoke-interface {v9, v10, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_2

    .line 145
    :cond_1
    move v3, v2

    .line 142
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 151
    :cond_3
    if-ne v3, v12, :cond_5

    .line 169
    .end local v0           #head:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #k:I
    .end local v4           #markPos:I
    .end local v6           #size:I
    .end local v7           #slot:[Lcom/android/gallery3d/data/MediaItem;
    .end local v8           #subPos:[I
    :cond_4
    :goto_3
    return-object v5

    .line 154
    .restart local v0       #head:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    .restart local v1       #i:I
    .restart local v2       #j:I
    .restart local v3       #k:I
    .restart local v4       #markPos:I
    .restart local v6       #size:I
    .restart local v7       #slot:[Lcom/android/gallery3d/data/MediaItem;
    .restart local v8       #subPos:[I
    :cond_5
    aget v9, v8, v3

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 155
    if-lt v1, p1, :cond_6

    .line 156
    aget-object v9, v7, v3

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_6
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v9, v9, v3

    aget v10, v8, v3

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    aput-object v9, v7, v3

    .line 161
    add-int/lit8 v9, v1, 0x1

    rem-int/lit8 v9, v9, 0x40

    if-nez v9, :cond_7

    .line 162
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    new-instance v10, Ljava/lang/Integer;

    add-int/lit8 v11, v1, 0x1

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    .end local v0           #head:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #k:I
    .end local v4           #markPos:I
    .end local v6           #size:I
    .end local v7           #slot:[Lcom/android/gallery3d/data/MediaItem;
    .end local v8           #subPos:[I
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSupportedOperation:I

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 6

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, count:I
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 223
    .local v4, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v4           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return v1
.end method

.method public isCameraRoll()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 66
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v4

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 68
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 245
    return-void
.end method

.method public orderAlbumSets()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v2, v3

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 232
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 231
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_1
    if-eqz v0, :cond_2

    .line 235
    invoke-static {}, Lcom/android/gallery3d/data/LocalMergeAlbum;->nextVersionNumber()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 236
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->updateData()V

    .line 237
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->invalidateCache()V

    .line 239
    :cond_2
    iget-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v3
.end method

.method public rotate(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 262
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/MediaObject;->rotate(I)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
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
    .line 355
    .local p1, albumSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    return-void
.end method
