.class public Lcom/android/gallery3d/data/MapViewSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "MapViewSource.java"


# instance fields
.field mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field mMatcher:Lcom/android/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 14
    const-string v0, "mapview"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/android/gallery3d/data/MapViewSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 16
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MapViewSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 17
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/mapview/*/maplocation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 18
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/mapview/*/maplocation/*"

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 9
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 24
    iget-object v5, p0, Lcom/android/gallery3d/data/MapViewSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v1

    .line 25
    .local v1, matchType:I
    iget-object v5, p0, Lcom/android/gallery3d/data/MapViewSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, setsName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/data/MapViewSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 27
    .local v0, dataManager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 28
    .local v3, sets:[Lcom/android/gallery3d/data/MediaSet;
    sparse-switch v1, :sswitch_data_0

    .line 36
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 30
    :sswitch_0
    new-instance v5, Lcom/android/gallery3d/data/MapViewAlbumSet;

    iget-object v6, p0, Lcom/android/gallery3d/data/MapViewSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    aget-object v7, v3, v7

    const/4 v8, 0x1

    invoke-direct {v5, p1, v6, v7, v8}, Lcom/android/gallery3d/data/MapViewAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaSet;Z)V

    .line 33
    :goto_0
    return-object v5

    .line 32
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getParent()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 33
    .local v2, parent:Lcom/android/gallery3d/data/MediaSet;
    new-instance v5, Lcom/android/gallery3d/data/MapViewAlbum;

    iget-object v6, p0, Lcom/android/gallery3d/data/MapViewSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v5, p1, v6, v0, v2}, Lcom/android/gallery3d/data/MapViewAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 28
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x101 -> :sswitch_1
    .end sparse-switch
.end method
