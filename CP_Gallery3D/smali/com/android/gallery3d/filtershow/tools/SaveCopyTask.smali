.class public Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;
.super Landroid/os/AsyncTask;
.source "SaveCopyTask.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;,
        Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/gallery3d/filtershow/presets/ImagePreset;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field private static final COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

.field private final context:Landroid/content/Context;

.field private destinationFile:Ljava/io/File;

.field private final saveFileName:Ljava/lang/String;

.field private final sourceUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 218
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ExposureTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ISOSpeedRatings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;)V
    .locals 4
    .parameter "context"
    .parameter "activity"
    .parameter "sourceUri"
    .parameter "destination"
    .parameter "callback"

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->activity:Landroid/app/Activity;

    .line 146
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    .line 147
    iput-object p5, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    .line 149
    if-nez p4, :cond_0

    .line 150
    invoke-static {p1, p3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    .line 155
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveFileName:Ljava/lang/String;

    .line 157
    return-void

    .line 152
    :cond_0
    iput-object p4, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    goto :goto_0
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 112
    if-eqz p0, :cond_0

    .line 114
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private copyExif(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .parameter "sourceUri"
    .parameter "destPath"

    .prologue
    const/4 v3, 0x0

    .line 260
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->copyExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v3

    .line 269
    .local v2, PROJECTION:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 271
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-static {v8, p2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->copyExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local v8           #path:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 279
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SaveCopyTask"

    const-string v1, "Failed to copy exif"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static copyExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "sourcePath"
    .parameter "destPath"

    .prologue
    .line 241
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 242
    .local v6, source:Landroid/media/ExifInterface;
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, dest:Landroid/media/ExifInterface;
    const/4 v5, 0x0

    .line 244
    .local v5, needsSave:Z
    sget-object v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 245
    .local v7, tag:Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 247
    const/4 v5, 0x1

    .line 248
    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v7           #tag:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 252
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dest:Landroid/media/ExifInterface;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #needsSave:Z
    .end local v6           #source:Landroid/media/ExifInterface;
    :cond_2
    :goto_1
    return-void

    .line 254
    :catch_0
    move-exception v2

    .line 255
    .local v2, ex:Ljava/io/IOException;
    const-string v9, "SaveCopyTask"

    const-string v10, "Failed to copy exif metadata"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 161
    .local v0, saveDirectory:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #saveDirectory:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "EditedOnlinePhotos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .restart local v0       #saveDirectory:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 167
    :cond_2
    return-object v0
.end method

.method public static getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 6
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    .line 171
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 172
    .local v1, saveDirectory:Ljava/io/File;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, filename:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".JPG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 403
    new-array v0, v1, [Ljava/io/File;

    .line 404
    .local v0, dir:[Ljava/io/File;
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 414
    aget-object v1, v0, v3

    return-object v1
.end method

.method public static insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 11
    .parameter "context"
    .parameter "sourceUri"
    .parameter "file"
    .parameter "saveFileName"
    .parameter "isAudioJpeg"

    .prologue
    const/4 v10, 0x0

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v2, v6, v8

    .line 424
    .local v2, now:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v6, "_display_name"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v6, "mime_type"

    const-string v7, "image/jpeg"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v6, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 429
    const-string v6, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 430
    const-string v6, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    const-string v6, "orientation"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    const-string v6, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v6, "_size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 435
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "datetaken"

    aput-object v6, v4, v10

    const/4 v6, 0x1

    const-string v7, "latitude"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "longitude"

    aput-object v7, v4, v6

    .line 439
    .local v4, projection:[Ljava/lang/String;
    new-instance v6, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;

    invoke-direct {v6, v5}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, v4, v6}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 457
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 458
    .local v1, baseUri:Landroid/net/Uri;
    const-string v6, "SaveCopyTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and isAudioJpeg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz p4, :cond_0

    .line 461
    const/4 v0, 0x1

    .line 462
    .local v0, audioJpegType:I
    const-string v6, "secure"

    invoke-static {v6}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 463
    const-string v6, "isaudioJpeg"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    .end local v0           #audioJpegType:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    return-object v6
.end method

.method private loadMutableBitmap()Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 178
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 181
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 185
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 187
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 188
    .local v4, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 189
    const/4 v10, 0x0

    invoke-static {v3, v10, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 192
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 193
    .local v9, width_screen:I
    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v8, v10, v9

    .line 194
    .local v8, width_scale:I
    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v10, v9

    .line 195
    .local v2, height_scale:I
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 196
    .local v7, scale:I
    if-gtz v7, :cond_0

    const/4 v7, 0x1

    .line 199
    :cond_0
    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 201
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    .line 202
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 204
    const/4 v10, 0x0

    invoke-static {v3, v10, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 205
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-static {v10, v11}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    .line 206
    .local v6, orientation:I
    invoke-static {v1, v6}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 215
    .end local v2           #height_scale:I
    .end local v4           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #orientation:I
    .end local v7           #scale:I
    .end local v8           #width_scale:I
    .end local v9           #width_screen:I
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, OOM:Ljava/lang/OutOfMemoryError;
    if-eqz v1, :cond_1

    .line 209
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    const/4 v1, 0x0

    .line 213
    :cond_1
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #OOM:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v10

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v10
.end method

.method private static querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V
    .locals 7
    .parameter "context"
    .parameter "sourceUri"
    .parameter "projection"
    .parameter "callback"

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 386
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 388
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 390
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-interface {p3, v6}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_0
    if-eqz v6, :cond_1

    .line 397
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v1

    .line 396
    if-eqz v6, :cond_1

    .line 397
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 397
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/Object;)Z
    .locals 11
    .parameter "bitmap"
    .parameter "destination"
    .parameter "xmp"

    .prologue
    const/4 v6, 0x0

    .line 74
    const/4 v3, 0x1

    .line 77
    .local v3, result:Z
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v6

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    .line 90
    .local v4, spaceSize:J
    invoke-static {v4, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->calculateFileSize(J)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1           #os:Ljava/io/OutputStream;
    .local v2, os:Ljava/io/OutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5f

    invoke-virtual {p0, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 104
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    :goto_1
    if-eqz p2, :cond_3

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/gallery3d/util/XmpUtilHelper;->writeXMPMeta(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_3
    move v6, v3

    .line 108
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    const-string v6, "SaveCopyTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in writing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    const/4 v3, 0x0

    .line 102
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    throw v6

    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_3

    .line 98
    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/net/Uri;
    .locals 22
    .parameter "params"

    .prologue
    .line 289
    const/16 v17, 0x0

    aget-object v17, p1, v17

    if-nez v17, :cond_0

    .line 290
    const/4 v15, 0x0

    .line 366
    :goto_0
    return-object v15

    .line 293
    :cond_0
    const/16 v17, 0x0

    aget-object v12, p1, v17

    .line 294
    .local v12, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    const/4 v3, 0x0

    .line 295
    .local v3, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 298
    .local v8, is:Ljava/io/InputStream;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->loadMutableBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 301
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_3

    :cond_1
    const/4 v15, 0x0

    .line 361
    if-eqz v3, :cond_2

    .line 362
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 363
    const/4 v3, 0x0

    .line 366
    :cond_2
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 303
    :cond_3
    const/16 v16, 0x0

    .line 304
    .local v16, xmp:Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v12}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isPanoramaSafe()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 306
    invoke-static {v8}, Lcom/android/gallery3d/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v16

    .line 310
    .end local v16           #xmp:Ljava/lang/Object;
    :cond_4
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, exSdcardDirectory:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v13

    .line 312
    .local v13, spaceSize:J
    const/4 v10, 0x0

    .line 313
    .local v10, isExsdcardPic:Z
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    .line 318
    :cond_5
    invoke-static {v13, v14}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->calculateFileSize(J)J

    move-result-wide v17

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-gez v17, :cond_6

    .line 319
    invoke-static {v5}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v9

    .line 321
    .local v9, isExSdcardMounted:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 322
    .local v11, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, filename:Ljava/lang/String;
    if-nez v10, :cond_6

    .line 334
    if-eqz v9, :cond_8

    invoke-static {v5}, Lcom/android/gallery3d/util/CacheManager;->calRemaining(Ljava/lang/String;)J

    move-result-wide v17

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-lez v17, :cond_8

    .line 335
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v6, filePath:Ljava/io/File;
    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0e006b

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    .line 346
    .end local v6           #filePath:Ljava/io/File;
    .end local v7           #filename:Ljava/lang/String;
    .end local v9           #isExSdcardMounted:Z
    .end local v11           #pos:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->copyExif(Landroid/net/Uri;Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v3, v0, v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v15

    .line 350
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    const/4 v3, 0x0

    .line 361
    if-eqz v3, :cond_7

    .line 362
    throw v3

    .line 363
    const/4 v3, 0x0

    .line 366
    :cond_7
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 340
    .end local v15           #uri:Landroid/net/Uri;
    .restart local v7       #filename:Ljava/lang/String;
    .restart local v9       #isExSdcardMounted:Z
    .restart local v11       #pos:I
    :cond_8
    :try_start_2
    const-string v17, "SaveCopyTask"

    const-string v18, "doInBackground(): destinationFile == null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 341
    const/4 v15, 0x0

    .line 361
    if-eqz v3, :cond_9

    .line 362
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 363
    const/4 v3, 0x0

    .line 366
    :cond_9
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 355
    .end local v7           #filename:Ljava/lang/String;
    .end local v9           #isExSdcardMounted:Z
    .end local v11           #pos:I
    :cond_a
    const/4 v15, 0x0

    .line 361
    if-eqz v3, :cond_b

    .line 362
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 363
    const/4 v3, 0x0

    .line 366
    :cond_b
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 357
    .end local v5           #exSdcardDirectory:Ljava/lang/String;
    .end local v10           #isExsdcardPic:Z
    .end local v13           #spaceSize:J
    :catch_0
    move-exception v4

    .line 358
    .local v4, ex:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v17, "SaveCopyTask"

    const-string v18, "Failed to save image!"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    const/4 v15, 0x0

    .line 361
    if-eqz v3, :cond_c

    .line 362
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 363
    const/4 v3, 0x0

    .line 366
    :cond_c
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 361
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v17

    if-eqz v3, :cond_d

    .line 362
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 363
    const/4 v3, 0x0

    .line 366
    :cond_d
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v17
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, [Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->doInBackground([Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 373
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    const v3, 0x7f0e0045

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, message:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 377
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 378
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 380
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    invoke-interface {v2, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;->onComplete(Landroid/net/Uri;)V

    .line 381
    return-void

    .line 373
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    const v3, 0x7f0e0046

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
