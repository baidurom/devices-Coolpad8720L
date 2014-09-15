.class public Lcom/android/gallery3d/data/LocalImage;
.super Lcom/android/gallery3d/data/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;,
        Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;
    }
.end annotation


# static fields
.field public static final ITEM_PATH:Lcom/android/gallery3d/data/Path;

.field public static final ITEM_SECURE_PATH:Lcom/android/gallery3d/data/Path;

.field static final PROJECTION:[Ljava/lang/String;

.field static final PROJECTION_HASAUDIO:[Ljava/lang/String;


# instance fields
.field private isAudioImage:Z

.field private isHasAudioJpeg:Z

.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

.field public rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 70
    const-string v0, "/local/image/secure/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_SECURE_PATH:Lcom/android/gallery3d/data/Path;

    .line 92
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "latitude"

    aput-object v1, v0, v6

    const-string v1, "longitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 111
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "latitude"

    aput-object v1, v0, v6

    const-string v1, "longitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "isaudioJpeg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION_HASAUDIO:[Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->updateWidthAndHeightProjection()V

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZZ)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "id"
    .parameter "isSecure"
    .parameter "isHasAudio"

    .prologue
    const/4 v5, 0x0

    .line 168
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 89
    iput-boolean v5, p0, Lcom/android/gallery3d/data/LocalImage;->isHasAudioJpeg:Z

    .line 90
    iput-boolean v5, p0, Lcom/android/gallery3d/data/LocalImage;->isAudioImage:Z

    .line 145
    new-instance v3, Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/android/gallery3d/data/MediaObject;)V

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    .line 169
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 172
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 173
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 174
    .local v2, uri:Landroid/net/Uri;
    if-eqz p4, :cond_0

    .line 175
    const-string v3, "secure"

    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 178
    :cond_0
    iget-boolean v3, p0, Lcom/android/gallery3d/data/LocalImage;->isHasAudioJpeg:Z

    if-eqz v3, :cond_1

    .line 179
    sget-object v3, Lcom/android/gallery3d/data/LocalImage;->PROJECTION_HASAUDIO:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 182
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    if-nez v0, :cond_2

    .line 183
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get cursor for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 181
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v3, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .restart local v0       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 186
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 194
    return-void

    .line 189
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find data for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 3
    .parameter "path"
    .parameter "application"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 89
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalImage;->isHasAudioJpeg:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalImage;->isAudioImage:Z

    .line 145
    new-instance v0, Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/android/gallery3d/data/MediaObject;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    .line 149
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 150
    invoke-direct {p0, p3}, Lcom/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .parameter "application"
    .parameter "file"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 89
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalImage;->isHasAudioJpeg:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalImage;->isAudioImage:Z

    .line 145
    new-instance v0, Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/android/gallery3d/data/MediaObject;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    .line 155
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 156
    iput-object p3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5
    .parameter "in"
    .parameter "out"

    .prologue
    .line 835
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 836
    .local v0, buf:[B
    const/4 v3, 0x0

    .line 839
    .local v3, saveSuccess:Z
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    if-lez v2, :cond_0

    .line 840
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 843
    .end local v2           #len:I
    :catch_0
    move-exception v1

    .line 844
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x0

    .line 845
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    invoke-static {p0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 848
    invoke-static {p1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 850
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v3

    .line 842
    .restart local v2       #len:I
    :cond_0
    const/4 v3, 0x1

    .line 847
    invoke-static {p0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 848
    invoke-static {p1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 847
    .end local v2           #len:I
    :catchall_0
    move-exception v4

    invoke-static {p0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 848
    invoke-static {p1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 538
    sparse-switch p0, :sswitch_data_0

    .line 548
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 540
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    :goto_0
    return-object v0

    .line 542
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 544
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 546
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 538
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private handlePicFileStream(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 28
    .parameter "mUri"
    .parameter "filepath"
    .parameter "mPicName"
    .parameter "isRemove"
    .parameter "delete"
    .parameter "isAudioJpeg"

    .prologue
    .line 764
    const/16 v21, 0x0

    .line 765
    .local v21, saveSuccess:Z
    const-string v24, "LocalImage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ">>>>>>> enter handlePicFileStream mUri = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v9, 0x0

    .line 767
    .local v9, is:Ljava/io/InputStream;
    const/16 v22, 0x0

    .line 768
    .local v22, secureFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 769
    .local v2, bufferedInput:Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 770
    .local v4, bufferedOutput:Ljava/io/BufferedOutputStream;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_1

    const/4 v11, 0x0

    .line 772
    .local v11, isExternal_Sd:Z
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/gallery3d/util/CacheManager;->calRemaining(Ljava/lang/String;)J

    move-result-wide v14

    .line 774
    .local v14, mSdcardSpace:J
    if-eqz v11, :cond_0

    .line 775
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/gallery3d/util/CacheManager;->calRemaining(Ljava/lang/String;)J

    move-result-wide v14

    .line 779
    :cond_0
    if-eqz p4, :cond_2

    .line 780
    :try_start_0
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v22           #secureFile:Ljava/io/File;
    .local v23, secureFile:Ljava/io/File;
    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v9           #is:Ljava/io/InputStream;
    .local v10, is:Ljava/io/InputStream;
    move-object/from16 v22, v23

    .end local v23           #secureFile:Ljava/io/File;
    .restart local v22       #secureFile:Ljava/io/File;
    move-object v9, v10

    .line 785
    .end local v10           #is:Ljava/io/InputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Lcom/android/gallery3d/util/CacheManager;->calculateFileSize(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v24

    const-wide/16 v26, 0x3

    add-long v24, v24, v26

    cmp-long v24, v14, v24

    if-gez v24, :cond_3

    .line 786
    const/16 v24, 0x0

    .line 825
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 826
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 827
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 830
    :goto_2
    return v24

    .line 770
    .end local v11           #isExternal_Sd:Z
    .end local v14           #mSdcardSpace:J
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    goto :goto_0

    .line 783
    .restart local v11       #isExternal_Sd:Z
    .restart local v14       #mSdcardSpace:J
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    goto :goto_1

    .line 788
    :cond_3
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v24, 0x4000

    move/from16 v0, v24

    invoke-direct {v3, v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 789
    .end local v2           #bufferedInput:Ljava/io/BufferedInputStream;
    .local v3, bufferedInput:Ljava/io/BufferedInputStream;
    :try_start_4
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 790
    .local v13, mFilepath:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_4

    .line 791
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 793
    :cond_4
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v8, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 795
    .local v8, file:Ljava/io/File;
    const-string v24, "."

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 796
    .local v12, len:I
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 797
    .local v16, mediaType:Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 798
    .local v18, name:Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 799
    .local v20, picName:Ljava/lang/String;
    const/4 v6, 0x1

    .line 801
    .local v6, count:I
    :goto_3
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 802
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    add-int/lit8 v25, v6, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 803
    .local v17, more:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 804
    move-object/from16 v18, v20

    .line 806
    :cond_5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 807
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 808
    new-instance v8, Ljava/io/File;

    .end local v8           #file:Ljava/io/File;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v8, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 809
    .restart local v8       #file:Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    .line 810
    goto/16 :goto_3

    .line 811
    .end local v17           #more:Ljava/lang/String;
    :cond_6
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 812
    .local v19, outFile:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 813
    .end local v4           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .local v5, bufferedOutput:Ljava/io/BufferedOutputStream;
    :try_start_5
    const-string v24, "LocalImage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ">>>  begin write  mUri= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  to outFile = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-static {v3, v5}, Lcom/android/gallery3d/data/LocalImage;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v21

    .line 815
    const-string v24, "LocalImage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ">>>  end write   mUri= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  to outFile = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    if-nez p6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 817
    :cond_7
    const-string v24, "LocalImage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "secure file path: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    if-eqz p5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/data/LocalImage;->delete()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 825
    :cond_8
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 826
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 827
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v4       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 829
    .end local v3           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v6           #count:I
    .end local v8           #file:Ljava/io/File;
    .end local v12           #len:I
    .end local v13           #mFilepath:Ljava/io/File;
    .end local v16           #mediaType:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #outFile:Ljava/io/FileOutputStream;
    .end local v20           #picName:Ljava/lang/String;
    .restart local v2       #bufferedInput:Ljava/io/BufferedInputStream;
    :goto_4
    const-string v24, "LocalImage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "saveSuccess: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v21

    .line 830
    goto/16 :goto_2

    .line 820
    :catch_0
    move-exception v7

    .line 821
    .local v7, e:Ljava/lang/Exception;
    :goto_5
    :try_start_6
    const-string v24, "LocalImage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "handlePicFileStream() has exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 823
    const/16 v21, 0x0

    .line 825
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 826
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 827
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    .line 825
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v24

    :goto_6
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 826
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 827
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v24

    .line 825
    .end local v22           #secureFile:Ljava/io/File;
    .restart local v23       #secureFile:Ljava/io/File;
    :catchall_1
    move-exception v24

    move-object/from16 v22, v23

    .end local v23           #secureFile:Ljava/io/File;
    .restart local v22       #secureFile:Ljava/io/File;
    goto :goto_6

    .end local v2           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v3       #bufferedInput:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v24

    move-object v2, v3

    .end local v3           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v2       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v2           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v4           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v3       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v5       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v6       #count:I
    .restart local v8       #file:Ljava/io/File;
    .restart local v12       #len:I
    .restart local v13       #mFilepath:Ljava/io/File;
    .restart local v16       #mediaType:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #outFile:Ljava/io/FileOutputStream;
    .restart local v20       #picName:Ljava/lang/String;
    :catchall_3
    move-exception v24

    move-object v4, v5

    .end local v5           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v4       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v2       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 820
    .end local v6           #count:I
    .end local v8           #file:Ljava/io/File;
    .end local v12           #len:I
    .end local v13           #mFilepath:Ljava/io/File;
    .end local v16           #mediaType:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #outFile:Ljava/io/FileOutputStream;
    .end local v20           #picName:Ljava/lang/String;
    .end local v22           #secureFile:Ljava/io/File;
    .restart local v23       #secureFile:Ljava/io/File;
    :catch_1
    move-exception v7

    move-object/from16 v22, v23

    .end local v23           #secureFile:Ljava/io/File;
    .restart local v22       #secureFile:Ljava/io/File;
    goto :goto_5

    .end local v2           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v3       #bufferedInput:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v7

    move-object v2, v3

    .end local v3           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v2       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v2           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v4           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v3       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v5       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v6       #count:I
    .restart local v8       #file:Ljava/io/File;
    .restart local v12       #len:I
    .restart local v13       #mFilepath:Ljava/io/File;
    .restart local v16       #mediaType:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #outFile:Ljava/io/FileOutputStream;
    .restart local v20       #picName:Ljava/lang/String;
    :catch_3
    move-exception v7

    move-object v4, v5

    .end local v5           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v4       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v2       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_5
.end method

.method public static isEditSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 507
    if-nez p0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 508
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 509
    const-string v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "image/gif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wbmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 197
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    .line 198
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 199
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 200
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 201
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 202
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    .line 203
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    .line 204
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 205
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 206
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    .line 207
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    .line 208
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 209
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 210
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 215
    iget-boolean v2, p0, Lcom/android/gallery3d/data/LocalImage;->isHasAudioJpeg:Z

    if-eqz v2, :cond_0

    .line 216
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalImage;->isAudioImage:Z

    .line 220
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 216
    goto :goto_0
.end method

.method private static updateWidthAndHeightProjection()V
    .locals 3

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "width"

    aput-object v2, v0, v1

    .line 137
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "height"

    aput-object v2, v0, v1

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 525
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 526
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 527
    .local v0, baseUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const-string v2, "/data/yulong_secure/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    const-string v1, "secure"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 533
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/GalleryApp;->DeleteUriData(I)V

    .line 534
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 535
    return-void
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 582
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 583
    .local v0, baseUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const-string v2, "/data/yulong_secure/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    const-string v1, "secure"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 586
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 596
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 597
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 599
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 600
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 605
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    .line 607
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x2

    return v0
.end method

.method public getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;->getPanoramaSupport(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 516
    return-void
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 759
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method public getSupportedOperations()I
    .locals 21

    .prologue
    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v11

    .line 413
    .local v11, progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/data/LocalImage;->getContentUri()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/app/StitchingProgressManager;->getProgress(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 414
    const/4 v9, 0x0

    .line 503
    :cond_0
    :goto_0
    return v9

    .line 426
    :cond_1
    const/4 v12, 0x0

    .line 428
    .local v12, saveAlbum:Z
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 429
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e0113

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v13

    .line 431
    .local v13, sd_id:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v13, v0, :cond_2

    const/4 v12, 0x1

    .line 433
    .end local v13           #sd_id:I
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 434
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e0113

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 436
    .local v4, external_id:I
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v4, v0, :cond_4

    .line 443
    .end local v4           #external_id:I
    :cond_3
    :goto_1
    const v9, 0x3000401

    .line 444
    .local v9, operation:I
    const-string v16, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v17, "notifySecureServer"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v5

    .line 447
    .local v5, hasCrypto:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "/data/yulong_secure/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    if-eqz v5, :cond_6

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    .line 449
    .local v3, context:Landroid/content/Context;
    const-string v16, "coolpadSystem"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 451
    .local v7, mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    const-string v16, "com.yulong.android.crypto.PrivateFile"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 453
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 455
    .local v10, privateFile:Ljava/lang/Object;
    const-string v16, "com.yulong.android.crypto.PrivateFile"

    const-string v17, "isPrivateFile"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/String;

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 458
    .local v8, method:Ljava/lang/reflect/Method;
    const v16, -0x2000001

    and-int v9, v9, v16

    .line 459
    const v16, -0x1000001

    and-int v9, v9, v16

    .line 462
    if-eqz v8, :cond_0

    .line 463
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v10, v0}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 465
    .local v6, isPrivate:Z
    const/high16 v16, 0x8

    move/from16 v0, v16

    or-int/lit16 v9, v0, 0x401

    .line 466
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/yulong/android/server/systeminterface/SystemManager;->isPrivateMode()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 467
    if-eqz v6, :cond_5

    .line 468
    const/high16 v16, 0x80

    or-int v9, v9, v16

    goto/16 :goto_0

    .line 438
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #hasCrypto:Z
    .end local v6           #isPrivate:Z
    .end local v7           #mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v9           #operation:I
    .end local v10           #privateFile:Ljava/lang/Object;
    .restart local v4       #external_id:I
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 470
    .end local v4           #external_id:I
    .restart local v2       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v3       #context:Landroid/content/Context;
    .restart local v5       #hasCrypto:Z
    .restart local v6       #isPrivate:Z
    .restart local v7       #mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    .restart local v8       #method:Ljava/lang/reflect/Method;
    .restart local v9       #operation:I
    .restart local v10       #privateFile:Ljava/lang/Object;
    :cond_5
    const/high16 v16, 0x40

    or-int v9, v9, v16

    goto/16 :goto_0

    .line 475
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #context:Landroid/content/Context;
    .end local v6           #isPrivate:Z
    .end local v7           #mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v10           #privateFile:Ljava/lang/Object;
    :cond_6
    const v16, 0x4000024

    or-int v9, v9, v16

    .line 477
    if-eqz v5, :cond_7

    const/high16 v16, 0x4

    or-int v9, v9, v16

    .line 479
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4980

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-long v14, v0

    .line 480
    .local v14, size:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 481
    or-int/lit8 v9, v9, 0x40

    .line 484
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/data/LocalImage;->isEditSupported(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    const-wide/16 v16, 0x10

    cmp-long v16, v14, v16

    if-gez v16, :cond_9

    .line 485
    or-int/lit16 v9, v9, 0x200

    .line 488
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    const-wide/16 v16, 0x10

    cmp-long v16, v14, v16

    if-gez v16, :cond_a

    .line 489
    or-int/lit8 v9, v9, 0x2

    .line 492
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 493
    or-int/lit8 v9, v9, 0x10

    .line 496
    :cond_b
    const-wide/16 v16, 0x64

    cmp-long v16, v14, v16

    if-gez v16, :cond_c

    if-eqz v12, :cond_c

    .line 497
    const/high16 v16, 0x2

    or-int v9, v9, v16

    .line 499
    :cond_c
    const-wide/16 v16, 0xa

    cmp-long v16, v14, v16

    if-gez v16, :cond_0

    .line 500
    or-int/lit8 v9, v9, 0x8

    goto/16 :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    return v0
.end method

.method public isAudioImage()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalImage;->isAudioImage:Z

    return v0
.end method

.method public movePicToSecureBox(Landroid/net/Uri;Z)Z
    .locals 13
    .parameter "mUri"
    .parameter "isAudioJpeg"

    .prologue
    const/4 v4, 0x0

    .line 688
    const/4 v12, 0x0

    .line 689
    .local v12, saveSuccess:Z
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 690
    const-string v2, "/data/yulong_secure/"

    .line 691
    .local v2, mFilepath:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, mPicName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 693
    .local v11, mFilePathLen:I
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 694
    .local v10, len:I
    if-le v11, v10, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 696
    .local v7, albumPath:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 697
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 698
    .local v8, albumPathLen:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_0

    .line 699
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 700
    .local v9, albumTitle:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 703
    .end local v7           #albumPath:Ljava/lang/String;
    .end local v8           #albumPathLen:I
    .end local v9           #albumTitle:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/LocalImage;->handlePicFileStream(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v12

    .line 716
    .end local v2           #mFilepath:Ljava/lang/String;
    .end local v3           #mPicName:Ljava/lang/String;
    .end local v10           #len:I
    .end local v11           #mFilePathLen:I
    :cond_1
    return v12
.end method

.method public removePicFromSecureBox(Lcom/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 19
    .parameter "path"
    .parameter "mUri"
    .parameter "picfilePath"

    .prologue
    .line 722
    const/16 v16, 0x0

    .line 723
    .local v16, saveSuccess:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    .line 725
    .local v10, context:Landroid/content/Context;
    const-string v1, "com.yulong.android.crypto.CryptoManagerClient"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 727
    .local v9, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-static {v9, v1}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 730
    .local v11, cryptoManagerClient:Ljava/lang/Object;
    const-string v1, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v2, "getRemovePath"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 732
    .local v14, method:Ljava/lang/reflect/Method;
    if-eqz v14, :cond_0

    .line 733
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v14, v11, v1}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 735
    .local v3, mFilepath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/data/DataManager;->removePrivateModelPic(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 737
    .local v12, imagePath:Ljava/lang/String;
    const-string v17, "/data/yulong_secure/"

    .line 738
    .local v17, securepath:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    .line 739
    .local v18, securepathLen:I
    if-eqz v12, :cond_0

    .line 740
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 741
    .local v13, mPicpath:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v13, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 742
    .local v8, albumPath:I
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 743
    .local v4, mPicName:Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/gallery3d/data/LocalImage;->handlePicFileStream(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v16

    .line 747
    .end local v3           #mFilepath:Ljava/lang/String;
    .end local v4           #mPicName:Ljava/lang/String;
    .end local v8           #albumPath:I
    .end local v12           #imagePath:Ljava/lang/String;
    .end local v13           #mPicpath:Ljava/lang/String;
    .end local v17           #securepath:Ljava/lang/String;
    .end local v18           #securepathLen:I
    :cond_0
    const-string v1, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v2, "release"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 749
    .local v15, releaseMethod:Ljava/lang/reflect/Method;
    if-eqz v15, :cond_1

    .line 751
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v15, v11, v1}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :cond_1
    return v16
.end method

.method public requestImage(II)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 15
    .parameter "type"
    .parameter "coverTpye"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    iget-wide v7, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v9, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    iget-wide v11, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    iget v13, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    const/4 v14, 0x0

    move/from16 v3, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v14}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;IIDDJIZ)V

    return-object v0
.end method

.method public requestImage(IIZ)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 15
    .parameter "type"
    .parameter "coverTpye"
    .parameter "isLocalAlbum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    iget-wide v7, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v9, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    iget-wide v11, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    iget v13, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    move/from16 v3, p1

    move/from16 v6, p2

    move/from16 v14, p3

    invoke-direct/range {v0 .. v14}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;IIDDJIZ)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public requestLargeImage(Ljava/lang/String;)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "cameraFilePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 10
    .parameter "degrees"

    .prologue
    .line 554
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 555
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 556
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 557
    .local v4, values:Landroid/content/ContentValues;
    iget v5, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    add-int/2addr v5, p1

    rem-int/lit16 v3, v5, 0x168

    .line 558
    .local v3, rotation:I
    if-gez v3, :cond_0

    add-int/lit16 v3, v3, 0x168

    .line 560
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const-string v6, "image/jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 562
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 563
    .local v2, exif:Landroid/media/ExifInterface;
    const-string v5, "Orientation"

    invoke-static {v3}, Lcom/android/gallery3d/data/LocalImage;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v2           #exif:Landroid/media/ExifInterface;
    :goto_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 572
    const-string v5, "_size"

    iget-wide v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 575
    :cond_1
    const-string v5, "orientation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 578
    return-void

    .line 566
    :catch_0
    move-exception v1

    .line 567
    .local v1, e:Ljava/io/IOException;
    const-string v5, "LocalImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot set exif data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePicToCollect(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .parameter "mUri"
    .parameter "itemFilePath"
    .parameter "collectPath"

    .prologue
    .line 652
    const/16 v16, 0x0

    .line 654
    .local v16, saveSuccess:Z
    const/4 v9, 0x0

    .line 655
    .local v9, isGalleryPic:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 656
    .local v14, now:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, mPicName:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 659
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    .line 660
    .local v13, mmFilePathLen:I
    const-string v1, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 661
    .local v10, len:I
    if-le v13, v10, :cond_0

    .line 662
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 663
    .local v8, Path:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 664
    add-int/lit8 v1, v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 678
    .end local v8           #Path:Ljava/lang/String;
    .end local v10           #len:I
    .end local v13           #mmFilePathLen:I
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    .line 679
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/gallery3d/data/LocalImage;->handlePicFileStream(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v16

    .line 682
    :cond_1
    return v16

    .line 666
    :cond_2
    if-eqz p1, :cond_0

    .line 667
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 668
    .local v11, mContentUri:Ljava/lang/String;
    const-string v1, "file://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 670
    .local v12, mContentUriLen:I
    const-string v1, "/"

    invoke-virtual {v11, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 671
    .restart local v10       #len:I
    if-le v12, v10, :cond_0

    .line 672
    const/4 v1, 0x0

    invoke-virtual {v11, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 673
    .restart local v8       #Path:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 674
    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 257
    new-instance v0, Lcom/android/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcom/android/gallery3d/util/UpdateHelper;-><init>()V

    .line 258
    .local v0, uh:Lcom/android/gallery3d/util/UpdateHelper;
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    .line 259
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 261
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 262
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 263
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    .line 265
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    .line 267
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 269
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 270
    iget v1, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    .line 271
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    .line 272
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 273
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 274
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 279
    iget-boolean v1, p0, Lcom/android/gallery3d/data/LocalImage;->isHasAudioJpeg:Z

    if-eqz v1, :cond_0

    .line 280
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/data/LocalImage;->isAudioImage:Z

    .line 284
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1

    :cond_1
    move v1, v3

    .line 280
    goto :goto_0
.end method
