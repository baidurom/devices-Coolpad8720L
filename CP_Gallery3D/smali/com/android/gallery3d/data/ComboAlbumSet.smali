.class public Lcom/android/gallery3d/data/ComboAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ComboAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSets:[Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;[Lcom/android/gallery3d/data/MediaSet;)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "mediaSets"

    .prologue
    .line 34
    invoke-static {}, Lcom/android/gallery3d/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 35
    iput-object p3, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 37
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getAlbums()Ljava/util/ArrayList;
    .locals 6
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
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, AlbumSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    iget-object v1, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v1, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 119
    .local v4, set:Lcom/android/gallery3d/data/MediaSet;
    instance-of v5, v4, Lcom/android/gallery3d/data/LocalAlbumSet;

    if-eqz v5, :cond_1

    .line 120
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getAlbums()Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    .end local v0           #AlbumSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    .end local v4           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-object v0

    .line 118
    .restart local v0       #AlbumSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    .restart local v4       #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 6
    .parameter "index"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 46
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    .line 47
    .local v4, size:I
    if-ge p1, v4, :cond_0

    .line 48
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    .line 52
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #size:I
    :goto_1
    return-object v5

    .line 50
    .restart local v3       #set:Lcom/android/gallery3d/data/MediaSet;
    .restart local v4       #size:I
    :cond_0
    sub-int/2addr p1, v4

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #size:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getSubMediaSetCount()I
    .locals 6

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, count:I
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 59
    .local v4, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v4           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return v1
.end method

.method public isLoading()Z
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 83
    iget-object v2, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 85
    :goto_1
    return v2

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 102
    return-void
.end method

.method public orderAlbumSets()V
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 139
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    instance-of v4, v3, Lcom/android/gallery3d/data/LocalAlbumSet;

    if-eqz v4, :cond_0

    .line 140
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->orderAlbumSets()V

    .line 138
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    array-length v2, v5

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 92
    iget-object v5, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    .line 93
    .local v3, version:J
    iget-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    const/4 v0, 0x1

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v3           #version:J
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/gallery3d/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 96
    :cond_2
    iget-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v5
.end method

.method public requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/data/MediaSet;->requestSyncOnMultipleSets([Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateAlbumSets(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 128
    .local p1, albumSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 129
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    instance-of v4, v3, Lcom/android/gallery3d/data/LocalAlbumSet;

    if-eqz v4, :cond_0

    .line 130
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/MediaSet;->updateAlbumSets(Ljava/util/ArrayList;)V

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    return-void
.end method
