.class Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUpdateInfo:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->mUpdateInfo:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    .line 313
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 319
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$300(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    move-result-object v6

    if-nez v6, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v9

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->mUpdateInfo:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    .line 321
    .local v1, info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-wide v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    #setter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J
    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$702(Lcom/android/gallery3d/app/AlbumSetDataLoader;J)J

    .line 322
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v6

    iget v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-ge v6, v7, :cond_7

    const/4 v0, 0x1

    .line 323
    .local v0, add:Z
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v6

    iget v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-eq v6, v7, :cond_4

    .line 324
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    #setter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$902(Lcom/android/gallery3d/app/AlbumSetDataLoader;I)I

    .line 325
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v7

    invoke-interface {v6, v7, v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;->onSizeChanged(IZ)V

    .line 326
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$600(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v7

    if-le v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v7

    #setter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$602(Lcom/android/gallery3d/app/AlbumSetDataLoader;I)I

    .line 327
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1100(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v7

    if-le v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v7

    #setter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1102(Lcom/android/gallery3d/app/AlbumSetDataLoader;I)I

    .line 330
    :cond_4
    iget v6, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$500(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v7

    if-lt v6, v7, :cond_0

    iget v6, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$600(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 331
    iget v6, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1200(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v7

    array-length v7, v7

    rem-int v5, v6, v7

    .line 332
    .local v5, pos:I
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$400(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v6

    iget-wide v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    aput-wide v7, v6, v5

    .line 333
    iget-object v6, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v3

    .line 334
    .local v3, itemVersion:J
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1300(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v6

    aget-wide v6, v6, v5

    cmp-long v6, v6, v3

    if-eqz v6, :cond_0

    .line 335
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1300(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v6

    aput-wide v3, v6, v5

    .line 336
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1400(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    iget-object v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    aput-object v7, v6, v5

    .line 337
    iget-object v6, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/android/gallery3d/data/MediaItem;

    if-nez v6, :cond_5

    iget-object v6, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v6

    iput-object v6, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/android/gallery3d/data/MediaItem;

    .line 338
    :cond_5
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1200(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v6

    iget-object v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/android/gallery3d/data/MediaItem;

    aput-object v7, v6, v5

    .line 339
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1500(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[I

    move-result-object v6

    iget v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    aput v7, v6, v5

    .line 340
    const/4 v2, 0x1

    .line 341
    .local v2, isLocalAlbum:Z
    iget-object v6, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v6, :cond_6

    .line 342
    iget-object v6, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    instance-of v2, v6, Lcom/android/gallery3d/data/LocalAlbum;

    .line 343
    :cond_6
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v6, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1600(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v7

    if-lt v6, v7, :cond_0

    iget v6, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1100(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 345
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v6

    iget v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-interface {v6, v7, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;->onContentChanged(IZ)V

    goto/16 :goto_0

    .line 322
    .end local v0           #add:Z
    .end local v2           #isLocalAlbum:Z
    .end local v3           #itemVersion:J
    .end local v5           #pos:I
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
