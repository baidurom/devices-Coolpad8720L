.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_KEYGUARD_WALLPAPER:I = 0x2

.field private static final MSG_CLEAR_LAUNCHERMENU_WALLPAPER:I = 0x3

.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mKeyguardWallpaper:Landroid/graphics/Bitmap;

.field private mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 229
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 230
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 231
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 232
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 259
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/app/WallpaperManager$Globals;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getKeyguardDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/app/WallpaperManager$Globals;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getLauncherMenuDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$302(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$402(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$502(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$702(Landroid/app/WallpaperManager$Globals;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    iput p1, p0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    return p1
.end method

.method static synthetic access$802(Landroid/app/WallpaperManager$Globals;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    iput p1, p0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    return p1
.end method

.method static synthetic access$900(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentKeyguardWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 493
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v4, params:Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v5, p0, v4}, Landroid/app/IWallpaperManager;->getKeyguardWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 495
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 497
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 498
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 499
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 501
    .local v0, bm:Landroid/graphics/Bitmap;
    iget v5, p0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    iget v7, p0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    invoke-static {p1, v0, v5, v7}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 506
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 515
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #params:Landroid/os/Bundle;
    :goto_0
    return-object v5

    .line 502
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #params:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 503
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Can\'t decode file"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 506
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #params:Landroid/os/Bundle;
    :cond_0
    :goto_1
    move-object v5, v6

    .line 515
    goto :goto_0

    .line 505
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #params:Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    .line 506
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 509
    :goto_2
    :try_start_6
    throw v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 512
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #params:Landroid/os/Bundle;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 507
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #params:Landroid/os/Bundle;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method private getCurrentLauncherMenuWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 519
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 520
    .local v4, params:Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v5, p0, v4}, Landroid/app/IWallpaperManager;->getLauncherMenuWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 521
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 524
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 525
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 526
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 528
    .local v0, bm:Landroid/graphics/Bitmap;
    iget v5, p0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    iget v7, p0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    invoke-static {p1, v0, v5, v7}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 533
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 542
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #params:Landroid/os/Bundle;
    :goto_0
    return-object v5

    .line 529
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #params:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 530
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Can\'t decode file"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 533
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #params:Landroid/os/Bundle;
    :cond_0
    :goto_1
    move-object v5, v6

    .line 542
    goto :goto_0

    .line 532
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #params:Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    .line 533
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 536
    :goto_2
    :try_start_6
    throw v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 539
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #params:Landroid/os/Bundle;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 534
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #params:Landroid/os/Bundle;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 460
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 461
    .local v5, params:Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 462
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 463
    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 464
    .local v6, width:I
    const-string v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 467
    .local v3, height:I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 469
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 471
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 473
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v6, v3}, Landroid/app/WallpaperManager$BaiduInjector;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 478
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 487
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :goto_0
    return-object v7

    .line 474
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catch_0
    move-exception v1

    .line 475
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 478
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :cond_0
    :goto_1
    move-object v7, v8

    .line 487
    goto :goto_0

    .line 477
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catchall_0
    move-exception v7

    .line 478
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 481
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 484
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 479
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 548
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, #android:drawable@default_wallpaper#t

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 550
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 551
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v5

    .line 552
    .local v5, width:I
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 555
    .local v2, height:I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 557
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 559
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 560
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 565
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 574
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #width:I
    :goto_0
    return-object v6

    .line 561
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :catch_0
    move-exception v1

    .line 562
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Can\'t decode stream"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 565
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #width:I
    :cond_0
    :goto_1
    move-object v6, v7

    .line 574
    goto :goto_0

    .line 564
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :catchall_0
    move-exception v6

    .line 565
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 568
    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 571
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #width:I
    :catch_1
    move-exception v6

    goto :goto_1

    .line 566
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #width:I
    :catch_2
    move-exception v7

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v8

    goto :goto_2
.end method

.method private getKeyguardDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 578
    const/4 v2, 0x0

    .line 579
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "default_keyguard_wallpaper"

    const-string v8, "drawable"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 580
    .local v4, resId:I
    if-eqz v4, :cond_0

    .line 581
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 583
    :cond_0
    if-eqz v2, :cond_1

    .line 586
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 587
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 588
    const/4 v6, 0x0

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 589
    .local v0, bm:Landroid/graphics/Bitmap;
    iget v6, p0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    iget v7, p0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    invoke-static {p1, v0, v6, v7}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 594
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 600
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v5

    .line 590
    :catch_0
    move-exception v1

    .line 591
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Can\'t decode keyguard stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 595
    :catch_1
    move-exception v6

    goto :goto_0

    .line 593
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 594
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 597
    :goto_1
    throw v5

    .line 595
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method private getLauncherMenuDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 603
    const/4 v2, 0x0

    .line 604
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "default_launchermenu_wallpaper"

    const-string v8, "drawable"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 605
    .local v4, resId:I
    if-eqz v4, :cond_0

    .line 606
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 608
    :cond_0
    if-eqz v2, :cond_1

    .line 610
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 611
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 612
    const/4 v6, 0x0

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 613
    .local v0, bm:Landroid/graphics/Bitmap;
    iget v6, p0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    iget v7, p0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    invoke-static {p1, v0, v6, v7}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 618
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 624
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v5

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Can\'t decode launchermenu stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 618
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 619
    :catch_1
    move-exception v6

    goto :goto_0

    .line 617
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 618
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 621
    :goto_1
    throw v5

    .line 619
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public forgetLoadedKeyguardWallpaper()V
    .locals 1

    .prologue
    .line 452
    monitor-enter p0

    .line 453
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 455
    monitor-exit p0

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forgetLoadedLauncherMenuWallpaper()V
    .locals 1

    .prologue
    .line 446
    monitor-enter p0

    .line 447
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 449
    monitor-exit p0

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 439
    monitor-enter p0

    .line 440
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 442
    monitor-exit p0

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onKeyguardWallpaperChanged()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    return-void
.end method

.method public onLauncherMenuWallpaperChanged()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    return-void
.end method

.method public peekKeyguardWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 337
    :goto_0
    return-object v1

    .line 320
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 323
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentKeyguardWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 329
    :goto_1
    if-eqz p2, :cond_3

    .line 330
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 331
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getKeyguardDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 332
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current keyguardwallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 334
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 337
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public peekKeyguardWallpaperBitmap(Landroid/content/Context;ZIIIII)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "context"
    .parameter "returnDefault"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Landroid/app/WallpaperManager$Globals;->peekKeyguardWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 346
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 347
    const/4 v13, 0x0

    monitor-exit p0

    .line 371
    :goto_0
    return-object v13

    .line 349
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    .line 350
    .local v15, screenWidth:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    .line 352
    .local v14, screenHeight:I
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_1

    .line 354
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 355
    .local v6, m:Landroid/graphics/Matrix;
    const/high16 v2, 0x4387

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 356
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 357
    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    .line 358
    move-object/from16 v0, p0

    iget v14, v0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    .line 360
    .end local v6           #m:Landroid/graphics/Matrix;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v15, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v14, :cond_3

    .line 362
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, p3

    div-int p3, v2, v15

    .line 363
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, p5

    div-int p5, v2, v15

    .line 364
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, p4

    div-int p4, v2, v14

    .line 365
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, p6

    div-int p6, v2, v14

    :cond_3
    move-object/from16 v7, p1

    move-object v8, v1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    .line 367
    invoke-static/range {v7 .. v12}, Landroid/app/WallpaperManager;->clipBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 368
    .local v13, bm:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_4

    if-eq v13, v1, :cond_4

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedKeyguardWallpaper()V

    .line 371
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 372
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .end local v14           #screenHeight:I
    .end local v15           #screenWidth:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public peekLauncherMenuWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 378
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 399
    :goto_0
    return-object v1

    .line 382
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 383
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 385
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentLauncherMenuWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 391
    :goto_1
    if-eqz p2, :cond_3

    .line 392
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 393
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getLauncherMenuDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 394
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current launchermenuwallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 396
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 399
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public peekLauncherMenuWallpaperBitmap(Landroid/content/Context;ZIIIII)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "context"
    .parameter "returnDefault"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 406
    monitor-enter p0

    .line 407
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Landroid/app/WallpaperManager$Globals;->peekLauncherMenuWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 408
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 409
    const/4 v13, 0x0

    monitor-exit p0

    .line 433
    :goto_0
    return-object v13

    .line 411
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    .line 412
    .local v15, screenWidth:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    .line 414
    .local v14, screenHeight:I
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_1

    .line 416
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 417
    .local v6, m:Landroid/graphics/Matrix;
    const/high16 v2, 0x4387

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 418
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 419
    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    .line 420
    move-object/from16 v0, p0

    iget v14, v0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    .line 422
    .end local v6           #m:Landroid/graphics/Matrix;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v15, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v14, :cond_3

    .line 424
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, p3

    div-int p3, v2, v15

    .line 425
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, p5

    div-int p5, v2, v15

    .line 426
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, p4

    div-int p4, v2, v14

    .line 427
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, p6

    div-int p6, v2, v14

    :cond_3
    move-object/from16 v7, p1

    move-object v8, v1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    .line 429
    invoke-static/range {v7 .. v12}, Landroid/app/WallpaperManager;->clipBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 430
    .local v13, bm:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_4

    if-eq v13, v1, :cond_4

    .line 431
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedLauncherMenuWallpaper()V

    .line 433
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 434
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .end local v14           #screenHeight:I
    .end local v15           #screenWidth:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 307
    :goto_0
    return-object v1

    .line 290
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 293
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 299
    :goto_1
    if-eqz p2, :cond_3

    .line 300
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 301
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 302
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 304
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 307
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
