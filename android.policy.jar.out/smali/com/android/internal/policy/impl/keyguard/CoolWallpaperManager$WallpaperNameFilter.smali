.class public Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperNameFilter;
.super Ljava/lang/Object;
.source "CoolWallpaperManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperNameFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperNameFilter;->this$0:Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "endsName"

    .prologue
    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 153
    const-string v1, ".jpg"

    invoke-direct {p0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperNameFilter;->checkFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".png"

    invoke-direct {p0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperNameFilter;->checkFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".bmp"

    invoke-direct {p0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperNameFilter;->checkFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".coolshowjpg"

    invoke-direct {p0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperNameFilter;->checkFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".tmp"

    invoke-direct {p0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperNameFilter;->checkFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".jpeg"

    invoke-direct {p0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$WallpaperNameFilter;->checkFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 156
    .local v0, checkResult:Z
    :goto_0
    return v0

    .line 153
    .end local v0           #checkResult:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
