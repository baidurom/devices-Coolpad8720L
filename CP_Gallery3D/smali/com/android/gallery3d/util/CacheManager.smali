.class public Lcom/android/gallery3d/util/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field public static mExternalCacheDir:Ljava/io/File;

.field private static sCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/common/BlobCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldCheckDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/util/CacheManager;->sOldCheckDone:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/util/CacheManager;->mExternalCacheDir:Ljava/io/File;

    return-void
.end method

.method public static calRemaining(Ljava/lang/String;)J
    .locals 10
    .parameter "volume"

    .prologue
    const-wide/16 v5, -0x1

    .line 194
    if-nez p0, :cond_0

    .line 205
    :goto_0
    return-wide v5

    .line 196
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, stat:Landroid/os/StatFs;
    const-wide/32 v3, 0x100000

    .line 198
    .local v3, unit:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    const/high16 v6, 0x4980

    div-float v1, v5, v6

    .line 200
    .local v1, remaining:F
    float-to-long v5, v1

    goto :goto_0

    .line 201
    .end local v1           #remaining:F
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #unit:J
    :catch_0
    move-exception v0

    .line 202
    .local v0, ex:Ljava/lang/Exception;
    const-string v7, "CacheManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Environment.getExternalStorageDirectory():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static calculateFileSize(J)J
    .locals 5
    .parameter "filesize"

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 242
    .local v0, mFileSize:F
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-lez v3, :cond_0

    .line 243
    const-wide/32 v1, 0x100000

    .line 244
    .local v1, unit:J
    long-to-float v3, p0

    const/high16 v4, 0x4980

    div-float v0, v3, v4

    .line 245
    float-to-long v3, v0

    .line 250
    .end local v1           #unit:J
    :goto_0
    return-wide v3

    :cond_0
    float-to-long v3, v0

    goto :goto_0
.end method

