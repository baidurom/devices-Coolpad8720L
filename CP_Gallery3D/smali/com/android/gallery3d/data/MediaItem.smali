.class public abstract Lcom/android/gallery3d/data/MediaItem;
.super Lcom/android/gallery3d/data/MediaObject;
.source "MediaItem.java"


# static fields
.field private static sCameraCoverSize:I

.field private static final sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

.field private static sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

.field private static sMicrothumbnailTargetSize:I

.field private static final sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

.field private static sThumbnailTargetSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x280

    const/4 v2, 0x4

    .line 48
    const/16 v0, 0xc0

    sput v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 49
    sput v3, Lcom/android/gallery3d/data/MediaItem;->sCameraCoverSize:I

    .line 51
    new-instance v0, Lcom/android/gallery3d/data/BytesBufferPool;

    const v1, 0x32000

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    .line 54
    sput v3, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 55
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/BitmapPool;-><init>(I)V

    :goto_0
    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaObject;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 72
    return-void
.end method

.method public static getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method public static getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->initializeMicroThumbPool()V

    .line 164
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method public static getTargetSize(I)I
    .locals 2
    .parameter "type"

    .prologue
    .line 147
    packed-switch p0, :pswitch_data_0

    .line 155
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_1
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 153
    :goto_0
    return v0

    .line 151
    :pswitch_2
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    goto :goto_0

    .line 153
    :pswitch_3
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sCameraCoverSize:I

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method private static initializeMicroThumbPool()V
    .locals 4

    .prologue
    .line 176
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    sget v1, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    sget v2, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/data/BitmapPool;-><init>(III)V

    :goto_0
    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    .line 180
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setThumbnailSizes(III)V
    .locals 1
    .parameter "size"
    .parameter "coverSize"
    .parameter "microSize"

    .prologue
    .line 183
    sput p0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 184
    sput p1, Lcom/android/gallery3d/data/MediaItem;->sCameraCoverSize:I

    .line 185
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    if-eq v0, p2, :cond_0

    .line 186
    sput p2, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 187
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->initializeMicroThumbPool()V

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaces()[Lcom/android/gallery3d/data/Face;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, ""

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    const-wide/16 v1, 0x0

    .line 83
    const/4 v0, 0x0

    aput-wide v1, p1, v0

    .line 84
    const/4 v0, 0x1

    aput-wide v1, p1, v0

    .line 85
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, ""

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public isAudioImage()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public abstract requestImage(II)Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestImage(IIZ)Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLargeImage(Ljava/lang/String;)Lcom/android/gallery3d/util/ThreadPool$Job;
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
.end method
