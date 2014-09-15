.class Lcom/android/gallery3d/data/UriSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "UriSource.java"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const-string v0, "uri"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/data/UriSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 43
    return-void
.end method

.method private getMediaType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 106
    const-string v8, "image/*"

    .line 107
    .local v8, type:Ljava/lang/String;
    const/4 v4, 0x0

    .line 108
    .local v4, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 110
    .local v0, bufferedInput:Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/gallery3d/data/UriSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 111
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v9, 0x4000

    invoke-direct {v1, v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0           #bufferedInput:Ljava/io/BufferedInputStream;
    .local v1, bufferedInput:Ljava/io/BufferedInputStream;
    const/16 v9, 0xa

    :try_start_1
    new-array v6, v9, [B

    .line 113
    .local v6, mTypeBuffer:[B
    const/4 v2, 0x6

    .line 114
    .local v2, byteCount:I
    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    .line 115
    .local v7, mediaType:I
    if-lez v7, :cond_1

    .line 116
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 117
    .local v5, mString:Ljava/lang/String;
    const-string v9, "GIF87a"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "GIF89a"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 119
    :cond_0
    const-string v8, "image/gif"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .end local v5           #mString:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 143
    .end local v1           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v2           #byteCount:I
    .end local v6           #mTypeBuffer:[B
    .end local v7           #mediaType:I
    .restart local v0       #bufferedInput:Ljava/io/BufferedInputStream;
    :goto_1
    return-object v8

    .line 120
    .end local v0           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v1       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v2       #byteCount:I
    .restart local v5       #mString:Ljava/lang/String;
    .restart local v6       #mTypeBuffer:[B
    .restart local v7       #mediaType:I
    :cond_2
    const/4 v9, 0x0

    :try_start_2
    aget-byte v9, v6, v9

    if-ne v9, v12, :cond_3

    const/4 v9, 0x1

    aget-byte v9, v6, v9

    const/16 v10, -0x28

    if-ne v9, v10, :cond_3

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-ne v9, v12, :cond_3

    .line 122
    const-string v8, "image/jpg"

    goto :goto_0

    .line 123
    :cond_3
    const-string v9, "PNG"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 125
    const-string v8, "image/png"

    goto :goto_0

    .line 126
    :cond_4
    const-string v9, "BM"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 128
    const-string v8, "image/bmp"

    goto :goto_0

    .line 129
    :cond_5
    const-string v9, "II*"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "MM*"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 131
    :cond_6
    const-string v8, "image/tif"

    goto :goto_0

    .line 132
    :cond_7
    const/4 v9, 0x0

    aget-byte v9, v6, v9

    const/4 v10, 0x1

    aget-byte v10, v6, v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v10

    if-nez v9, :cond_1

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    const/4 v10, 0x3

    aget-byte v10, v6, v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v10

    if-ne v9, v11, :cond_1

    .line 134
    const-string v8, "image/ico"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 137
    .end local v1           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v2           #byteCount:I
    .end local v5           #mString:Ljava/lang/String;
    .end local v6           #mTypeBuffer:[B
    .end local v7           #mediaType:I
    .restart local v0       #bufferedInput:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v3

    .line 138
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 140
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 140
    .end local v0           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v1       #bufferedInput:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v0       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 137
    .end local v0           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v1       #bufferedInput:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v0       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 61
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 72
    .end local v0           #extension:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 70
    .end local v1           #type:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/UriSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1       #type:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, "image/*"

    goto :goto_0
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 7
    .parameter "path"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, segment:[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 49
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v1, v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, uri:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, v1, v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, type:Ljava/lang/String;
    new-instance v4, Lcom/android/gallery3d/data/UriImage;

    iget-object v5, p0, Lcom/android/gallery3d/data/UriSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, p1, v6, v2}, Lcom/android/gallery3d/data/UriImage;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 55
    .end local v2           #type:Ljava/lang/String;
    .end local v3           #uri:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter "uri"
    .parameter "type"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriSource;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, mimeType:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v2, "image/*"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    move-object p2, v1

    .line 85
    :cond_1
    const-string v2, "image/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriSource;->getMediaType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 88
    :cond_2
    const-string v2, "image/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/uri/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 98
    :goto_0
    return-object v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 98
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
