.class Lcom/android/gallery3d/app/CameraPhotoService$CameraNailListener;
.super Ljava/lang/Object;
.source "CameraPhotoService.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CameraPhotoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraNailListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/app/CameraPhotoService;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CameraPhotoService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "filePath"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/gallery3d/app/CameraPhotoService$CameraNailListener;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/android/gallery3d/app/CameraPhotoService$CameraNailListener;->mFilePath:Ljava/lang/String;

    .line 178
    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/gallery3d/app/CameraPhotoService$CameraNailListener;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    const/4 v7, 0x0

    #setter for: Lcom/android/gallery3d/app/CameraPhotoService;->mTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/CameraPhotoService;->access$002(Lcom/android/gallery3d/app/CameraPhotoService;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 184
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 185
    .local v1, decoder:Landroid/graphics/BitmapRegionDecoder;
    if-nez v1, :cond_0

    .line 204
    .end local v1           #decoder:Landroid/graphics/BitmapRegionDecoder;
    :goto_0
    return-void

    .line 187
    .restart local v1       #decoder:Landroid/graphics/BitmapRegionDecoder;
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    .line 188
    .local v5, width:I
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    .line 189
    .local v3, height:I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 190
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/android/gallery3d/app/CameraPhotoService;->access$100()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v6

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 193
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v6, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v6, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 196
    sget-object v6, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraDeoCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 197
    sget-object v6, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraDeoCache:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/gallery3d/app/CameraPhotoService$CameraNailListener;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v6, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/gallery3d/app/CameraPhotoService$CameraNailListener;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #decoder:Landroid/graphics/BitmapRegionDecoder;
    .end local v3           #height:I
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #width:I
    :catch_0
    move-exception v2

    .line 200
    .local v2, ex:Ljava/lang/Exception;
    sget-object v6, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 201
    sget-object v6, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraDeoCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 202
    const-string v6, "CameraPhotoService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
