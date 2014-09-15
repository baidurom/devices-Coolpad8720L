.class final Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;
.super Landroid/os/Handler;
.source "CameraPhotoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CameraPhotoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/gallery3d/app/CameraPhotoService;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CameraPhotoService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->mContext:Landroid/content/Context;

    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v9, 0x4

    .line 123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 124
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string v6, "camerUri"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, cameraUri:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 131
    :try_start_0
    iget-object v6, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/CameraPhotoService;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 133
    .local v5, itemPath:Lcom/android/gallery3d/data/Path;
    iget-object v6, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/CameraPhotoService;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaItem;

    .line 135
    .local v4, item:Lcom/android/gallery3d/data/MediaItem;
    iget-object v6, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    #getter for: Lcom/android/gallery3d/app/CameraPhotoService;->mTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v6}, Lcom/android/gallery3d/app/CameraPhotoService;->access$000(Lcom/android/gallery3d/app/CameraPhotoService;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 136
    iget-object v6, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/CameraPhotoService;->pause()V

    .line 137
    :cond_2
    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, filePath:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 140
    const-string v6, "CameraPhotoService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "begin getMediaObject = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v6, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraDeoCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 143
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 144
    iget-object v6, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    iget-object v7, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/CameraPhotoService;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v7

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage(Ljava/lang/String;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v8

    new-instance v9, Lcom/android/gallery3d/app/CameraPhotoService$CameraNailListener;

    iget-object v10, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-direct {v9, v10, v3}, Lcom/android/gallery3d/app/CameraPhotoService$CameraNailListener;-><init>(Lcom/android/gallery3d/app/CameraPhotoService;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    #setter for: Lcom/android/gallery3d/app/CameraPhotoService;->mTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/CameraPhotoService;->access$002(Lcom/android/gallery3d/app/CameraPhotoService;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 155
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v5           #itemPath:Lcom/android/gallery3d/data/Path;
    :catch_0
    move-exception v2

    .line 156
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 147
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v3       #filePath:Ljava/lang/String;
    .restart local v4       #item:Lcom/android/gallery3d/data/MediaItem;
    .restart local v5       #itemPath:Lcom/android/gallery3d/data/Path;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 148
    iget-object v6, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    iget-object v7, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/CameraPhotoService;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-virtual {v4, v8, v9}, Lcom/android/gallery3d/data/MediaItem;->requestImage(II)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v8

    new-instance v9, Lcom/android/gallery3d/app/CameraPhotoService$VideoNailListener;

    iget-object v10, p0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;->this$0:Lcom/android/gallery3d/app/CameraPhotoService;

    invoke-direct {v9, v10, v3}, Lcom/android/gallery3d/app/CameraPhotoService$VideoNailListener;-><init>(Lcom/android/gallery3d/app/CameraPhotoService;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    #setter for: Lcom/android/gallery3d/app/CameraPhotoService;->mTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/CameraPhotoService;->access$002(Lcom/android/gallery3d/app/CameraPhotoService;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
