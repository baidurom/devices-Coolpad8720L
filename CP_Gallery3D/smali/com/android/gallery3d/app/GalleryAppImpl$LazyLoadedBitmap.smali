.class Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;
.super Ljava/lang/Object;
.source "GalleryAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/GalleryAppImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyLoadedBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mResId:I

.field final synthetic this$0:Lcom/android/gallery3d/app/GalleryAppImpl;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryAppImpl;I)V
    .locals 0
    .parameter
    .parameter "resId"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput p2, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->mResId:I

    .line 556
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 560
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 561
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 562
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->mResId:I

    invoke-static {v0, v1, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 564
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 565
    .local v3, width:I
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 566
    .local v4, height:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v7, v0, 0x6

    .line 567
    .local v7, iconSizeX:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v8, v0, 0x6

    .line 568
    .local v8, iconSizeY:I
    int-to-float v0, v7

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v0, v1

    .line 569
    .local v10, scaleX:F
    int-to-float v0, v8

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 570
    .local v11, scaleY:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 571
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v10, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 572
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 575
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #iconSizeX:I
    .end local v8           #iconSizeY:I
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v10           #scaleX:F
    .end local v11           #scaleY:F
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
