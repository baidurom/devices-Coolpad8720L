.class public Lcom/android/gallery3d/app/CropImage;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;,
        Lcom/android/gallery3d/app/CropImage$LoadDataTask;,
        Lcom/android/gallery3d/app/CropImage$SaveOutput;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_BUCKET:Ljava/io/File;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapInIntent:Landroid/graphics/Bitmap;

.field private mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

.field private mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

.field private mCropView:Lcom/android/gallery3d/ui/CropView;

.field private mDoFaceDetection:Z

.field private mFreeZoom:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLayoutFreeZoom:Landroid/widget/LinearLayout;

.field private mLayoutPropZoom:Landroid/widget/LinearLayout;

.field private mLayoutZoom:Landroid/widget/LinearLayout;

.field private mLoadBitmapTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mSaveTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mUseRegionDecoder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 159
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 189
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mFreeZoom:Z

    .line 1299
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->setAsKeyGuardWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->setAsLauncherMenuWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLayoutFreeZoom:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLayoutPropZoom:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/CropImage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->setCropParameters(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->initializeData()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLayoutZoom:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private changeExifData(Lcom/android/gallery3d/exif/ExifData;II)V
    .locals 3
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 521
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 522
    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 523
    const/16 v0, 0x131

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    const-string v1, "Android Gallery"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)V

    .line 524
    const/16 v0, 0x132

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifTag;->setTimeValue(J)V

    .line 525
    const/16 v0, 0x112

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 528
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifData;->removeThumbnailData()V

    .line 529
    return-void
.end method

