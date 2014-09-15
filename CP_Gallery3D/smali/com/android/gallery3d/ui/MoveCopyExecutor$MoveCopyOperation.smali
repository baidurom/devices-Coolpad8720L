.class public Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;
.super Ljava/lang/Object;
.source "MoveCopyExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MoveCopyExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoveCopyOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/MoveCopyExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAndCreatePictureName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "picPath"
    .parameter "albumPath"

    .prologue
    .line 397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, destFilePath:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mMovePic:Z
    invoke-static {v5}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$100(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 411
    .end local p1
    :goto_0
    return-object p1

    .line 399
    .restart local p1
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, dest:Ljava/io/File;
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, newFileName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 404
    .local v2, index:I
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 405
    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, temp:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    new-instance v0, Ljava/io/File;

    .end local v0           #dest:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .restart local v0       #dest:Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4           #temp:Ljava/lang/String;
    :cond_1
    move-object p1, v3

    .line 411
    goto :goto_0
.end method

.method private dealWithAlbumPath()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/coolpad/gallery"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, inMoreAlbumPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/galleryAlbum"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, outMoreAlbumPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/yulong_secure"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 561
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v4, v4, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v5, v5, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, sourceDir:Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, sourceBucketName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/yulong_secure"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 551
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 560
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$702(Lcom/android/gallery3d/ui/MoveCopyExecutor;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 551
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 553
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 554
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/coolpad/gallery"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$702(Lcom/android/gallery3d/ui/MoveCopyExecutor;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 556
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/galleryAlbum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$702(Lcom/android/gallery3d/ui/MoveCopyExecutor;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method private fileInOut(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 18
    .parameter "source"
    .parameter "dest"
    .parameter "isDeleteSource"

    .prologue
    .line 452
    const/4 v9, 0x0

    .line 453
    .local v9, result:Z
    const/4 v4, 0x0

    .line 454
    .local v4, in:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 458
    .local v7, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 459
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 460
    .end local v7           #out:Ljava/io/FileOutputStream;
    .local v8, out:Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    :try_start_2
    new-array v2, v12, [B

    .line 461
    .local v2, buffer:[B
    :goto_0
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, len:I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    .line 462
    const/4 v12, 0x0

    invoke-virtual {v8, v2, v12, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 468
    .end local v2           #buffer:[B
    .end local v6           #len:I
    :catch_0
    move-exception v3

    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 469
    .end local v5           #in:Ljava/io/FileInputStream;
    .local v3, e:Ljava/lang/Exception;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v9, 0x0

    .line 470
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v12, v12, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v13, v13, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->FAIL:I
    invoke-static {v15}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$500(Lcom/android/gallery3d/ui/MoveCopyExecutor;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 473
    const-string v12, "MoveCopyExecutor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "move or copy picture "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " failed due to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 477
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move v10, v9

    .line 490
    .end local v3           #e:Ljava/lang/Exception;
    .end local v9           #result:Z
    .local v10, result:I
    :goto_2
    return v10

    .line 464
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .end local v10           #result:I
    .restart local v2       #buffer:[B
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v6       #len:I
    .restart local v8       #out:Ljava/io/FileOutputStream;
    .restart local v9       #result:Z
    :cond_0
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 465
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v12}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v12, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 467
    const/4 v9, 0x1

    .line 476
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 477
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 479
    if-eqz v9, :cond_2

    if-eqz p3, :cond_2

    .line 480
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 481
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 482
    .local v1, baseUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 483
    .local v11, sourceFilePath:Ljava/lang/String;
    const-string v12, "/data/yulong_secure/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 484
    const-string v12, "secure"

    invoke-static {v12}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 486
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v12}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "_data=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-virtual {v12, v1, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v12}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .end local v1           #baseUri:Landroid/net/Uri;
    .end local v11           #sourceFilePath:Ljava/lang/String;
    :cond_2
    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    move v10, v9

    .line 490
    .restart local v10       #result:I
    goto :goto_2

    .line 476
    .end local v2           #buffer:[B
    .end local v6           #len:I
    .end local v10           #result:I
    :catchall_0
    move-exception v12

    :goto_3
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 477
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v12

    .line 476
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v12

    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 468
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private isSpaceEnough()Z
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 495
    iget-object v7, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v7, v7, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v7, v7, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    move v7, v8

    .line 527
    :goto_0
    return v7

    .line 497
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 498
    const/4 v6, 0x0

    .line 499
    .local v6, sourceVolumeType:Z
    const/4 v2, 0x0

    .line 504
    .local v2, destVolumeType:Z
    :goto_1
    const/4 v5, 0x0

    .line 505
    .local v5, isNeedCalc:Z
    if-eqz v6, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-nez v6, :cond_6

    if-eqz v2, :cond_6

    .line 506
    :cond_3
    const/4 v5, 0x1

    .line 511
    :cond_4
    :goto_2
    if-nez v5, :cond_7

    move v7, v8

    .line 512
    goto :goto_0

    .line 501
    .end local v2           #destVolumeType:Z
    .end local v5           #isNeedCalc:Z
    .end local v6           #sourceVolumeType:Z
    :cond_5
    iget-object v7, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v7, v7, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 502
    .restart local v6       #sourceVolumeType:Z
    iget-object v7, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .restart local v2       #destVolumeType:Z
    goto :goto_1

    .line 508
    .restart local v5       #isNeedCalc:Z
    :cond_6
    iget-object v7, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z
    invoke-static {v7}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$000(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    .line 514
    :cond_7
    const-wide/16 v0, 0x0

    .line 516
    .local v0, availSize:J
    if-eqz v2, :cond_8

    .line 517
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, externalSdStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/util/CacheManager;->calRemaining(Ljava/lang/String;)J

    move-result-wide v0

    .line 523
    .end local v3           #externalSdStr:Ljava/lang/String;
    :goto_3
    const-string v7, "MoveCopyExecutor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-wide v11, v11, Lcom/android/gallery3d/ui/MoveCopyExecutor;->totalFileSize:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/avail size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v7, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-wide v10, v7, Lcom/android/gallery3d/ui/MoveCopyExecutor;->totalFileSize:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    cmp-long v7, v0, v10

    if-ltz v7, :cond_9

    move v7, v8

    .line 525
    goto :goto_0

    .line 520
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, inSdcardStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/gallery3d/util/CacheManager;->calRemaining(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_3

    .end local v4           #inSdcardStr:Ljava/lang/String;
    :cond_9
    move v7, v9

    .line 527
    goto/16 :goto_0
.end method

.method private mvOrCpPicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "sourceFilePath"
    .parameter "destDir"
    .parameter "fileName"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 423
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v2, source:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .local v1, dest:Ljava/io/File;
    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mMovePic:Z
    invoke-static {v5}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$100(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 427
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 428
    invoke-direct {p0, v2, v1, v3}, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->fileInOut(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v3

    .line 447
    :goto_0
    return v3

    .line 430
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 431
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 432
    .local v0, baseUri:Landroid/net/Uri;
    const-string v5, "/data/yulong_secure/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 433
    const-string v5, "secure"

    invoke-static {v5}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 435
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "_data=?"

    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v4

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 437
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 438
    iget-object v4, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 444
    .end local v0           #baseUri:Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$000(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 445
    invoke-direct {p0, v2, v1, v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->fileInOut(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v4

    .line 447
    goto :goto_0
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Boolean;
    .locals 15
    .parameter "jc"

    .prologue
    .line 331
    const/4 v4, 0x1

    .line 333
    .local v4, operationResult:I
    :try_start_0
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z
    invoke-static {v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$000(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mMovePic:Z
    invoke-static {v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$100(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mCopyPic:Z
    invoke-static {v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$000(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mMovePic:Z
    invoke-static {v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$100(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v8, v8, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v8, v8, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 336
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v8, v8, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v9, v9, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->FAIL:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$500(Lcom/android/gallery3d/ui/MoveCopyExecutor;)I

    move-result v11

    const/4 v12, 0x0

    const-string v13, "illegal argument"

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :catch_0
    move-exception v8

    .line 383
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v8, v8, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v9, v9, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->SUCCESS:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$900(Lcom/android/gallery3d/ui/MoveCopyExecutor;)I

    move-result v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    :goto_0
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_1
    return-object v8

    .line 341
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->dealWithAlbumPath()V

    .line 343
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, destDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_5

    .line 345
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 349
    :cond_5
    const/4 v6, 0x0

    .line 350
    .local v6, result:Z
    const/4 v2, 0x0

    .line 352
    .local v2, index:I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->isSpaceEnough()Z

    move-result v8

    if-nez v8, :cond_6

    .line 353
    const-string v8, "MoveCopyExecutor"

    const-string v9, "not enough space"

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$300(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    const v9, 0x7f0e0151

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, spaceNoEnough:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v8, v8, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v9, v9, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->FAIL:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$500(Lcom/android/gallery3d/ui/MoveCopyExecutor;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 383
    iget-object v9, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v9, v9, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v10, v10, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->SUCCESS:I
    invoke-static {v12}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$900(Lcom/android/gallery3d/ui/MoveCopyExecutor;)I

    move-result v12

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 360
    .end local v7           #spaceNoEnough:Ljava/lang/String;
    :cond_6
    :try_start_2
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v8, v8, Lcom/android/gallery3d/ui/MoveCopyExecutor;->picList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 361
    .local v5, picPath:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    if-eqz v8, :cond_9

    .line 362
    const/4 v4, 0x3

    .line 383
    .end local v5           #picPath:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v8, v8, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v9, v9, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->SUCCESS:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$900(Lcom/android/gallery3d/ui/MoveCopyExecutor;)I

    move-result v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 365
    .restart local v5       #picPath:Ljava/lang/String;
    :cond_9
    :try_start_3
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->checkAndCreatePictureName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, newFileName:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->mMovePic:Z
    invoke-static {v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$100(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 370
    const/4 v6, 0x1

    .line 374
    :goto_3
    const-string v8, "MoveCopyExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mvOrCpPicture "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    if-eqz v6, :cond_7

    .line 376
    add-int/lit8 v2, v2, 0x1

    .line 377
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v8, v8, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v9, v9, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 383
    .end local v0           #destDir:Ljava/io/File;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v3           #newFileName:Ljava/lang/String;
    .end local v5           #picPath:Ljava/lang/String;
    .end local v6           #result:Z
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v9, v9, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v10, v10, Lcom/android/gallery3d/ui/MoveCopyExecutor;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->SUCCESS:I
    invoke-static {v12}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$900(Lcom/android/gallery3d/ui/MoveCopyExecutor;)I

    move-result v12

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v8

    .line 372
    .restart local v0       #destDir:Ljava/io/File;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #index:I
    .restart local v3       #newFileName:Ljava/lang/String;
    .restart local v5       #picPath:Ljava/lang/String;
    .restart local v6       #result:Z
    :cond_a
    :try_start_4
    iget-object v8, p0, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->this$0:Lcom/android/gallery3d/ui/MoveCopyExecutor;

    #getter for: Lcom/android/gallery3d/ui/MoveCopyExecutor;->albumPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->access$700(Lcom/android/gallery3d/ui/MoveCopyExecutor;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v8, v3}, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->mvOrCpPicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v6

    goto :goto_3
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/MoveCopyExecutor$MoveCopyOperation;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
