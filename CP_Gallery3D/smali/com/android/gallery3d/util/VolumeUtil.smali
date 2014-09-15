.class public Lcom/android/gallery3d/util/VolumeUtil;
.super Ljava/lang/Object;
.source "VolumeUtil.java"


# static fields
.field private static EXTERNALSD_CAMERA_BUCKET_ID:I

.field private static INTERNAL_SD_CAMERA_BUCKET_ID:I

.field private static externalSdPath:Ljava/lang/String;

.field private static internalSdPath:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mIsInitialize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/util/VolumeUtil;->mIsInitialize:Z

    .line 21
    sput v1, Lcom/android/gallery3d/util/VolumeUtil;->INTERNAL_SD_CAMERA_BUCKET_ID:I

    .line 22
    sput v1, Lcom/android/gallery3d/util/VolumeUtil;->EXTERNALSD_CAMERA_BUCKET_ID:I

    return-void
.end method

.method public static externalCameraId()I
    .locals 4

    .prologue
    .line 130
    sget v1, Lcom/android/gallery3d/util/VolumeUtil;->EXTERNALSD_CAMERA_BUCKET_ID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 131
    sget-object v1, Lcom/android/gallery3d/util/VolumeUtil;->externalSdPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/gallery3d/util/VolumeUtil;->externalSdPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/gallery3d/util/VolumeUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/gallery3d/util/VolumeUtil;->externalSdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/util/VolumeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, externalCameraPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/VolumeUtil;->EXTERNALSD_CAMERA_BUCKET_ID:I

    .line 138
    sget v1, Lcom/android/gallery3d/util/VolumeUtil;->EXTERNALSD_CAMERA_BUCKET_ID:I

    .line 144
    .end local v0           #externalCameraPath:Ljava/lang/String;
    :goto_0
    return v1

    .line 140
    :cond_0
    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->EXTERNALSD_CAMERA_BUCKET_ID:I

    goto :goto_0

    .line 144
    :cond_1
    sget v1, Lcom/android/gallery3d/util/VolumeUtil;->EXTERNALSD_CAMERA_BUCKET_ID:I

    goto :goto_0
.end method

.method public static getExternalSdPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/gallery3d/util/VolumeUtil;->externalSdPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getInternalSdPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/gallery3d/util/VolumeUtil;->mIsInitialize:Z

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/gallery3d/util/VolumeUtil;->internalSdPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public static hasInitialize()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/gallery3d/util/VolumeUtil;->mIsInitialize:Z

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 29
    sget-boolean v2, Lcom/android/gallery3d/util/VolumeUtil;->mIsInitialize:Z

    if-eqz v2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 30
    :cond_0
    sget-object v2, Lcom/android/gallery3d/util/VolumeUtil;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    sput-object p0, Lcom/android/gallery3d/util/VolumeUtil;->mContext:Landroid/content/Context;

    .line 31
    :cond_1
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 34
    .local v0, mStoragemanager:Landroid/os/storage/StorageManager;
    if-nez v0, :cond_2

    .line 35
    const-string v2, "VolumeUtil"

    const-string v3, "StorageManager obj is null"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getSystemService(context.STORAGE_SERVICE) == null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_2
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 42
    .local v1, volumes:[Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_3

    if-eqz v1, :cond_4

    array-length v2, v1

    if-nez v2, :cond_4

    .line 43
    :cond_3
    const-string v2, "VolumeUtil"

    const-string v3, "list of paths for all mountable volumes is null"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getVolumeList() = 0"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_4
    const-string v2, "VolumeUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume list length\u951b\ufffd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    array-length v2, v1

    packed-switch v2, :pswitch_data_0

    .line 75
    :goto_1
    sput-boolean v5, Lcom/android/gallery3d/util/VolumeUtil;->mIsInitialize:Z

    .line 76
    const-string v2, "VolumeUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>volume initialize finish: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/gallery3d/util/VolumeUtil;->internalSdPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \\ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/gallery3d/util/VolumeUtil;->externalSdPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :pswitch_0
    aget-object v2, v1, v6

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/gallery3d/util/VolumeUtil;->internalSdPath:Ljava/lang/String;

    goto :goto_1

    .line 54
    :pswitch_1
    aget-object v2, v1, v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 55
    aget-object v2, v1, v6

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/gallery3d/util/VolumeUtil;->internalSdPath:Ljava/lang/String;

    .line 56
    aget-object v2, v1, v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/gallery3d/util/VolumeUtil;->externalSdPath:Ljava/lang/String;

    goto :goto_1

    .line 58
    :cond_5
    aget-object v2, v1, v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/gallery3d/util/VolumeUtil;->internalSdPath:Ljava/lang/String;

    .line 59
    aget-object v2, v1, v6

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/gallery3d/util/VolumeUtil;->externalSdPath:Ljava/lang/String;

    goto :goto_1

    .line 69
    :pswitch_2
    aget-object v2, v1, v6

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/gallery3d/util/VolumeUtil;->internalSdPath:Ljava/lang/String;

    .line 70
    aget-object v2, v1, v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/gallery3d/util/VolumeUtil;->externalSdPath:Ljava/lang/String;

    goto :goto_1

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static internalCameraId()I
    .locals 4

    .prologue
    .line 112
    sget v1, Lcom/android/gallery3d/util/VolumeUtil;->INTERNAL_SD_CAMERA_BUCKET_ID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 113
    sget-object v1, Lcom/android/gallery3d/util/VolumeUtil;->internalSdPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/gallery3d/util/VolumeUtil;->internalSdPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/gallery3d/util/VolumeUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/gallery3d/util/VolumeUtil;->internalSdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/util/VolumeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, internalCameraPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/VolumeUtil;->INTERNAL_SD_CAMERA_BUCKET_ID:I

    .line 120
    sget v1, Lcom/android/gallery3d/util/VolumeUtil;->INTERNAL_SD_CAMERA_BUCKET_ID:I

    .line 125
    .end local v0           #internalCameraPath:Ljava/lang/String;
    :goto_0
    return v1

    .line 122
    :cond_0
    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->INTERNAL_SD_CAMERA_BUCKET_ID:I

    goto :goto_0

    .line 125
    :cond_1
    sget v1, Lcom/android/gallery3d/util/VolumeUtil;->INTERNAL_SD_CAMERA_BUCKET_ID:I

    goto :goto_0
.end method

.method public static isMounted(Ljava/lang/String;)Z
    .locals 4
    .parameter "mountPoint"

    .prologue
    const/4 v1, 0x0

    .line 91
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/android/gallery3d/util/VolumeUtil;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    sget-object v2, Lcom/android/gallery3d/util/VolumeUtil;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 97
    sget-object v2, Lcom/android/gallery3d/util/VolumeUtil;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 99
    .local v0, mStoragemanager:Landroid/os/storage/StorageManager;
    if-nez v0, :cond_2

    .line 100
    const-string v2, "VolumeUtil"

    const-string v3, "StorageManager obj is null"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_2
    const-string v1, "VolumeUtil"

    invoke-static {v1, p0}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v1, "mounted"

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
