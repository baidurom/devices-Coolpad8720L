.class public Lcom/android/gallery3d/util/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# static fields
.field private static DEFAULT_THUMBNAIL_SIZE:I

.field private static sCameraAvailable:Z

.field private static sCameraAvailableInitialized:Z

.field private static volatile sCurrentThread:Ljava/lang/Thread;

.field private static sPixelDensity:F

.field private static sPixelXdpi:F

.field private static volatile sWarned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/high16 v0, -0x4080

    sput v0, Lcom/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    .line 80
    const/high16 v0, 0x43a3

    sput v0, Lcom/android/gallery3d/util/GalleryUtils;->sPixelXdpi:F

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    .line 85
    const/16 v0, 0x100

    sput v0, Lcom/android/gallery3d/util/GalleryUtils;->DEFAULT_THUMBNAIL_SIZE:I

    return-void
.end method

.method public static accurateDistanceMeters(DDDD)D
    .locals 14
    .parameter "lat1"
    .parameter "lng1"
    .parameter "lat2"
    .parameter "lng2"

    .prologue
    .line 201
    const-wide/high16 v6, 0x3fe0

    sub-double v8, p4, p0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 202
    .local v0, dlat:D
    const-wide/high16 v6, 0x3fe0

    sub-double v8, p6, p2

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 203
    .local v2, dlng:D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 204
    .local v4, x:D
    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x415849c600000000L

    mul-double/2addr v6, v8

    return-wide v6
.end method

.method public static assertNotInRenderThread()V
    .locals 3

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->sWarned:Z

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->sWarned:Z

    .line 168
    const-string v0, "GalleryUtils"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Should not do this in render thread"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_0
    return-void
.end method

