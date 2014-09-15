.class Lcom/android/gallery3d/app/CropImage$SaveOutput;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter "cropRect"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 362
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 13
    .parameter "jc"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 367
    .local v0, cropRect:Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 369
    .local v3, extra:Landroid/os/Bundle;
    new-instance v6, Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 373
    .local v6, rect:Landroid/graphics/Rect;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 374
    .local v7, result:Landroid/content/Intent;
    const-string v9, "cropped-rect"

    invoke-virtual {v7, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, cropped:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 377
    .local v4, outputted:Z
    if-eqz v3, :cond_11

    .line 378
    const-string v9, "output"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 379
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_2

    .line 380
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v7, 0x0

    .line 423
    .end local v7           #result:Landroid/content/Intent;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v7

    .line 381
    .restart local v7       #result:Landroid/content/Intent;
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x1

    .line 382
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v6}, Lcom/android/gallery3d/app/CropImage;->access$900(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 383
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    invoke-static {v9, p1, v1, v8}, Lcom/android/gallery3d/app/CropImage;->access$1000(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    .line 386
    :cond_2
    const-string v9, "return-data"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "snscontact"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 388
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    .line 389
    :cond_3
    const/4 v4, 0x1

    .line 390
    if-nez v1, :cond_4

    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v6}, Lcom/android/gallery3d/app/CropImage;->access$900(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 391
    :cond_4
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Ljava/io/File;
    invoke-static {v9, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$1100(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, picturePath:Ljava/lang/String;
    const-string v9, "return_filepath"

    invoke-virtual {v7, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    .end local v5           #picturePath:Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v9, "set-as-wallpaper"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 400
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v7, 0x0

    goto :goto_0

    .line 393
    :cond_6
    const-string v9, "return-data"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 394
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v7, 0x0

    goto :goto_0

    .line 395
    :cond_7
    const/4 v4, 0x1

    .line 396
    if-nez v1, :cond_8

    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v6}, Lcom/android/gallery3d/app/CropImage;->access$900(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 397
    :cond_8
    const-string v9, "data"

    invoke-virtual {v7, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 401
    :cond_9
    const/4 v4, 0x1

    .line 402
    if-nez v1, :cond_a

    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v6}, Lcom/android/gallery3d/app/CropImage;->access$900(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 403
    :cond_a
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    invoke-static {v9, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$1200(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v9

    if-nez v9, :cond_11

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 404
    :cond_b
    const-string v9, "set-as-keyguard-wallpaper"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 405
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 406
    :cond_c
    const/4 v4, 0x1

    .line 407
    if-nez v1, :cond_d

    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v6}, Lcom/android/gallery3d/app/CropImage;->access$900(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 408
    :cond_d
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->setAsKeyGuardWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    invoke-static {v9, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$1300(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v9

    if-nez v9, :cond_11

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 409
    :cond_e
    const-string v9, "set-as-launchermenu-wallpaper"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 410
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 411
    :cond_f
    const/4 v4, 0x1

    .line 412
    if-nez v1, :cond_10

    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v6}, Lcom/android/gallery3d/app/CropImage;->access$900(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 413
    :cond_10
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->setAsLauncherMenuWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    invoke-static {v9, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$1400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v9

    if-nez v9, :cond_11

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 417
    .end local v8           #uri:Landroid/net/Uri;
    :cond_11
    if-nez v4, :cond_0

    .line 418
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 419
    :cond_12
    if-nez v1, :cond_13

    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v9, v6}, Lcom/android/gallery3d/app/CropImage;->access$900(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 420
    :cond_13
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    invoke-static {v9, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$1500(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 421
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CropImage$SaveOutput;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
