.class public Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;
.super Ljava/lang/Object;
.source "KeyguardBitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$ItemInfo;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.yulong.android.provider.coolshow"

.field public static final COLUMN_FILE_PATH:Ljava/lang/String; = "wallpaper_file_path"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final PATH_WALLPAPERLANTERINFO:Ljava/lang/String; = "/wallpaperLanterInfo"

.field private static final SCHEME:Ljava/lang/String; = "content://"

.field public static final TABLE_NAME:Ljava/lang/String; = "wallpaperLanterInfo"

.field private static final TAG:Ljava/lang/String; = "KeyguardBitmapManager"

.field private static mBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mBitmapPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mScaleDrawableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/ScaleDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmapLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mUpdateMonitorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field runnable:Ljava/lang/Runnable;

.field private waitQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "content://com.yulong.android.provider.coolshow/wallpaperLanterInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mBitmapPathList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mBitmapList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mScaleDrawableList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mBitmapLruCache:Landroid/util/LruCache;

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->waitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 73
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mUpdateMonitorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 84
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->runnable:Ljava/lang/Runnable;

    .line 44
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mContext:Landroid/content/Context;

    .line 60
    const-string v0, "KeyguardBitmapManager"

    const-string v1, "----KeyguardBitmapManager----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    const-string v0, "KeyguardBitmapManager"

    const-string v1, "----is SystemReady----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mUpdateMonitorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mBitmapPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createKeyguardThumbBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 132
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, bitmapCacche:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    .local v1, canvas:Landroid/graphics/Canvas;
    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v3, v4, 0x4

    .line 136
    .local v3, start:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v2, v4, 0x4

    .line 137
    .local v2, offset:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v4, v3, v6, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    invoke-virtual {v1, p0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 140
    .end local v2           #offset:I
    .end local v3           #start:I
    :cond_0
    return-object v0
.end method

.method public static getBitmaps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mBitmapList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getPathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mBitmapPathList:Ljava/util/ArrayList;

    return-object v0
.end method
