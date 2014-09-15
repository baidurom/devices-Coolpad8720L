.class Lcom/android/gallery3d/app/CameraPhotoService$VideoNailListener;
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
    name = "VideoNailListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
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
    .line 211
    iput-object p1, p0, Lcom/android/gallery3d/app/CameraPhotoService$VideoNailListener;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p2, p0, Lcom/android/gallery3d/app/CameraPhotoService$VideoNailListener;->mFilePath:Ljava/lang/String;

    .line 213
    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/CameraPhotoService$VideoNailListener;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    const/4 v3, 0x0

    #setter for: Lcom/android/gallery3d/app/CameraPhotoService;->mTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/CameraPhotoService;->access$002(Lcom/android/gallery3d/app/CameraPhotoService;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 219
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 220
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 228
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 222
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    sget-object v2, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 223
    sget-object v2, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/gallery3d/app/CameraPhotoService$VideoNailListener;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 225
    .local v1, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 226
    const-string v2, "CameraPhotoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
