.class Lcom/android/gallery3d/ui/TiledTexture$Tile;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "TiledTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tile"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public contentHeight:I

.field public contentWidth:I

.field public nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

.field public offsetX:I

.field public offsetY:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/TiledTexture$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TiledTexture$Tile;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 162
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/16 v11, 0xfe

    const/high16 v4, 0x4380

    const/4 v2, 0x0

    .line 136
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v9, v0, 0x1

    .line 137
    .local v9, x:I
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v10, v0, 0x1

    .line 139
    .local v10, y:I
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->prepareResources()V

    .line 141
    const-string v0, "TiledTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sCanvas = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int v8, v0, v9

    .line 146
    .local v8, r:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int v7, v0, v10

    .line 147
    .local v7, b:I
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v9

    int-to-float v5, v10

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$200()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 151
    if-lez v9, :cond_1

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v0

    add-int/lit8 v1, v9, -0x1

    int-to-float v1, v1

    add-int/lit8 v3, v9, -0x1

    int-to-float v3, v3

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 152
    :cond_1
    if-lez v10, :cond_2

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v1

    add-int/lit8 v0, v10, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, v10, -0x1

    int-to-float v5, v0

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    :cond_2
    if-ge v8, v11, :cond_3

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, v8

    int-to-float v3, v8

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 154
    :cond_3
    if-ge v7, v11, :cond_4

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v1

    int-to-float v3, v7

    int-to-float v5, v7

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 156
    .end local v7           #b:I
    .end local v8           #r:I
    :cond_4
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$400()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x100

    .line 126
    iput p1, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    .line 127
    iput p2, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    .line 128
    add-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 129
    add-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    .line 130
    iput v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    .line 131
    iput v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    .line 132
    return-void
.end method
