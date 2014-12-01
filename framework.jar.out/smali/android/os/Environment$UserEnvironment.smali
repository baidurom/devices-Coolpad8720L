.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private mExternalStorage:Ljava/io/File;

.field private mExternalStorageAndroidData:Ljava/io/File;

.field private mExternalStorageAndroidMedia:Ljava/io/File;

.field private mExternalStorageAndroidObb:Ljava/io/File;

.field private mMediaStorage:Ljava/io/File;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "userId"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->UserEnvironmentUpdate(I)V


    return-void
.end method


# virtual methods
.method public UserEnvironmentUpdate(I)V
    .locals 13
    .parameter "userId"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 317
    const-string v7, "EXTERNAL_STORAGE"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, rawExternalStorage:Ljava/lang/String;
    const-string v7, "EMULATED_STORAGE_TARGET"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, rawEmulatedStorageTarget:Ljava/lang/String;
    const-string v7, "MEDIA_STORAGE"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, rawMediaStorage:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 321
    const-string v5, "/data/media"

    .line 324
    :cond_0
    #calls: Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;
    invoke-static {}, Landroid/os/Environment;->access$000()Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 325
    .local v2, primaryolume:Landroid/os/storage/StorageVolume;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 329
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, rawUserId:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, emulatedBase:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, mediaBase:Ljava/io/File;
    new-array v7, v11, [Ljava/lang/String;

    aput-object v6, v7, v10

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, v7}, Landroid/os/Environment;->access$100(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    .line 336
    new-array v7, v11, [Ljava/lang/String;

    aput-object v6, v7, v10

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, v7}, Landroid/os/Environment;->access$100(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mMediaStorage:Ljava/io/File;

    .line 355
    .end local v0           #emulatedBase:Ljava/io/File;
    .end local v1           #mediaBase:Ljava/io/File;
    .end local v6           #rawUserId:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v8, v12, [Ljava/lang/String;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v9, v8, v10

    const-string/jumbo v9, "obb"

    aput-object v9, v8, v11

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v7, v8}, Landroid/os/Environment;->access$100(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    .line 356
    iget-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v8, v12, [Ljava/lang/String;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v9, v8, v10

    const-string v9, "data"

    aput-object v9, v8, v11

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v7, v8}, Landroid/os/Environment;->access$100(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    .line 357
    iget-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v8, v12, [Ljava/lang/String;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v9, v8, v10

    const-string/jumbo v9, "media"

    aput-object v9, v8, v11

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v7, v8}, Landroid/os/Environment;->access$100(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidMedia:Ljava/io/File;

    .line 358
    return-void

    .line 340
    :cond_2
    if-eqz v2, :cond_3

    .line 341
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 344
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 345
    const-string v7, "Environment"

    const-string v8, "EXTERNAL_STORAGE undefined; falling back to default"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v4, "/storage/sdcard0"

    .line 350
    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    .line 352
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mMediaStorage:Ljava/io/File;

    goto :goto_0
.end method

.method public getExternalStorageAndroidDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 458
    const-string v1, "data"

    #calls: Landroid/os/Environment;->getCommentFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, p1}, Landroid/os/Environment;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 459
    .local v0, commentFile:Ljava/io/File;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 461
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 422
    const-string v1, "data"

    #calls: Landroid/os/Environment;->getCommentFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, p1}, Landroid/os/Environment;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 423
    .local v0, commentFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 425
    .end local v0           #commentFile:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #commentFile:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #commentFile:Ljava/io/File;
    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 449
    const-string v1, "data"

    #calls: Landroid/os/Environment;->getCommentFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, p1}, Landroid/os/Environment;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 450
    .local v0, commentFile:Ljava/io/File;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "files"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 431
    const-string/jumbo v1, "media"

    #calls: Landroid/os/Environment;->getCommentFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, p1}, Landroid/os/Environment;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 432
    .local v0, commentFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 434
    .end local v0           #commentFile:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #commentFile:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #commentFile:Ljava/io/File;
    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidMedia:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 440
    const-string/jumbo v1, "obb"

    #calls: Landroid/os/Environment;->getCommentFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, p1}, Landroid/os/Environment;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 441
    .local v0, commentFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 443
    .end local v0           #commentFile:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #commentFile:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #commentFile:Ljava/io/File;
    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageObbDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 412
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mMediaStorage:Ljava/io/File;

    return-object v0
.end method

.method public getSecondaryExternalStorageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    #calls: Landroid/os/Environment;->getSecondaryVolume()Landroid/os/storage/StorageVolume;
    invoke-static {}, Landroid/os/Environment;->access$invoke-getSecondaryVolume-32cf99()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, SecondaryVolume:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