.method public static checkFileNameContent(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    const/4 v0, 0x0

    .line 454
    if-nez p0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 455
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 456
    const-string v1, ".*[\\\\/:*?\"<>|]+.*"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 4
    .parameter "context"
    .parameter "intent"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, typeBits:I
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, type:Ljava/lang/String;
    const-string v2, "*/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    const/4 v1, 0x3

    .line 395
    :goto_0
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_INTENT_EXTRA_LOCAL_ONLY:Z

    if-eqz v2, :cond_0

    .line 396
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    or-int/lit8 v1, v1, 0x4

    .line 401
    :cond_0
    return v1

    .line 385
    :cond_1
    const-string v2, "image/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 388
    :cond_3
    const-string v2, "video/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "vnd.android.cursor.dir/video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 390
    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    .line 392
    :cond_5
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static dpToPixel(F)F
    .locals 1
    .parameter "dp"

    .prologue
    .line 128
    sget v0, Lcom/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dpToPixel(I)I
    .locals 1
    .parameter "dp"

    .prologue
    .line 132
    int-to-float v0, p0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static fastDistanceMeters(DDDD)D
    .locals 12
    .parameter "latRad1"
    .parameter "lngRad1"
    .parameter "latRad2"
    .parameter "lngRad2"

    .prologue
    .line 178
    sub-double v8, p0, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    sub-double v8, p2, p6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 180
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/android/gallery3d/util/GalleryUtils;->accurateDistanceMeters(DDDD)D

    move-result-wide v8

    .line 196
    :goto_0
    return-wide v8

    .line 183
    :cond_1
    sub-double v2, p0, p4

    .line 186
    .local v2, sineLat:D
    sub-double v4, p2, p6

    .line 190
    .local v4, sineLng:D
    add-double v8, p0, p4

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 191
    .local v0, cosTerms:D
    mul-double/2addr v0, v0

    .line 192
    mul-double v8, v2, v2

    mul-double v10, v0, v4

    mul-double/2addr v10, v4

    add-double v6, v8, v10

    .line 193
    .local v6, trigTerm:D
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 196
    const-wide v8, 0x415849c600000000L

    mul-double/2addr v8, v6

    goto :goto_0
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "duration"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 366
    div-int/lit16 v1, p1, 0xe10

    .line 367
    .local v1, h:I
    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x3c

    .line 368
    .local v2, m:I
    mul-int/lit16 v4, v1, 0xe10

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v4, v5

    sub-int v3, p1, v4

    .line 370
    .local v3, s:I
    if-nez v1, :cond_0

    .line 371
    const v4, 0x7f0e0070

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, durationValue:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 373
    .end local v0           #durationValue:Ljava/lang/String;
    :cond_0
    const v4, 0x7f0e0071

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
    .locals 4
    .parameter "format"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 313
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 361
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "in"

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 142
    .local v6, result:[B
    const/4 v4, 0x0

    .line 143
    .local v4, output:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #output:I
    .local v5, output:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 144
    .local v1, ch:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #output:I
    .restart local v4       #output:I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 145
    add-int/lit8 v5, v4, 0x1

    .end local v4           #output:I
    .restart local v5       #output:I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v1           #ch:C
    :cond_0
    return-object v6
.end method

.method public static getCurrentScreenOrient(Landroid/app/Activity;)I
    .locals 5
    .parameter "activity"

    .prologue
    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, landscape:I
    const/4 v2, 0x1

    .line 475
    .local v2, portrait:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 476
    .local v3, width:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 477
    .local v0, height:I
    if-le v3, v0, :cond_0

    .end local v1           #landscape:I
    :goto_0
    return v1

    .restart local v1       #landscape:I
    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getSelectionModePrompt(I)I
    .locals 1
    .parameter "typeBits"

    .prologue
    .line 405
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 406
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f0e0087

    .line 410
    :goto_0
    return v0

    .line 406
    :cond_0
    const v0, 0x7f0e0088

    goto :goto_0

    .line 410
    :cond_1
    const v0, 0x7f0e0086

    goto :goto_0
.end method

.method public static getXdpi()F
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/gallery3d/util/GalleryUtils;->sPixelXdpi:F

    return v0
.end method

.method public static hasSpaceForSize(J)Z
    .locals 9
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 414
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v4

    .line 419
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, path:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 422
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    cmp-long v5, v5, p0

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 423
    .end local v2           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "GalleryUtils"

    const-string v6, "Fail to access external storage"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 89
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 92
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 93
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    .line 94
    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    sput v3, Lcom/android/gallery3d/util/GalleryUtils;->sPixelXdpi:F

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    .local v1, r:Landroid/content/res/Resources;
    const v3, 0x7f0b000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/TiledScreenNail;->setPlaceholderColor(I)V

    .line 98
    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->initializeThumbnailSizes(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 99
    return-void
.end method

.method private static initializeThumbnailSizes(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 4
    .parameter "metrics"
    .parameter "r"

    .prologue
    .line 102
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 106
    .local v0, maxPixels:I
    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v0, 0x2

    sget v3, Lcom/android/gallery3d/util/GalleryUtils;->DEFAULT_THUMBNAIL_SIZE:I

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/data/MediaItem;->setThumbnailSizes(III)V

    .line 107
    invoke-static {v0}, Lcom/android/gallery3d/ui/TiledScreenNail;->setMaxSide(I)V

    .line 108
    return-void
.end method

.method public static intColorToFloatARGBArray(I)[F
    .locals 4
    .parameter "from"

    .prologue
    const/high16 v3, 0x437f

    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public static isCameraAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 260
    sget-boolean v4, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    if-eqz v4, :cond_0

    sget-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailable:Z

    .line 268
    :goto_0
    return v3

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 262
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.camera.Camera"

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    .local v0, name:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 264
    .local v2, state:I
    sput-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    .line 265
    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    :goto_1
    sput-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailable:Z

    .line 268
    sget-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailable:Z

    goto :goto_0

    .line 265
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "mimeType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 227
    invoke-static {p0}, Lcom/android/gallery3d/app/PackagesMonitor;->getPackagesVersion(Landroid/content/Context;)I

    move-result v5

    .line 229
    .local v5, version:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "editor-update-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, updateKey:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "has-editor-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, hasKey:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 233
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v5, :cond_1

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 235
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v2, v8, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    move v6, v7

    :cond_0
    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    .end local v1           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    return v6
.end method

.method public static isHighResolution(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0x400

    .line 111
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 112
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 114
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 115
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v3, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isInMultiWndState()Z
    .locals 3

    .prologue
    .line 481
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMultiWndStateInstance()Lcom/android/gallery3d/util/MultiWndStateSubject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "MultiWndState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInMultiWndState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMultiWndStateInstance()Lcom/android/gallery3d/util/MultiWndStateSubject;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/util/MultiWndStateSubject;->getMultiWndState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMultiWndStateInstance()Lcom/android/gallery3d/util/MultiWndStateSubject;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/util/MultiWndStateSubject;->getMultiWndState()Z

    move-result v0

    .line 487
    :goto_0
    return v0

    .line 486
    :cond_0
    const-string v0, "MultiWndState"

    const-string v1, "isInMultiWndState: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidLocation(DD)Z
    .locals 3
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const-wide/16 v1, 0x0

    .line 306
    cmpl-double v0, p0, v1

    if-nez v0, :cond_0

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static meterToPixel(F)I
    .locals 2
    .parameter "meter"

    .prologue
    .line 137
    const v0, 0x421d7ae1

    mul-float/2addr v0, p0

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static registerMultiWndStateListener(Lcom/android/gallery3d/util/MultiWndStateObserver;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 492
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMultiWndStateInstance()Lcom/android/gallery3d/util/MultiWndStateSubject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMultiWndStateInstance()Lcom/android/gallery3d/util/MultiWndStateSubject;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/gallery3d/util/MultiWndStateSubject;->registerObserver(Lcom/android/gallery3d/util/MultiWndStateObserver;)V

    .line 495
    :cond_0
    return-void
.end method

.method public static removeMultiWndStateListener(Lcom/android/gallery3d/util/MultiWndStateObserver;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 498
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMultiWndStateInstance()Lcom/android/gallery3d/util/MultiWndStateSubject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMultiWndStateInstance()Lcom/android/gallery3d/util/MultiWndStateSubject;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/gallery3d/util/MultiWndStateSubject;->removeObserver(Lcom/android/gallery3d/util/MultiWndStateObserver;)V

    .line 501
    :cond_0
    return-void
.end method

.method public static sendScannerBroadcast(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 461
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 463
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    :cond_1
    return-void
.end method

.method public static sendScannerBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method public static setRenderThread()V
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    .line 162
    return-void
.end method

.method public static setViewPointMatrix([FFFF)V
    .locals 4
    .parameter "matrix"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v3, 0x0

    .line 353
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v3, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V

    .line 354
    const/4 v0, 0x5

    const/16 v1, 0xf

    neg-float v2, p3

    aput v2, p0, v1

    aput v2, p0, v0

    aput v2, p0, v3

    .line 355
    const/16 v0, 0x8

    aput p1, p0, v0

    .line 356
    const/16 v0, 0x9

    aput p2, p0, v0

    .line 357
    const/16 v0, 0xa

    const/16 v1, 0xb

    const/high16 v2, 0x3f80

    aput v2, p0, v1

    aput v2, p0, v0

    .line 358
    return-void
.end method

.method public static showOnMap(Landroid/content/Context;DD)V
    .locals 9
    .parameter "context"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 322
    :try_start_0
    const-string v6, "http://maps.google.com/maps?f=q&q=(%f,%f)"

    invoke-static {v6, p1, p2, p3, p4}, Lcom/android/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.google.android.apps.maps"

    const-string v7, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v0, compName:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 328
    .local v3, mapsIntent:Landroid/content/Intent;
    const-string v6, "geo:%f,%f"

    invoke-static {v6, p1, p2, p3, p4}, Lcom/android/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, url:Ljava/lang/String;
    const-string v6, "mapsUrl"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v3           #mapsIntent:Landroid/content/Intent;
    .end local v4           #uri:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v1

    .line 333
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "GalleryUtils"

    const-string v7, "GMM activity not found!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    :try_start_1
    const-string v6, "geo:%f,%f"

    invoke-static {v6, p1, p2, p3, p4}, Lcom/android/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v5

    .line 336
    .restart local v5       #url:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 337
    .restart local v3       #mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 338
    .end local v3           #mapsIntent:Landroid/content/Intent;
    .end local v5           #url:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 339
    .local v2, ee:Landroid/content/ActivityNotFoundException;
    const-string v6, "GalleryUtils"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e02f0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startCameraActivity(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "isVideo"

    .prologue
    .line 272
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 273
    .local v0, CameraTyle:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 274
    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 276
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.gallery3d"

    const-string v4, "com.android.camera.CameraActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v1, Component:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 280
    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method public static startGalleryActivity(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isVideo"

    .prologue
    .line 286
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 288
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.yulong.android.videoplayer"

    const-string v3, "com.android.video.app.VideoManager"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v0, Component:Landroid/content/ComponentName;
    const-string v2, "vnd.android.cursor.dir/video"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 299
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 302
    return-void

    .line 293
    .end local v0           #Component:Landroid/content/ComponentName;
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.gallery3d"

    const-string v3, "com.android.gallery3d.app.Gallery"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .restart local v0       #Component:Landroid/content/ComponentName;
    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static final toMile(D)D
    .locals 2
    .parameter "meter"

    .prologue
    .line 210
    const-wide v0, 0x4099240000000000L

    div-double v0, p0, v0

    return-wide v0
.end method
