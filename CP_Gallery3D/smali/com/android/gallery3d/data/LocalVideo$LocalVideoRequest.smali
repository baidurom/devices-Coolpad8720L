.class public Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;
.super Lcom/android/gallery3d/data/ImageCacheRequest;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVideoRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;IIDDJI)V
    .locals 18
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "localFilePath"
    .parameter "bucketId"
    .parameter "coverTpye"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "dateTakenInMs"
    .parameter "rotation"

    .prologue
    .line 179
    invoke-static/range {p3 .. p3}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v6

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move/from16 v16, p13

    invoke-direct/range {v2 .. v17}, Lcom/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IILjava/lang/String;IIDDJIZ)V

    .line 182
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    .line 183
    return-void
.end method


# virtual methods
.method public bridge synthetic drawLable(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->drawLable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic getBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/data/ImageCacheRequest;->getBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isMyCamera()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/gallery3d/data/ImageCacheRequest;->isMyCamera()V

    return-void
.end method

.method public onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 189
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
