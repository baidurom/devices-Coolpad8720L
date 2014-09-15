.class public Lcom/android/gallery3d/app/PhotoDisplayMap;
.super Lcom/baidu/mapapi/MapActivity;
.source "PhotoDisplayMap.java"


# static fields
.field public static GPSAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mMapView:Lcom/baidu/mapapi/MapView;

.field public static mPopView:Landroid/view/View;


# instance fields
.field private iZoom:I

.field private lightenessMax:F

.field private mBMapMan:Lcom/baidu/mapapi/BMapManager;

.field private mStrKey:Ljava/lang/String;

.field private overitem:Lcom/android/gallery3d/app/OverItemT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mPopView:Landroid/view/View;

    .line 38
    sput-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->GPSAlbums:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/baidu/mapapi/MapActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->iZoom:I

    .line 41
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->overitem:Lcom/android/gallery3d/app/OverItemT;

    .line 43
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    .line 44
    const-string v0, "B314C11A8B462DA25E844B2D292AD1E41783D574"

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mStrKey:Ljava/lang/String;

    .line 47
    const/high16 v0, 0x437f

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->lightenessMax:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/PhotoDisplayMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->iZoom:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/PhotoDisplayMap;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->iZoom:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoDisplayMap;)Lcom/android/gallery3d/app/OverItemT;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->overitem:Lcom/android/gallery3d/app/OverItemT;

    return-object v0
.end method


