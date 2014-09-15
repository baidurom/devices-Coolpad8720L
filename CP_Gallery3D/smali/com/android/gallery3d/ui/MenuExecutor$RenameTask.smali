.class public Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenameTask"
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
.field private id:I

.field private isRenameAlbum:Z

.field private renameDesDir:Ljava/lang/String;

.field private renameNewtitle:Ljava/lang/String;

.field private renameScrDir:Ljava/lang/String;

.field private renameScrPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter "Path"
    .parameter "title"
    .parameter "isAlbumRename"

    .prologue
    const/4 v6, 0x0

    .line 570
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrPath:Ljava/lang/String;

    .line 572
    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameNewtitle:Ljava/lang/String;

    .line 573
    iput-boolean p4, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->isRenameAlbum:Z

    .line 574
    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 575
    .local v1, object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v1, :cond_1

    .line 576
    if-eqz p4, :cond_0

    .line 578
    check-cast v1, Lcom/android/gallery3d/data/LocalAlbum;

    .end local v1           #object:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/LocalAlbum;->getAlbumDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    .line 580
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->id:I

    .line 592
    :goto_0
    return-void

    .restart local v1       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    move-object v2, v1

    .line 582
    check-cast v2, Lcom/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/LocalImage;->getId()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->id:I

    .line 583
    check-cast v1, Lcom/android/gallery3d/data/LocalImage;

    .end local v1           #object:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    .line 584
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 585
    .local v0, len:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    .line 586
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    goto :goto_0

    .line 590
    .end local v0           #len:I
    .restart local v1       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "rename object is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameNewtitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->submitMoveTask()V

    return-void
.end method

.method private dealDestDirExist()V
    .locals 5

    .prologue
    .line 690
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    .local v2, srcFolder:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, destFolder:Ljava/io/File;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->queryImageNumInAlbum()I

    move-result v1

    .line 693
    .local v1, mHasImageNum:I
    if-gtz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 694
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/ui/MenuExecutor;->access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;

    invoke-direct {v4, p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;-><init>(Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 735
    :cond_1
    return-void
.end method

.method private isStringEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "src"

    .prologue
    .line 628
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 629
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryImageNumInAlbum()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 738
    const/4 v6, 0x0

    .line 740
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 741
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    const-string v2, "/data/yulong_secure/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    const-string v0, "secure"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "bucket_id"

    aput-object v3, v2, v7

    const-string v3, "bucket_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 746
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 747
    :goto_0
    return v0

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method private renameAlbum()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 670
    const/4 v1, 0x0

    .line 671
    .local v1, result:Z
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    .local v2, srcFolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 673
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    .local v0, destFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 675
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 676
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;)V

    .line 677
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->toastRenameResult(Z)V

    move v3, v1

    .line 686
    .end local v0           #destFolder:Ljava/io/File;
    :goto_0
    return v3

    .line 681
    .restart local v0       #destFolder:Ljava/io/File;
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->dealDestDirExist()V

    goto :goto_0

    .line 685
    .end local v0           #destFolder:Ljava/io/File;
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->toastRenameResult(Z)V

    goto :goto_0
.end method

.method private renameImage()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 633
    new-instance v3, Ljava/io/File;

    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    .local v3, scrFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 635
    .local v1, destFile:Ljava/io/File;
    const/4 v2, 0x1

    .line 636
    .local v2, index:I
    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, srcDir:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 640
    .local v5, suffix:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 641
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameNewtitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameNewtitle:Ljava/lang/String;

    .line 642
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameNewtitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    .line 643
    new-instance v1, Ljava/io/File;

    .end local v1           #destFile:Ljava/io/File;
    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .restart local v1       #destFile:Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 647
    invoke-direct {p0, v8}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->toastRenameResult(Z)V

    .line 665
    :goto_1
    return v8

    .line 651
    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 652
    .local v0, baseUri:Landroid/net/Uri;
    const-string v7, "_id=?"

    .line 653
    .local v7, whereClause:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 654
    .local v6, values:Landroid/content/ContentValues;
    const-string v10, "_data"

    iget-object v11, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v10, "bucket_display_name"

    iget-object v11, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v10, "title"

    iget-object v11, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameNewtitle:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v10}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/String;

    iget v12, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->id:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v10, v0, v6, v7, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 662
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 664
    invoke-direct {p0, v9}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->toastRenameResult(Z)V

    move v8, v9

    .line 665
    goto :goto_1
.end method

.method private submitMoveTask()V
    .locals 5

    .prologue
    .line 751
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 752
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "move-picture"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v1, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    const-string v2, "pic-path-list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 756
    new-instance v2, Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/android/gallery3d/ui/MoveCopyExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->startMvOrCopyTask()V

    .line 757
    return-void
.end method

.method private toastRenameResult(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 609
    const-string v0, "MenuExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rename result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 625
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Boolean;
    .locals 2
    .parameter "jc"

    .prologue
    const/4 v1, 0x0

    .line 596
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameScrDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameDesDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->toastRenameResult(Z)V

    .line 598
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 603
    :goto_0
    return-object v0

    .line 600
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->isRenameAlbum:Z

    if-nez v0, :cond_2

    .line 601
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameImage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 603
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameAlbum()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