.method public static getAvailablePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 143
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, inSdcardVolume:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, exSdcardVolume:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v3

    .line 146
    .local v3, isSdcard:Z
    invoke-static {v0}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v2

    .line 147
    .local v2, isExsdcard:Z
    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/gallery3d/util/CacheManager;->getAvailablePath(ZZZ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getAvailablePath(ZZZ)Ljava/lang/String;
    .locals 12
    .parameter "isSdcard"
    .parameter "isExsdcard"
    .parameter "internalFirst"

    .prologue
    const-wide/16 v10, 0x2

    .line 153
    const/4 v6, 0x0

    .line 154
    .local v6, mVolumes:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/gallery3d/util/CacheManager;->calRemaining(Ljava/lang/String;)J

    move-result-wide v4

    .line 156
    .local v4, mSdcardSpace:J
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/gallery3d/util/CacheManager;->calRemaining(Ljava/lang/String;)J

    move-result-wide v2

    .line 158
    .local v2, mExsdcardSpace:J
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, internalStorageDirectory:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, externalStorageDirectory:Ljava/lang/String;
    const-string v7, "CacheManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSdcardSpace  and  mExsdcardSpace  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz p2, :cond_3

    .line 164
    if-eqz p0, :cond_2

    cmp-long v7, v4, v10

    if-lez v7, :cond_2

    .line 165
    move-object v6, v1

    .line 177
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 178
    if-eqz p0, :cond_5

    .line 179
    move-object v6, v1

    .line 186
    :cond_1
    :goto_1
    const-string v7, "CacheManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mVolumes  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-object v6

    .line 166
    :cond_2
    if-eqz p1, :cond_0

    cmp-long v7, v2, v10

    if-lez v7, :cond_0

    .line 167
    move-object v6, v0

    goto :goto_0

    .line 170
    :cond_3
    if-eqz p1, :cond_4

    cmp-long v7, v2, v10

    if-lez v7, :cond_4

    .line 171
    move-object v6, v0

    goto :goto_0

    .line 172
    :cond_4
    if-eqz p0, :cond_0

    cmp-long v7, v4, v10

    if-lez v7, :cond_0

    .line 173
    move-object v6, v1

    goto :goto_0

    .line 180
    :cond_5
    if-eqz p1, :cond_6

    .line 181
    move-object v6, v0

    goto :goto_1

    .line 183
    :cond_6
    move-object v6, v1

    goto :goto_1
.end method

.method public static getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;
    .locals 10
    .parameter "context"
    .parameter "filename"
    .parameter "maxEntries"
    .parameter "maxBytes"
    .parameter "version"

    .prologue
    .line 49
    sget-object v9, Lcom/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 50
    :try_start_0
    sget-boolean v2, Lcom/android/gallery3d/util/CacheManager;->sOldCheckDone:Z

    if-nez v2, :cond_0

    .line 51
    invoke-static {p0}, Lcom/android/gallery3d/util/CacheManager;->removeOldFilesIfNecessary(Landroid/content/Context;)V

    .line 52
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/gallery3d/util/CacheManager;->sOldCheckDone:Z

    .line 54
    :cond_0
    sget-object v2, Lcom/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/common/BlobCache;

    .line 55
    .local v6, cache:Lcom/android/gallery3d/common/BlobCache;
    if-nez v6, :cond_1

    .line 56
    invoke-static {}, Lcom/android/gallery3d/util/CacheManager;->getExternalCacheDirEx()Ljava/io/File;

    move-result-object v7

    .line 57
    .local v7, cacheDir:Ljava/io/File;
    if-eqz v7, :cond_1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 60
    .local v1, path:Ljava/lang/String;
    :try_start_1
    new-instance v0, Lcom/android/gallery3d/common/BlobCache;

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .end local v6           #cache:Lcom/android/gallery3d/common/BlobCache;
    .local v0, cache:Lcom/android/gallery3d/common/BlobCache;
    :try_start_2
    sget-object v2, Lcom/android/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 68
    .end local v1           #path:Ljava/lang/String;
    .end local v7           #cacheDir:Ljava/io/File;
    :goto_0
    :try_start_3
    monitor-exit v9

    return-object v0

    .line 63
    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v6       #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v7       #cacheDir:Ljava/io/File;
    :catch_0
    move-exception v8

    move-object v0, v6

    .line 64
    .end local v6           #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v0       #cache:Lcom/android/gallery3d/common/BlobCache;
    .local v8, e:Ljava/io/IOException;
    :goto_1
    const-string v2, "CacheManager"

    const-string v3, "Cannot instantiate cache!"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 69
    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v1           #path:Ljava/lang/String;
    .end local v7           #cacheDir:Ljava/io/File;
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 63
    .restart local v0       #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v7       #cacheDir:Ljava/io/File;
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v1           #path:Ljava/lang/String;
    .end local v7           #cacheDir:Ljava/io/File;
    .restart local v6       #cache:Lcom/android/gallery3d/common/BlobCache;
    :cond_1
    move-object v0, v6

    .end local v6           #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v0       #cache:Lcom/android/gallery3d/common/BlobCache;
    goto :goto_0
.end method

.method public static getExternalCacheDirEx()Ljava/io/File;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 99
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, inSdcardVolume:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, exSdcardVolume:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v6

    .line 103
    .local v6, isSdcard:Z
    invoke-static {v2}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v5

    .line 105
    .local v5, isExsdcard:Z
    const-string v3, "Android/data/com.android.gallery3d/cache"

    .line 107
    .local v3, galleryCachePath:Ljava/lang/String;
    sget-object v7, Lcom/android/gallery3d/util/CacheManager;->mExternalCacheDir:Ljava/io/File;

    if-nez v7, :cond_0

    .line 108
    new-instance v7, Ljava/io/File;

    invoke-static {v6, v5, v9}, Lcom/android/gallery3d/util/CacheManager;->getAvailablePath(ZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/android/gallery3d/util/CacheManager;->mExternalCacheDir:Ljava/io/File;

    .line 111
    :cond_0
    sget-object v7, Lcom/android/gallery3d/util/CacheManager;->mExternalCacheDir:Ljava/io/File;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/gallery3d/util/CacheManager;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 112
    sget-object v7, Lcom/android/gallery3d/util/CacheManager;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 114
    :cond_1
    sget-object v7, Lcom/android/gallery3d/util/CacheManager;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-static {v6, v5, v9}, Lcom/android/gallery3d/util/CacheManager;->getAvailablePath(ZZZ)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v0, CacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 119
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v7, ".nomedia"

    invoke-direct {v1, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v1, GalleryCacheFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_3
    sput-object v1, Lcom/android/gallery3d/util/CacheManager;->mExternalCacheDir:Ljava/io/File;

    .line 123
    sget-object v7, Lcom/android/gallery3d/util/CacheManager;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 124
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    .line 125
    const/4 v7, 0x0

    .line 128
    .end local v0           #CacheFile:Ljava/io/File;
    .end local v1           #GalleryCacheFile:Ljava/io/File;
    :goto_0
    return-object v7

    :cond_4
    sget-object v7, Lcom/android/gallery3d/util/CacheManager;->mExternalCacheDir:Ljava/io/File;

    goto :goto_0
.end method

.method public static getSdcardState(I)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 132
    packed-switch p0, :pswitch_data_0

    .line 140
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 134
    :pswitch_0
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getInternalSdPath()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, mSdcardPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 137
    .end local v1           #mSdcardPath:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, mExsdcardPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/util/VolumeUtil;->isMounted(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static removeOldFilesIfNecessary(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 76
    .local v2, pref:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 78
    .local v1, n:I
    :try_start_0
    const-string v4, "cache-up-to-date"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    :goto_0
    if-eqz v1, :cond_0

    .line 91
    :goto_1
    return-void

    .line 83
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "cache-up-to-date"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    invoke-static {}, Lcom/android/gallery3d/util/CacheManager;->getExternalCacheDirEx()Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, cacheDir:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, prefix:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "imgcache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "rev_geocoding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bookmark"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v3           #prefix:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
