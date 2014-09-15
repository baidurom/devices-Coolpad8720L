.class Lcom/android/gallery3d/app/OverItemT;
.super Lcom/baidu/mapapi/ItemizedOverlay;
.source "PhotoDisplayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/mapapi/ItemizedOverlay",
        "<",
        "Lcom/baidu/mapapi/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field imageButton:Landroid/widget/ImageButton;

.field imageView:Landroid/widget/ImageView;

.field mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field public mGeoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLatitude:D

.field mLocalFilePath:Ljava/lang/String;

.field private mLongitude:D

.field mNumber:I

.field private marker:Landroid/graphics/drawable/Drawable;

.field mediaPath:Ljava/lang/String;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V
    .locals 17
    .parameter "marker"
    .parameter "context"
    .parameter "count"

    .prologue
    .line 251
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/app/OverItemT;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/baidu/mapapi/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 233
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/gallery3d/app/OverItemT;->mGeoList:Ljava/util/List;

    .line 248
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/gallery3d/app/OverItemT;->mBitmap:Landroid/graphics/Bitmap;

    .line 252
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/OverItemT;->marker:Landroid/graphics/drawable/Drawable;

    .line 253
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/OverItemT;->mContext:Landroid/content/Context;

    .line 255
    sget-object v2, Lcom/android/gallery3d/app/PhotoDisplayMap;->GPSAlbums:Ljava/util/ArrayList;

    .line 256
    .local v2, Albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 257
    .local v7, mAlbumsLen:I
    if-lez v7, :cond_0

    .line 258
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 259
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 260
    .local v3, GPSAlbum:Ljava/lang/String;
    const-string v12, "|"

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 261
    .local v9, one:I
    const-string v12, "|"

    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 262
    .local v11, two:I
    const-string v12, "|"

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 263
    .local v10, three:I
    const-string v12, "|"

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 265
    .local v5, four:I
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v3, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/gallery3d/app/OverItemT;->mLatitude:D

    .line 267
    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/gallery3d/app/OverItemT;->mLongitude:D

    .line 268
    new-instance v4, Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/gallery3d/app/OverItemT;->mLatitude:D

    const-wide v14, 0x412e848000000000L

    mul-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/gallery3d/app/OverItemT;->mLongitude:D

    const-wide v15, 0x412e848000000000L

    mul-double/2addr v13, v15

    double-to-int v13, v13

    invoke-direct {v4, v12, v13}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 270
    .local v4, GeoPoint:Lcom/baidu/mapapi/GeoPoint;
    invoke-static {v4}, Lcom/baidu/mapapi/CoordinateConvert;->fromWgs84ToBaidu(Lcom/baidu/mapapi/GeoPoint;)Landroid/os/Bundle;

    move-result-object v12

    invoke-static {v12}, Lcom/baidu/mapapi/CoordinateConvert;->bundleDecode(Landroid/os/Bundle;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v8

    .line 275
    .local v8, mPoint:Lcom/baidu/mapapi/GeoPoint;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/OverItemT;->mGeoList:Ljava/util/List;

    new-instance v13, Lcom/baidu/mapapi/OverlayItem;

    const-string v14, ""

    invoke-direct {v13, v8, v14, v3}, Lcom/baidu/mapapi/OverlayItem;-><init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 278
    .end local v3           #GPSAlbum:Ljava/lang/String;
    .end local v4           #GeoPoint:Lcom/baidu/mapapi/GeoPoint;
    .end local v5           #four:I
    .end local v6           #i:I
    .end local v8           #mPoint:Lcom/baidu/mapapi/GeoPoint;
    .end local v9           #one:I
    .end local v10           #three:I
    .end local v11           #two:I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/ItemizedOverlay;->populate()V

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/OverItemT;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/app/OverItemT;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private displayPhotos()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/app/OverItemT;->imageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/gallery3d/app/OverItemT$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/OverItemT$1;-><init>(Lcom/android/gallery3d/app/OverItemT;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    return-void
.end method


# virtual methods
.method protected createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 1
    .parameter "i"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/app/OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V
    .locals 8
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"

    .prologue
    .line 292
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v4

    .line 294
    .local v4, projection:Lcom/baidu/mapapi/Projection;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/OverItemT;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, index:I
    :goto_0
    if-ltz v0, :cond_0

    .line 295
    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v1

    .line 297
    .local v1, overLayItem:Lcom/baidu/mapapi/OverlayItem;
    invoke-virtual {v1}, Lcom/baidu/mapapi/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, title:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 303
    .local v3, point:Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 304
    .local v2, paintText:Landroid/graphics/Paint;
    const v6, -0xffff01

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    const/high16 v6, 0x4170

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 307
    iget v6, v3, Landroid/graphics/Point;->x:I

    add-int/lit8 v6, v6, -0x1e

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 310
    .end local v1           #overLayItem:Lcom/baidu/mapapi/OverlayItem;
    .end local v2           #paintText:Landroid/graphics/Paint;
    .end local v3           #point:Landroid/graphics/Point;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mapapi/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V

    .line 313
    iget-object v6, p0, Lcom/android/gallery3d/app/OverItemT;->marker:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Lcom/android/gallery3d/app/OverItemT;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 314
    return-void
.end method

.method protected onTap(I)Z
    .locals 14
    .parameter "i"

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x2

    .line 328
    iget-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/OverlayItem;

    invoke-virtual {p0, v8}, Lcom/baidu/mapapi/ItemizedOverlay;->setFocus(Lcom/baidu/mapapi/OverlayItem;)V

    .line 329
    iget-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/OverlayItem;

    invoke-virtual {v8}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v4

    .line 331
    .local v4, pt:Lcom/baidu/mapapi/GeoPoint;
    iget-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/OverlayItem;

    invoke-virtual {v8}, Lcom/baidu/mapapi/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, mAlbum:Ljava/lang/String;
    const-string v8, "|"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 333
    .local v3, one:I
    const-string v8, "|"

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 334
    .local v7, two:I
    const-string v8, "|"

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 336
    .local v6, three:I
    invoke-virtual {v1, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/gallery3d/app/OverItemT;->mNumber:I

    .line 337
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->mediaPath:Ljava/lang/String;

    .line 338
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->mLocalFilePath:Ljava/lang/String;

    .line 341
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 342
    .local v2, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/16 v8, 0x10

    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 343
    iget-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v8, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v2           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    iget-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0127

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, format:Ljava/lang/String;
    sget-object v8, Lcom/android/gallery3d/app/PhotoDisplayMap;->mPopView:Landroid/view/View;

    const v9, 0x7f1000f8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->imageView:Landroid/widget/ImageView;

    .line 352
    sget-object v8, Lcom/android/gallery3d/app/PhotoDisplayMap;->mPopView:Landroid/view/View;

    const v9, 0x7f1000f9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->textView:Landroid/widget/TextView;

    .line 354
    sget-object v8, Lcom/android/gallery3d/app/PhotoDisplayMap;->mPopView:Landroid/view/View;

    const v9, 0x7f1000fa

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->imageButton:Landroid/widget/ImageButton;

    .line 356
    iget-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->imageView:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/gallery3d/app/OverItemT;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 357
    iget-object v8, p0, Lcom/android/gallery3d/app/OverItemT;->textView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/android/gallery3d/app/OverItemT;->mNumber:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-direct {p0}, Lcom/android/gallery3d/app/OverItemT;->displayPhotos()V

    .line 360
    sget-object v8, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    sget-object v9, Lcom/android/gallery3d/app/PhotoDisplayMap;->mPopView:Landroid/view/View;

    new-instance v10, Lcom/baidu/mapapi/MapView$LayoutParams;

    const/16 v11, 0x51

    invoke-direct {v10, v12, v12, v4, v11}, Lcom/baidu/mapapi/MapView$LayoutParams;-><init>(IILcom/baidu/mapapi/GeoPoint;I)V

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    sget-object v8, Lcom/android/gallery3d/app/PhotoDisplayMap;->mPopView:Landroid/view/View;

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 365
    const/4 v8, 0x1

    return v8

    .line 344
    .end local v0           #format:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 345
    .local v5, th:Ljava/lang/Throwable;
    const-string v8, "ItemizedOverlay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 370
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mPopView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/app/OverItemT;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/gallery3d/app/OverItemT;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 374
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/ItemizedOverlay;->onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/gallery3d/app/OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
