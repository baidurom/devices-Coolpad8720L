.class public Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;
.super Ljava/lang/Object;
.source "CoolWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperNameFilter;,
        Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;
    }
.end annotation


# static fields
.field private static sCoolWallpaperManager:Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;


# instance fields
.field private mThumbPath:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field scanPaths:[Ljava/lang/String;

.field private totalAdNum:I

.field private totalNum:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/lib/uitechno/wallpaper"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->scanPaths:[Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mWallpaperList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mThumbPath:Ljava/util/HashMap;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->sCoolWallpaperManager:Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->sCoolWallpaperManager:Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->sCoolWallpaperManager:Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;

    return-object v0
.end method

.method private getWallpaperId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 124
    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private scanWallpaperFiles(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;>;"
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperNameFilter;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperNameFilter;-><init>(Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;)V

    .line 98
    .local v3, filenameFilter:Ljava/io/FilenameFilter;
    const/4 v2, 0x0

    .line 99
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 100
    .local v4, files:[Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 102
    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 104
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->sortAsTime([Ljava/io/File;)V

    .line 105
    array-length v9, v4

    if-nez v9, :cond_1

    .line 121
    :cond_0
    return-void

    .line 108
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 109
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, name:Ljava/lang/String;
    const-string v9, ".tmp"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 108
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    :cond_2
    new-instance v8, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;

    invoke-direct {v8}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;-><init>()V

    .line 114
    .local v8, wallpaperInfo:Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->getWallpaperId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;->id:Ljava/lang/String;

    .line 115
    iput-object v7, v8, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;->wallpaper_name:Ljava/lang/String;

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;->wallpaper_absolutpath:Ljava/lang/String;

    .line 117
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static sortAsTime([Ljava/io/File;)V
    .locals 1
    .parameter "files"

    .prologue
    .line 132
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 147
    return-void
.end method


# virtual methods
.method public clearWallpaperData()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mThumbPath:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 94
    return-void
.end method

.method public getThumbPath()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mThumbPath:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTotalAdNum()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->totalAdNum:I

    return v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->totalNum:I

    return v0
.end method

.method public getWallpaperCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mWallpaperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getWallpaperList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mWallpaperList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWallpaperPath(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mWallpaperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mWallpaperList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;->wallpaper_absolutpath:Ljava/lang/String;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized scanWallpaperFiles()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mWallpaperList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 49
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mWallpaperList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->scanPaths:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 52
    .local v3, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mWallpaperList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->scanWallpaperFiles(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->mWallpaperList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 48
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setTotalAdNum(I)V
    .locals 0
    .parameter "totalAdNum"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->totalAdNum:I

    .line 86
    return-void
.end method

.method public setTotalNum(I)V
    .locals 0
    .parameter "totalNum"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->totalNum:I

    .line 78
    return-void
.end method
