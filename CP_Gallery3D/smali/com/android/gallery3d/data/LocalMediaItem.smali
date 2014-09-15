.class public abstract Lcom/android/gallery3d/data/LocalMediaItem;
.super Lcom/android/gallery3d/data/MediaItem;
.source "LocalMediaItem.java"


# static fields
.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public height:I

.field public id:I

.field public latitude:D

.field public longitude:D

.field public mimeType:Ljava/lang/String;

.field public rotation:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/data/LocalMediaItem;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 2
    .parameter "path"
    .parameter "version"

    .prologue
    const-wide/16 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 39
    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 40
    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 57
    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 89
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaObject;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 90
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    sget-object v1, Lcom/android/gallery3d/data/LocalMediaItem;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 91
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const-string v2, "/data/yulong_secure/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 95
    const/4 v1, 0x3

    sget-object v2, Lcom/android/gallery3d/data/LocalMediaItem;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 98
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 99
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 101
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const/4 v1, 0x4

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v4, v2, v3

    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 104
    :cond_1
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 105
    :cond_2
    return-object v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 71
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v1, p1, v0

    .line 72
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v1, p1, v0

    .line 73
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method public isAudioImage()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method protected updateContent(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/android/gallery3d/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 85
    :cond_0
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