.method private convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .parameter "extension"

    .prologue
    .line 841
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public static determineCompressFormat(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 428
    const-string v0, "JPEG"

    .line 429
    .local v0, compressFormat:Ljava/lang/String;
    instance-of v2, p0, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    .line 430
    check-cast p0, Lcom/android/gallery3d/data/MediaItem;

    .end local p0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, mime:Ljava/lang/String;
    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    :cond_0
    const-string v0, "PNG"

    .line 437
    .end local v1           #mime:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private dismissProgressDialogIfShown()V
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1273
    :cond_0
    return-void
.end method

.method private drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 13
    .parameter "canvas"
    .parameter "decoder"
    .parameter "rect"
    .parameter "dest"
    .parameter "sample"

    .prologue
    .line 1037
    move/from16 v0, p5

    mul-int/lit16 v5, v0, 0x200

    .line 1038
    .local v5, tileSize:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1039
    .local v4, tileRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1040
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1041
    move/from16 v0, p5

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1042
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1043
    move/from16 v0, p5

    int-to-float v10, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1045
    new-instance v3, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 1046
    .local v3, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .local v6, tx:I
    const/4 v8, 0x0

    .line 1047
    .local v8, x:I
    :goto_0
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-ge v6, v10, :cond_2

    .line 1048
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .local v7, ty:I
    const/4 v9, 0x0

    .line 1049
    .local v9, y:I
    :goto_1
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v10, :cond_1

    .line 1050
    add-int v10, v6, v5

    add-int v11, v7, v5

    invoke-virtual {v4, v6, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1051
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1055
    monitor-enter p2

    .line 1056
    :try_start_0
    invoke-virtual {p2, v4, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1057
    .local v1, bitmap:Landroid/graphics/Bitmap;
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {p1, v1, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1059
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1049
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    add-int/2addr v7, v5

    add-int/lit16 v9, v9, 0x200

    goto :goto_1

    .line 1057
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 1047
    :cond_1
    add-int/2addr v6, v5

    add-int/lit16 v8, v8, 0x200

    goto :goto_0

    .line 1063
    .end local v7           #ty:I
    .end local v9           #y:I
    :cond_2
    return-void
.end method

.method private getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "rect"

    .prologue
    .line 890
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 892
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 894
    .local v8, extras:Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 895
    .local v10, outputX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 896
    .local v11, outputY:I
    const/16 v19, 0x0

    .line 899
    .local v19, setWallpaper:Z
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/CropImage;->mFreeZoom:Z

    if-nez v2, :cond_0

    .line 900
    const-string v2, "outputX"

    invoke-virtual {v8, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 901
    const-string v2, "outputY"

    invoke-virtual {v8, v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 904
    :cond_0
    mul-int v2, v10, v11

    const v4, 0x4c4b40

    if-le v2, v4, :cond_1

    .line 905
    const v2, 0x4a989680

    int-to-float v4, v10

    div-float/2addr v2, v4

    int-to-float v4, v11

    div-float/2addr v2, v4

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v16

    .line 906
    .local v16, scale:F
    const-string v2, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scale down the cropped image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    int-to-float v2, v10

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 908
    int-to-float v2, v11

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 913
    .end local v16           #scale:F
    :cond_1
    const/high16 v17, 0x3f80

    .line 914
    .local v17, scaleX:F
    const/high16 v18, 0x3f80

    .line 915
    .local v18, scaleY:F
    new-instance v6, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v6, v2, v4, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 916
    .local v6, dest:Landroid/graphics/Rect;
    if-eqz v8, :cond_2

    const-string v2, "scale"

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 917
    :cond_2
    int-to-float v2, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v17, v2, v4

    .line 918
    int-to-float v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v18, v2, v4

    .line 919
    if-eqz v8, :cond_3

    const-string v2, "scaleUpIfNeeded"

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    if-eqz v8, :cond_5

    const-string v2, "snscontact"

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 924
    const/high16 v2, 0x3f80

    cmpl-float v2, v17, v2

    if-lez v2, :cond_4

    const/high16 v17, 0x3f80

    .line 925
    :cond_4
    const/high16 v2, 0x3f80

    cmpl-float v2, v18, v2

    if-lez v2, :cond_5

    const/high16 v18, 0x3f80

    .line 930
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 931
    .local v13, rectWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 932
    .local v12, rectHeight:I
    sub-int v2, v10, v13

    int-to-float v2, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v4, v11, v12

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v5, v10, v13

    int-to-float v5, v5

    const/high16 v21, 0x4000

    div-float v5, v5, v21

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v21, v11, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v2, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    .line 939
    .local v20, source:Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 941
    .local v14, result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 942
    .local v3, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 986
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v14           #result:Landroid/graphics/Bitmap;
    .end local v20           #source:Landroid/graphics/Bitmap;
    :goto_1
    return-object v14

    .line 890
    .end local v6           #dest:Landroid/graphics/Rect;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v10           #outputX:I
    .end local v11           #outputY:I
    .end local v12           #rectHeight:I
    .end local v13           #rectWidth:I
    .end local v17           #scaleX:F
    .end local v18           #scaleY:F
    .end local v19           #setWallpaper:Z
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 946
    .restart local v6       #dest:Landroid/graphics/Rect;
    .restart local v8       #extras:Landroid/os/Bundle;
    .restart local v10       #outputX:I
    .restart local v11       #outputY:I
    .restart local v12       #rectHeight:I
    .restart local v13       #rectWidth:I
    .restart local v17       #scaleX:F
    .restart local v18       #scaleY:F
    .restart local v19       #setWallpaper:Z
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    if-eqz v2, :cond_9

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v15

    .line 948
    .local v15, rotation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v15, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 950
    rsub-int v2, v15, 0x168

    invoke-static {v6, v10, v11, v2}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 952
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 953
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v7

    .line 955
    .local v7, sample:I
    iput v7, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 961
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v10, v2, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v11, v2, :cond_8

    if-nez v15, :cond_8

    .line 966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v4

    .line 967
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    monitor-exit v4

    goto :goto_1

    .line 968
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 970
    :cond_8
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 972
    .restart local v14       #result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 973
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    invoke-static {v3, v10, v11, v15}, Lcom/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/app/CropImage;->drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_1

    .line 977
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v7           #sample:I
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #result:Landroid/graphics/Bitmap;
    .end local v15           #rotation:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v15

    .line 978
    .restart local v15       #rotation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v15, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 980
    rsub-int v2, v15, 0x168

    invoke-static {v6, v10, v11, v2}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 981
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 982
    .restart local v14       #result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 983
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    invoke-static {v3, v10, v11, v15}, Lcom/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private getExifData(Ljava/lang/String;)Lcom/android/gallery3d/exif/ExifData;
    .locals 7
    .parameter "path"

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 506
    .local v1, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Lcom/android/gallery3d/exif/ExifReader;

    invoke-direct {v3}, Lcom/android/gallery3d/exif/ExifReader;-><init>()V

    .line 508
    .local v3, reader:Lcom/android/gallery3d/exif/ExifReader;
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 514
    .local v0, data:Lcom/android/gallery3d/exif/ExifData;
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .end local v0           #data:Lcom/android/gallery3d/exif/ExifData;
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #reader:Lcom/android/gallery3d/exif/ExifReader;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 510
    :catch_0
    move-exception v4

    .line 511
    .local v4, t:Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string v5, "CropImage"

    const-string v6, "Cannot read EXIF data"

    invoke-static {v5, v6, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 512
    const/4 v0, 0x0

    .line 514
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v4           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 510
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private getFileExtension()Ljava/lang/String;
    .locals 4

    .prologue
    .line 851
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "outputFormat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, requestFormat:Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/android/gallery3d/app/CropImage;->determineCompressFormat(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, outputFormat:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 857
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "png"

    :goto_1
    return-object v2

    .end local v0           #outputFormat:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 852
    goto :goto_0

    .line 857
    .restart local v0       #outputFormat:Ljava/lang/String;
    :cond_2
    const-string v2, "jpg"

    goto :goto_1
.end method

.method private getMediaItemFromIntentData()Lcom/android/gallery3d/data/MediaItem;
    .locals 6

    .prologue
    .line 1276
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1277
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 1278
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 1279
    .local v1, path:Lcom/android/gallery3d/data/Path;
    if-nez v1, :cond_0

    .line 1280
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get path for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", or no data given"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v3, 0x0

    .line 1283
    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private getOutputMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/png"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "image/jpeg"

    goto :goto_0
.end method

.method private initSetWallpaperType(Landroid/os/Bundle;)V
    .locals 5
    .parameter "extras"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    if-nez p1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const-string v1, "set-as-launchermenu-wallpaper"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "set-as-keyguard-wallpaper"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "set-as-wallpaper"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v0, v3

    .line 286
    .local v0, isSetWallpaper:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 287
    const v1, 0x7f100046

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLayoutZoom:Landroid/widget/LinearLayout;

    .line 288
    const v1, 0x7f100047

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLayoutPropZoom:Landroid/widget/LinearLayout;

    .line 289
    const v1, 0x7f100048

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLayoutFreeZoom:Landroid/widget/LinearLayout;

    .line 290
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLayoutPropZoom:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/gallery3d/app/CropImage$2;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/CropImage$2;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLayoutFreeZoom:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/gallery3d/app/CropImage$3;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/CropImage$3;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLayoutZoom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/android/gallery3d/app/CropImage$4;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/CropImage$4;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-direct {v1, v2, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 316
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLayoutPropZoom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .end local v0           #isSetWallpaper:Z
    :cond_3
    move v0, v2

    .line 282
    goto :goto_1
.end method

.method private initializeData()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1143
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1144
    .local v0, extras:Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->toggleStatusBar()V

    .line 1145
    if-eqz v0, :cond_4

    .line 1146
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    .line 1150
    :cond_0
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    .line 1152
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 1153
    new-instance v2, Lcom/android/gallery3d/ui/BitmapTileProvider;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    const/16 v6, 0x140

    invoke-direct {v2, v5, v6}, Lcom/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

    .line 1155
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

    invoke-virtual {v2, v5, v4}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 1156
    iget-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v2, :cond_3

    .line 1157
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    .line 1161
    :goto_1
    iput v3, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 1207
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v4

    .line 1147
    goto :goto_0

    .line 1159
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_1

    .line 1166
    :cond_4
    const/4 v2, 0x0

    const v5, 0x7f0e0074

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2, v5, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1168
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1169
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelMessage(Landroid/os/Message;)V

    .line 1171
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getMediaItemFromIntentData()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 1172
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    .line 1174
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    move v1, v3

    .line 1176
    .local v1, supportedByBitmapRegionDecoder:Z
    :goto_3
    if-eqz v1, :cond_6

    .line 1177
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/CropImage$LoadDataTask;

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/CropImage$LoadDataTask;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v4, Lcom/android/gallery3d/app/CropImage$9;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/CropImage$9;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    goto :goto_2

    .end local v1           #supportedByBitmapRegionDecoder:Z
    :cond_5
    move v1, v4

    .line 1174
    goto :goto_3

    .line 1192
    .restart local v1       #supportedByBitmapRegionDecoder:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v4, Lcom/android/gallery3d/app/CropImage$10;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/CropImage$10;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    goto :goto_2
.end method

.method private onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 1100
    if-nez p1, :cond_0

    .line 1101
    const v0, 0x7f0e007b

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1102
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1117
    :goto_0
    return-void

    .line 1105
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 1106
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 1108
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1110
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    new-instance v1, Lcom/android/gallery3d/ui/BitmapTileProvider;

    const/16 v2, 0x200

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 1112
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 7
    .parameter "regionDecoder"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1068
    if-nez p1, :cond_0

    .line 1069
    const v4, 0x7f0e007b

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1070
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1097
    :goto_0
    return-void

    .line 1073
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 1074
    iput-boolean v4, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 1075
    iput v4, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 1077
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1078
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    .line 1079
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    .line 1080
    .local v1, height:I
    const/4 v4, -0x1

    const v5, 0x75300

    invoke-static {v3, v1, v4, v5}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1082
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v4, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1085
    new-instance v4, Lcom/android/gallery3d/ui/BitmapScreenNail;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 1087
    new-instance v0, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    .line 1088
    .local v0, adapter:Lcom/android/gallery3d/ui/TileImageViewAdapter;
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 1089
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 1091
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 1092
    iget-boolean v4, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v4, :cond_1

    .line 1093
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1095
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onSaveClicked()V
    .locals 7

    .prologue
    .line 863
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 864
    .local v1, extra:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/CropView;->getCropRectangle()Landroid/graphics/RectF;

    move-result-object v0

    .line 865
    .local v0, cropRect:Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 866
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 867
    if-eqz v1, :cond_1

    const-string v3, "set-as-wallpaper"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f0e008d

    .line 870
    .local v2, messageId:I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 872
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/app/CropImage$SaveOutput;

    invoke-direct {v4, p0, v0}, Lcom/android/gallery3d/app/CropImage$SaveOutput;-><init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V

    new-instance v5, Lcom/android/gallery3d/app/CropImage$8;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/CropImage$8;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 867
    .end local v2           #messageId:I
    :cond_1
    const v2, 0x7f0e0081

    goto :goto_1
.end method

.method private static rotateCanvas(Landroid/graphics/Canvas;III)V
    .locals 2
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 992
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 993
    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 994
    div-int/lit8 v0, p3, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 995
    neg-int v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 999
    :goto_0
    return-void

    .line 997
    :cond_0
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private static rotateRectangle(Landroid/graphics/Rect;III)V
    .locals 3
    .parameter "rect"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 1003
    if-eqz p3, :cond_0

    const/16 v2, 0x168

    if-ne p3, v2, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1007
    .local v1, w:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1008
    .local v0, h:I
    sparse-switch p3, :sswitch_data_0

    .line 1031
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1010
    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 1011
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 1012
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 1013
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1017
    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 1018
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 1019
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 1020
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1024
    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 1025
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 1026
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 1027
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1008
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 3
    .parameter "jc"
    .parameter "bitmap"
    .parameter "format"
    .parameter "os"

    .prologue
    const/4 v2, 0x0

    .line 772
    new-instance v0, Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {v0, p4}, Lcom/android/gallery3d/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 773
    .local v0, ios:Lcom/android/gallery3d/util/InterruptableOutputStream;
    new-instance v1, Lcom/android/gallery3d/app/CropImage$7;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/CropImage$7;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/InterruptableOutputStream;)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 780
    const/16 v1, 0x5a

    :try_start_0
    invoke-virtual {p2, p3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 781
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 783
    :goto_0
    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 784
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    .line 781
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 783
    :catchall_0
    move-exception v1

    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 784
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 21
    .parameter "jc"
    .parameter "bitmap"

    .prologue
    .line 805
    const/4 v11, 0x0

    .line 806
    .local v11, outPutStream:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 809
    .local v9, isSuccess:Z
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v8

    .line 810
    .local v8, isSdcard:Z
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v7

    .line 811
    .local v7, isExsdcard:Z
    new-instance v4, Ljava/io/File;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v8, v7, v0}, Lcom/android/gallery3d/util/CacheManager;->getAvailablePath(ZZZ)Ljava/lang/String;

    move-result-object v18

    const-string v19, "/CoolPad/ContactCache"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .local v4, cropImageCachePath:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 815
    :cond_0
    new-instance v10, Ljava/io/File;

    const-string v18, ".nomedia"

    move-object/from16 v0, v18

    invoke-direct {v10, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 816
    .local v10, nomedia:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 818
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 819
    .local v16, title:J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 821
    .local v14, picName:Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v4, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 823
    .local v15, savePic:Ljava/io/File;
    :try_start_0
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 824
    .local v13, outsavePic:Ljava/io/FileOutputStream;
    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 826
    .end local v11           #outPutStream:Ljava/io/OutputStream;
    .local v12, outPutStream:Ljava/io/OutputStream;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 831
    :try_start_2
    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 832
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    move-object v11, v12

    .line 837
    .end local v12           #outPutStream:Ljava/io/OutputStream;
    .end local v13           #outsavePic:Ljava/io/FileOutputStream;
    .restart local v11       #outPutStream:Ljava/io/OutputStream;
    :goto_1
    return-object v15

    .line 828
    .end local v11           #outPutStream:Ljava/io/OutputStream;
    .restart local v12       #outPutStream:Ljava/io/OutputStream;
    .restart local v13       #outsavePic:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 829
    .local v6, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v18, "CropImage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "saveBitmapToOutputStream is  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " and Exception is"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 831
    :try_start_4
    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 832
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 834
    .end local v6           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    move-object v11, v12

    .line 835
    .end local v12           #outPutStream:Ljava/io/OutputStream;
    .end local v13           #outsavePic:Ljava/io/FileOutputStream;
    .local v5, e:Ljava/io/FileNotFoundException;
    .restart local v11       #outPutStream:Ljava/io/OutputStream;
    :goto_2
    const-string v18, "CropImage"

    const-string v19, "cannot write output"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 831
    .end local v5           #e:Ljava/io/FileNotFoundException;
    .end local v11           #outPutStream:Ljava/io/OutputStream;
    .restart local v12       #outPutStream:Ljava/io/OutputStream;
    .restart local v13       #outsavePic:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v18

    :try_start_5
    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 832
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v18
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 834
    .end local v12           #outPutStream:Ljava/io/OutputStream;
    .end local v13           #outsavePic:Ljava/io/FileOutputStream;
    .restart local v11       #outPutStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method private saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 4
    .parameter "jc"
    .parameter "bitmap"
    .parameter "uri"

    .prologue
    .line 790
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 792
    .local v1, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 795
    :try_start_2
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 800
    .end local v1           #out:Ljava/io/OutputStream;
    :goto_0
    return v2

    .line 795
    .restart local v1       #out:Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 797
    .end local v1           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 798
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "CropImage"

    const-string v3, "cannot write output"

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private saveGenericImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 12
    .parameter "jc"
    .parameter "cropped"

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v5, 0x0

    .line 741
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot create download folder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 746
    .local v6, now:J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, filename:Ljava/lang/String;
    sget-object v3, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;

    move-result-object v8

    .line 750
    .local v8, output:Ljava/io/File;
    if-nez v8, :cond_1

    .line 765
    :goto_0
    return-object v5

    .line 752
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 753
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "title"

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v0, "_display_name"

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v0, "datetaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 756
    const-string v0, "date_modified"

    div-long v1, v6, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 757
    const-string v0, "date_added"

    div-long v1, v6, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 758
    const-string v0, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "orientation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    const-string v0, "_data"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v0, "_size"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 763
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v9, v0, v1}, Lcom/android/gallery3d/app/CropImage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 765
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method private saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 33
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/gallery3d/data/LocalImage;

    .line 589
    .local v21, localImage:Lcom/android/gallery3d/data/LocalImage;
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    .local v25, oldPath:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v5, directory:Ljava/io/File;
    const/4 v8, 0x0

    .line 593
    .local v8, externalSdChanaged:Z
    const/4 v14, 0x0

    .line 595
    .local v14, internalSDChanaged:Z
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    .line 596
    .local v12, filePath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 597
    .local v22, mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v11

    .line 598
    .local v11, externalSdStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v13

    .line 599
    .local v13, inSdcardStr:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v19

    .line 600
    .local v19, isInSdcardMount:Z
    invoke-static {v11}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v18

    .line 603
    .local v18, isExsdcardMount:Z
    const-wide/16 v15, 0x0

    .line 604
    .local v15, internalsDSpace:J
    const-wide/16 v9, 0x0

    .line 605
    .local v9, externalSdSpace:J
    if-eqz v19, :cond_0

    .line 606
    invoke-static {v13}, Lcom/android/gallery3d/util/CacheManager;->calRemaining(Ljava/lang/String;)J

    move-result-wide v15

    .line 607
    :cond_0
    if-eqz v18, :cond_1

    .line 608
    invoke-static {v11}, Lcom/android/gallery3d/util/CacheManager;->calRemaining(Ljava/lang/String;)J

    move-result-wide v9

    .line 610
    :cond_1
    if-nez v11, :cond_3

    const/16 v17, 0x0

    .line 611
    .local v17, isExSdcard:Z
    :goto_0
    if-eqz v17, :cond_4

    .line 612
    const-wide/16 v2, 0x1

    cmp-long v2, v9, v2

    if-gez v2, :cond_2

    if-eqz v19, :cond_2

    const-wide/16 v2, 0x1

    cmp-long v2, v15, v2

    if-lez v2, :cond_2

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 614
    const/4 v8, 0x1

    .line 624
    :cond_2
    :goto_1
    const-wide/16 v2, 0x1

    cmp-long v2, v9, v2

    if-gez v2, :cond_5

    const-wide/16 v2, 0x1

    cmp-long v2, v15, v2

    if-gez v2, :cond_5

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/gallery3d/app/CropImage$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v3, v0, v1}, Lcom/android/gallery3d/app/CropImage$5;-><init>(Lcom/android/gallery3d/app/CropImage;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 635
    const/4 v2, 0x0

    .line 736
    :goto_2
    return-object v2

    .line 610
    .end local v17           #isExSdcard:Z
    :cond_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    goto :goto_0

    .line 617
    .restart local v17       #isExSdcard:Z
    :cond_4
    const-wide/16 v2, 0x1

    cmp-long v2, v15, v2

    if-gez v2, :cond_2

    if-eqz v18, :cond_2

    const-wide/16 v2, 0x1

    cmp-long v2, v9, v2

    if-lez v2, :cond_2

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 619
    const/4 v14, 0x1

    goto :goto_1

    .line 639
    :cond_5
    new-instance v5, Ljava/io/File;

    .end local v5           #directory:Ljava/io/File;
    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    .restart local v5       #directory:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 641
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 644
    :cond_6
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 645
    .local v6, filename:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    .line 646
    .local v27, pos:I
    if-ltz v27, :cond_7

    .line 647
    const/4 v2, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 648
    :cond_7
    const/16 v26, 0x0

    .line 650
    .local v26, output:Ljava/io/File;
    const/4 v7, 0x0

    .line 651
    .local v7, exifData:Lcom/android/gallery3d/exif/ExifData;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v2, v3, :cond_8

    .line 652
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/app/CropImage;->getExifData(Ljava/lang/String;)Lcom/android/gallery3d/exif/ExifData;

    move-result-object v7

    .line 653
    if-eqz v7, :cond_8

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v3}, Lcom/android/gallery3d/app/CropImage;->changeExifData(Lcom/android/gallery3d/exif/ExifData;II)V

    :cond_8
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 658
    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;

    move-result-object v26

    .line 659
    if-nez v26, :cond_9

    .line 660
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 662
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v31, 0x3e8

    div-long v23, v2, v31

    .line 663
    .local v23, now:J
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 664
    .local v30, values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v2, "_display_name"

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v2, "datetaken"

    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 667
    const-string v2, "date_modified"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 668
    const-string v2, "date_added"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 669
    const-string v2, "mime_type"

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v2, "orientation"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    const-string v2, "_data"

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v2, "_size"

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, v30

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/app/CropImage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 676
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    invoke-static {v2, v3, v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 678
    const-string v2, "latitude"

    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 679
    const-string v2, "longitude"

    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 712
    :cond_a
    const v2, 0x7f0e012e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 713
    .local v29, toastText:Ljava/lang/String;
    const/16 v20, 0x0

    .line 714
    .local v20, isShowToast:Z
    if-eqz v8, :cond_d

    .line 715
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 718
    const/16 v20, 0x1

    .line 727
    :cond_b
    :goto_3
    move-object/from16 v28, v29

    .line 728
    .local v28, text:Ljava/lang/String;
    if-eqz v20, :cond_c

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/gallery3d/app/CropImage$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v3, v0, v1}, Lcom/android/gallery3d/app/CropImage$6;-><init>(Lcom/android/gallery3d/app/CropImage;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 736
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_2

    .line 720
    .end local v28           #text:Ljava/lang/String;
    :cond_d
    if-eqz v14, :cond_b

    .line 721
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 724
    const/16 v20, 0x1

    goto :goto_3
.end method

.method private saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;
    .locals 9
    .parameter "jc"
    .parameter "cropped"
    .parameter "directory"
    .parameter "filename"
    .parameter "exifData"

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, candidate:Ljava/io/File;
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, fileExtension:Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    const/16 v6, 0x3e8

    if-ge v5, v6, :cond_0

    .line 456
    new-instance v0, Ljava/io/File;

    .end local v0           #candidate:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 459
    .restart local v0       #candidate:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 466
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_3

    .line 467
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot create file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, e:Ljava/io/IOException;
    const-string v6, "CropImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to create new file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    const/4 v6, 0x0

    .line 500
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 455
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 470
    :cond_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 471
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 474
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    .local v4, fos:Ljava/io/FileOutputStream;
    if-eqz p5, :cond_4

    .line 477
    :try_start_2
    new-instance v2, Lcom/android/gallery3d/exif/ExifOutputStream;

    invoke-direct {v2, v4}, Lcom/android/gallery3d/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 478
    .local v2, eos:Lcom/android/gallery3d/exif/ExifOutputStream;
    invoke-virtual {v2, p5}, Lcom/android/gallery3d/exif/ExifOutputStream;->setExifData(Lcom/android/gallery3d/exif/ExifData;)V

    .line 479
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6, v2}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    .end local v2           #eos:Lcom/android/gallery3d/exif/ExifOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 495
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 496
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 497
    const/4 v6, 0x0

    goto :goto_1

    .line 482
    :cond_4
    :try_start_4
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6, v4}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 486
    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 488
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 489
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "CropImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to save image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 492
    const/4 v6, 0x0

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_5
    move-object v6, v0

    .line 500
    goto :goto_1
.end method

.method private savePicasaImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 15
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 551
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot create download folder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getImageTitle(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, filename:Ljava/lang/String;
    const/16 v0, 0x2e

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 556
    .local v13, pos:I
    if-ltz v13, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 557
    :cond_1
    new-instance v5, Lcom/android/gallery3d/exif/ExifData;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v5, v0}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 558
    .local v5, exifData:Lcom/android/gallery3d/exif/ExifData;
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0, v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->extractExifValues(Lcom/android/gallery3d/data/MediaObject;Lcom/android/gallery3d/exif/ExifData;)V

    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v5, v0, v1}, Lcom/android/gallery3d/app/CropImage;->changeExifData(Lcom/android/gallery3d/exif/ExifData;II)V

    .line 560
    sget-object v3, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;

    move-result-object v12

    .line 561
    .local v12, output:Ljava/io/File;
    if-nez v12, :cond_2

    const/4 v0, 0x0

    .line 582
    :goto_0
    return-object v0

    .line 563
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v10, v0, v2

    .line 564
    .local v10, now:J
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 565
    .local v14, values:Landroid/content/ContentValues;
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getImageTitle(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "_display_name"

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "datetaken"

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getDateTaken(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 568
    const-string v0, "date_modified"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 569
    const-string v0, "date_added"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 570
    const-string v0, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v0, "orientation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 572
    const-string v0, "_data"

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v0, "_size"

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v14, v0, v1}, Lcom/android/gallery3d/app/CropImage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 576
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getLatitude(Lcom/android/gallery3d/data/MediaObject;)D

    move-result-wide v6

    .line 577
    .local v6, latitude:D
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getLongitude(Lcom/android/gallery3d/data/MediaObject;)D

    move-result-wide v8

    .line 578
    .local v8, longitude:D
    invoke-static {v6, v7, v8, v9}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 579
    const-string v0, "latitude"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 580
    const-string v0, "longitude"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 582
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->savePicasaImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 537
    :goto_0
    return-object v0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_1

    .line 535
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveGenericImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private setAsKeyGuardWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 8
    .parameter "jc"
    .parameter "wallpaper"

    .prologue
    const/4 v7, 0x1

    .line 1319
    :try_start_0
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAsKeyGuardWallpaper ByteCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const-string v2, "android.app.WallpaperManager"

    const-string v3, "setKeyguardBitmap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Bitmap;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1325
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1326
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v7

    .line 1328
    :catch_0
    move-exception v0

    .line 1330
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setAsLauncherMenuWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 8
    .parameter "jc"
    .parameter "wallpaper"

    .prologue
    const/4 v7, 0x1

    .line 1338
    :try_start_0
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAsLauncherMenuWallpaper ByteCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const-string v2, "android.app.WallpaperManager"

    const-string v3, "setLauncherMenuBitmap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Bitmap;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1344
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1345
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v7

    .line 1350
    :catch_0
    move-exception v0

    .line 1352
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "jc"
    .parameter "wallpaper"

    .prologue
    .line 442
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CropImage"

    const-string v2, "fail to set wall paper"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCropParameters(Z)V
    .locals 7
    .parameter "isFreeZoom"

    .prologue
    const/4 v6, 0x0

    .line 1120
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1121
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 1140
    :goto_0
    return-void

    .line 1123
    :cond_0
    const-string v3, "aspectX"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1124
    .local v0, aspectX:I
    const-string v3, "aspectY"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1125
    .local v1, aspectY:I
    iput-boolean p1, p0, Lcom/android/gallery3d/app/CropImage;->mFreeZoom:Z

    .line 1126
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 1127
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    int-to-float v4, v0

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/CropView;->setAspectRatio(F)V

    .line 1133
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    const-string v4, "snscontact"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/CropView;->setSnsContract(Z)V

    goto :goto_0

    .line 1129
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    const/high16 v4, -0x4080

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/CropView;->setAspectRatio(F)V

    goto :goto_1
.end method

.method private static setImageSize(Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "width"
    .parameter "height"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 544
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 545
    const-string v0, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    const-string v0, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    :cond_0
    return-void
.end method

.method private toggleStatusBar()V
    .locals 2

    .prologue
    .line 1358
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1359
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 355
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 195
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 198
    const v3, 0x7f040017

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setContentView(I)V

    .line 199
    new-instance v3, Lcom/android/gallery3d/ui/CropView;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/CropView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    .line 200
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v3, p0}, Lcom/android/gallery3d/ui/CropView;->setOnTouchListener(Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-interface {v3, v4}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 204
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v1, 0xc

    .line 206
    .local v1, displayOptions:I
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 209
    .local v2, extra:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 210
    const-string v3, "set-as-wallpaper"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    const v3, 0x7f0e008c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    const-string v3, "showWhenLocked"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 222
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/CropImage;->initSetWallpaperType(Landroid/os/Bundle;)V

    .line 224
    new-instance v3, Lcom/android/gallery3d/app/CropImage$1;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/CropImage$1;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    .line 277
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/CropImage;->setCropParameters(Z)V

    .line 278
    return-void

    .line 215
    :cond_2
    const-string v3, "set-as-keyguard-wallpaper"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    const-string v3, "set-as-launchermenu-wallpaper"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1261
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 1262
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    .line 1264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 1266
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 334
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 349
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 336
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 340
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 345
    :sswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    goto :goto_0

    .line 334
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100045 -> :sswitch_1
        0x7f10015e -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 1227
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 1228
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V

    .line 1230
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    .line 1231
    .local v1, loadTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1233
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1234
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    .line 1238
    .local v0, loadBitmapTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1240
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1241
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 1244
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    .line 1245
    .local v3, saveTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/content/Intent;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1247
    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1248
    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 1250
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    .line 1251
    .local v2, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1253
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1257
    return-void

    .line 1255
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v4
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 1211
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 1212
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->initializeData()V

    .line 1213
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    .line 1216
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1217
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1219
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/CropView;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1223
    return-void

    .line 1221
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 322
    const-string v0, "state"

    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1367
    :cond_0
    return-void
.end method
