.class public abstract Lcom/android/gallery3d/data/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;
    }
.end annotation


# static fields
.field private static sVersionSerial:J


# instance fields
.field protected mDataVersion:J

.field protected mGpsAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPath:Lcom/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/gallery3d/data/MediaObject;->sVersionSerial:J

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/data/Path;->setObject(Lcom/android/gallery3d/data/MediaObject;)V

    .line 97
    iput-object p1, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    .line 98
    iput-wide p2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 99
    return-void
.end method

.method public static getTypeFromString(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 194
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 196
    :goto_0
    return v0

    .line 195
    :cond_0
    const-string v0, "image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 196
    :cond_1
    const-string v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 6

    .prologue
    .line 190
    const-class v1, Lcom/android/gallery3d/data/MediaObject;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/android/gallery3d/data/MediaObject;->sVersionSerial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/gallery3d/data/MediaObject;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Import()Z
    .locals 1

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public cache(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheFlag()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheStatus()I
    .locals 1

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, className:Ljava/lang/String;
    const-string v1, "MediaObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "should implement getContentUri."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v1, "MediaObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The object was created from path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getDataVersion()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/android/gallery3d/data/MediaDetails;

    invoke-direct {v0}, Lcom/android/gallery3d/data/MediaDetails;-><init>()V

    .line 166
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGPSAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaObject;->mGpsAlbums:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-interface {p1, p0, v0, v0}, Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;->panoramaInfoAvailable(Lcom/android/gallery3d/data/MediaObject;ZZ)V

    .line 111
    return-void
.end method

.method public getPath()Lcom/android/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public moveAlbumToSecureBox(Lcom/android/gallery3d/data/Path;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public movePicToSecureBox(Landroid/net/Uri;Z)Z
    .locals 1
    .parameter "uri"
    .parameter "isAudioJpeg"

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public removeAlbumFromSecureBox(Lcom/android/gallery3d/data/Path;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public removePicFromSecureBox(Lcom/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "uri"
    .parameter "filePath"

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public savePicToCollect(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"
    .parameter "itemFilePath"
    .parameter "collectPath"

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method
