.class Lcom/android/gallery3d/data/MapViewAlbumSet$1;
.super Ljava/lang/Object;
.source "MapViewAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/MapViewAlbumSet;->updateLocationAlbumsContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/MapViewAlbumSet;

.field final synthetic val$existing:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/MapViewAlbumSet;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/gallery3d/data/MapViewAlbumSet$1;->this$0:Lcom/android/gallery3d/data/MapViewAlbumSet;

    iput-object p2, p0, Lcom/android/gallery3d/data/MapViewAlbumSet$1;->val$existing:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 2
    .parameter "index"
    .parameter "item"

    .prologue
    .line 127
    if-eqz p2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/data/MapViewAlbumSet$1;->val$existing:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    return-void
.end method