# virtual methods
.method public getBrightness()I
    .locals 3

    .prologue
    .line 219
    const/4 v0, 0x1

    .line 221
    .local v0, brightness:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 226
    :goto_0
    return v0

    .line 223
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 31
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super/range {p0 .. p1}, Lcom/baidu/mapapi/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v7, 0x0

    .line 55
    .local v7, baidu:Ljava/lang/Object;
    :try_start_0
    const-class v24, Lcom/baidu/mapapi/BMapManager;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-class v27, Landroid/content/Context;

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 57
    .local v10, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object p0, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 58
    .local v9, baiduObj:Ljava/lang/Object;
    const-class v24, Lcom/baidu/mapapi/BMapManager;

    const-string v25, "init"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-class v28, Lcom/baidu/mapapi/MKGeneralListener;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 60
    .local v8, baiduMethod:Ljava/lang/reflect/Method;
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mStrKey:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v8, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    .line 72
    if-nez v7, :cond_2

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 184
    .end local v7           #baidu:Ljava/lang/Object;
    .end local v8           #baiduMethod:Ljava/lang/reflect/Method;
    .end local v9           #baiduObj:Ljava/lang/Object;
    .end local v10           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v7       #baidu:Ljava/lang/Object;
    :catch_0
    move-exception v11

    .line 62
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-nez v7, :cond_2

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 63
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v11

    .line 64
    .local v11, e:Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    if-nez v7, :cond_2

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 65
    .end local v11           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v11

    .line 66
    .local v11, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    if-nez v7, :cond_2

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 67
    .end local v11           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v11

    .line 68
    .local v11, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    if-nez v7, :cond_2

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 69
    .end local v11           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v11

    .line 70
    .local v11, e:Ljava/lang/InstantiationException;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 72
    if-nez v7, :cond_2

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 72
    .end local v11           #e:Ljava/lang/InstantiationException;
    :catchall_0
    move-exception v24

    if-nez v7, :cond_1

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 74
    :cond_1
    throw v24

    .line 78
    .end local v7           #baidu:Ljava/lang/Object;
    :cond_2
    const/16 v21, 0x1

    .line 81
    .local v21, success:Z
    new-instance v24, Lcom/baidu/mapapi/BMapManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoDisplayMap;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mStrKey:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 83
    const-string v24, "PhotoDisplayMap"

    const-string v25, "map init failed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/16 v21, 0x0

    .line 107
    :cond_3
    :goto_1
    if-nez v21, :cond_7

    .line 108
    const-string v24, "PhotoDisplayMap"

    const-string v25, "not use baidu map."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 87
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/mapapi/BMapManager;->getLocationManager()Lcom/baidu/mapapi/MKLocationManager;

    move-result-object v24

    const/16 v25, 0xa

    const/16 v26, 0x5

    invoke-virtual/range {v24 .. v26}, Lcom/baidu/mapapi/MKLocationManager;->setNotifyInternal(II)Z

    move-result v24

    if-nez v24, :cond_5

    .line 88
    const-string v24, "PhotoDisplayMap"

    const-string v25, "map setNotifyInternal failed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/16 v21, 0x0

    .line 90
    goto :goto_1

    .line 92
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/mapapi/BMapManager;->start()Z

    move-result v24

    if-nez v24, :cond_6

    .line 93
    const-string v24, "PhotoDisplayMap"

    const-string v25, "map start failed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/16 v21, 0x0

    .line 95
    goto :goto_1

    .line 98
    :cond_6
    const v24, 0x7f040008

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-super {v0, v1}, Lcom/baidu/mapapi/MapActivity;->initMapActivity(Lcom/baidu/mapapi/BMapManager;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 101
    const-string v24, "PhotoDisplayMap"

    const-string v25, "map initMapActivity failed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/16 v21, 0x0

    goto :goto_1

    .line 114
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 115
    .local v13, intent:Landroid/content/Intent;
    const-string v24, "gpsAlbums"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    sput-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->GPSAlbums:Ljava/util/ArrayList;

    .line 116
    const/4 v5, 0x0

    .line 117
    .local v5, AlbumsCount:I
    const-string v6, "|"

    .line 118
    .local v6, GPSAlbum:Ljava/lang/String;
    sget-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->GPSAlbums:Ljava/util/ArrayList;

    if-eqz v24, :cond_0

    .line 119
    sget-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->GPSAlbums:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 120
    if-lez v5, :cond_8

    .line 121
    sget-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->GPSAlbums:Ljava/util/ArrayList;

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #GPSAlbum:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 123
    .restart local v6       #GPSAlbum:Ljava/lang/String;
    :cond_8
    const-string v24, "|"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    .line 124
    .local v19, one:I
    const-string v24, "|"

    add-int/lit8 v25, v19, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v23

    .line 125
    .local v23, two:I
    const-string v24, "|"

    add-int/lit8 v25, v23, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v22

    .line 126
    .local v22, three:I
    const-string v24, "|"

    add-int/lit8 v25, v22, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .line 127
    .local v12, four:I
    const-wide/high16 v14, 0x4034

    .line 128
    .local v14, mLat1:D
    if-lez v22, :cond_9

    if-lez v12, :cond_9

    move/from16 v0, v22

    if-ge v0, v12, :cond_9

    .line 129
    add-int/lit8 v24, v22, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 131
    :cond_9
    const-wide/high16 v16, 0x4034

    .line 132
    .local v16, mLon1:D
    if-lez v12, :cond_a

    .line 133
    add-int/lit8 v24, v12, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 135
    :cond_a
    const v24, 0x7f100013

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/baidu/mapapi/MapView;

    sput-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    .line 136
    sget-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/baidu/mapapi/MapView;->setBuiltInZoomControls(Z)V

    .line 139
    sget-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/baidu/mapapi/MapView;->setDrawOverlayWhenZooming(Z)V

    .line 140
    new-instance v20, Lcom/baidu/mapapi/GeoPoint;

    const-wide v24, 0x412e848000000000L

    mul-double v24, v24, v14

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    const-wide v25, 0x412e848000000000L

    mul-double v25, v25, v16

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 142
    .local v20, point:Lcom/baidu/mapapi/GeoPoint;
    sget-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f020111

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 149
    .local v18, marker:Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    new-instance v24, Lcom/android/gallery3d/app/OverItemT;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v5}, Lcom/android/gallery3d/app/OverItemT;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoDisplayMap;->overitem:Lcom/android/gallery3d/app/OverItemT;

    .line 152
    sget-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->overitem:Lcom/android/gallery3d/app/OverItemT;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v24

    const v25, 0x7f040055

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    sput-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->mPopView:Landroid/view/View;

    .line 157
    sget-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    sget-object v25, Lcom/android/gallery3d/app/PhotoDisplayMap;->mPopView:Landroid/view/View;

    new-instance v26, Lcom/baidu/mapapi/MapView$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, -0x2

    const/16 v29, 0x0

    const/16 v30, 0x33

    invoke-direct/range {v26 .. v30}, Lcom/baidu/mapapi/MapView$LayoutParams;-><init>(IILcom/baidu/mapapi/GeoPoint;I)V

    invoke-virtual/range {v24 .. v26}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    sget-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->mPopView:Landroid/view/View;

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 161
    sget-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/PhotoDisplayMap;->iZoom:I

    .line 162
    sget-object v24, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/gallery3d/app/PhotoDisplayMap$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/app/PhotoDisplayMap$1;-><init>(Lcom/android/gallery3d/app/PhotoDisplayMap;)V

    invoke-virtual/range {v24 .. v26}, Lcom/baidu/mapapi/MapView;->regMapViewListener(Lcom/baidu/mapapi/BMapManager;Lcom/baidu/mapapi/MKMapViewListener;)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onPause()V

    .line 191
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->start()Z

    .line 197
    :cond_0
    const/16 v0, 0xa0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/PhotoDisplayMap;->setBrightness(IZ)V

    .line 198
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onResume()V

    .line 199
    return-void
.end method

.method public setBrightness(IZ)V
    .locals 5
    .parameter "brightness"
    .parameter "oncreate"

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 208
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDisplayMap;->getBrightness()I

    move-result v1

    .line 209
    .local v1, mCurrBrightness:I
    if-le p1, v1, :cond_0

    const/4 v2, 0x1

    .line 210
    .local v2, setting:Z
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    .line 211
    int-to-float v3, p1

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->lightenessMax:F

    div-float/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 215
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 216
    return-void

    .line 209
    .end local v2           #setting:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 213
    .restart local v2       #setting:Z
    :cond_1
    const/high16 v3, -0x4080

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1
.end method
