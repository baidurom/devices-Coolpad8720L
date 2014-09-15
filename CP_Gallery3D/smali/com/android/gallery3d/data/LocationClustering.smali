.class Lcom/android/gallery3d/data/LocationClustering;
.super Lcom/android/gallery3d/data/Clustering;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocationClustering$SmallItem;,
        Lcom/android/gallery3d/data/LocationClustering$Point;
    }
.end annotation


# instance fields
.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocationClustering$SmallItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mName:Ljava/lang/String;

.field private mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoLocationString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/gallery3d/data/Clustering;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$102(Lcom/android/gallery3d/data/LocationClustering;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClustering;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/android/gallery3d/data/LocationClustering;->generateName(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/data/LocationClustering;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static generateName(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter "geocoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocationClustering$SmallItem;",
            ">;",
            "Lcom/android/gallery3d/util/ReverseGeocoder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;

    invoke-direct {v7}, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;-><init>()V

    .line 192
    .local v7, set:Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 193
    .local v6, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 194
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .line 195
    .local v1, item:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    iget-wide v2, v1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    .line 196
    .local v2, itemLatitude:D
    iget-wide v4, v1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    .line 198
    .local v4, itemLongitude:D
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    cmpl-double v8, v8, v2

    if-lez v8, :cond_0

    .line 199
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    .line 200
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    .line 202
    :cond_0
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    cmpg-double v8, v8, v2

    if-gez v8, :cond_1

    .line 203
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    .line 204
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    .line 206
    :cond_1
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    cmpl-double v8, v8, v4

    if-lez v8, :cond_2

    .line 207
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    .line 208
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    .line 210
    :cond_2
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    cmpg-double v8, v8, v4

    if-gez v8, :cond_3

    .line 211
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    .line 212
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    .line 193
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v1           #item:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .end local v2           #itemLatitude:D
    .end local v4           #itemLongitude:D
    :cond_4
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/util/ReverseGeocoder;->computeAddress(Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static kMeans([Lcom/android/gallery3d/data/LocationClustering$Point;[I)[I
    .locals 34
    .parameter "points"
    .parameter "bestK"

    .prologue
    .line 243
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    .line 246
    .local v27, n:I
    const/4 v2, 0x1

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 247
    .local v26, minK:I
    const/16 v2, 0x14

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 249
    .local v25, maxK:I
    move/from16 v0, v25

    new-array v14, v0, [Lcom/android/gallery3d/data/LocationClustering$Point;

    .line 250
    .local v14, center:[Lcom/android/gallery3d/data/LocationClustering$Point;
    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/gallery3d/data/LocationClustering$Point;

    move-object/from16 v18, v0

    .line 251
    .local v18, groupSum:[Lcom/android/gallery3d/data/LocationClustering$Point;
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 252
    .local v17, groupCount:[I
    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 254
    .local v19, grouping:[I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 255
    new-instance v2, Lcom/android/gallery3d/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v2, v14, v20

    .line 256
    new-instance v2, Lcom/android/gallery3d/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v2, v18, v20

    .line 254
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 261
    :cond_0
    const v13, 0x7f7fffff

    .line 263
    .local v13, bestScore:F
    move/from16 v0, v27

    new-array v11, v0, [I

    .line 265
    .local v11, bestGrouping:[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p1, v2

    .line 267
    const/16 v24, 0x0

    .line 268
    .local v24, lastDistance:F
    const/16 v33, 0x0

    .line 270
    .local v33, totalDistance:F
    move/from16 v23, v26

    .local v23, k:I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_d

    .line 272
    div-int v15, v27, v23

    .line 273
    .local v15, delta:I
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 274
    mul-int v2, v20, v15

    aget-object v28, p0, v2

    .line 275
    .local v28, p:Lcom/android/gallery3d/data/LocationClustering$Point;
    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 276
    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 273
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 279
    .end local v28           #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    :cond_1
    const/16 v21, 0x0

    .local v21, iter:I
    :goto_3
    const/16 v2, 0x1e

    move/from16 v0, v21

    if-ge v0, v2, :cond_9

    .line 281
    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 282
    aget-object v2, v18, v20

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 283
    aget-object v2, v18, v20

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 284
    const/4 v2, 0x0

    aput v2, v17, v20

    .line 281
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 286
    :cond_2
    const/16 v33, 0x0

    .line 288
    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 289
    aget-object v28, p0, v20

    .line 290
    .restart local v28       #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    const v10, 0x7f7fffff

    .line 291
    .local v10, bestDistance:F
    const/4 v12, 0x0

    .line 292
    .local v12, bestIndex:I
    const/16 v22, 0x0

    .local v22, j:I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 293
    move-object/from16 v0, v28

    iget-wide v2, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    aget-object v6, v14, v22

    iget-wide v6, v6, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget-object v8, v14, v22

    iget-wide v8, v8, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    invoke-static/range {v2 .. v9}, Lcom/android/gallery3d/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v16, v0

    .line 298
    .local v16, distance:F
    const/high16 v2, 0x3f80

    cmpg-float v2, v16, v2

    if-gez v2, :cond_3

    .line 299
    const/16 v16, 0x0

    .line 301
    :cond_3
    cmpg-float v2, v16, v10

    if-gez v2, :cond_4

    .line 302
    move/from16 v10, v16

    .line 303
    move/from16 v12, v22

    .line 292
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 306
    .end local v16           #distance:F
    :cond_5
    aput v12, v19, v20

    .line 307
    aget v2, v17, v12

    add-int/lit8 v2, v2, 0x1

    aput v2, v17, v12

    .line 308
    aget-object v2, v18, v12

    iget-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v5, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 309
    aget-object v2, v18, v12

    iget-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    move-object/from16 v0, v28

    iget-wide v5, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 310
    add-float v33, v33, v10

    .line 288
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 314
    .end local v10           #bestDistance:F
    .end local v12           #bestIndex:I
    .end local v22           #j:I
    .end local v28           #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    :cond_6
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 315
    aget v2, v17, v20

    if-lez v2, :cond_7

    .line 316
    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v3, v3, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget v5, v17, v20

    int-to-double v5, v5

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 317
    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v3, v3, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    aget v5, v17, v20

    int-to-double v5, v5

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 314
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 321
    :cond_8
    const/4 v2, 0x0

    cmpl-float v2, v33, v2

    if-eqz v2, :cond_9

    sub-float v2, v24, v33

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v2, v33

    const v3, 0x3c23d70a

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    .line 329
    :cond_9
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 330
    .local v31, reassign:[I
    const/16 v29, 0x0

    .line 331
    .local v29, realK:I
    const/16 v20, 0x0

    move/from16 v30, v29

    .end local v29           #realK:I
    .local v30, realK:I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 332
    aget v2, v17, v20

    if-lez v2, :cond_f

    .line 333
    add-int/lit8 v29, v30, 0x1

    .end local v30           #realK:I
    .restart local v29       #realK:I
    aput v30, v31, v20

    .line 331
    :goto_9
    add-int/lit8 v20, v20, 0x1

    move/from16 v30, v29

    .end local v29           #realK:I
    .restart local v30       #realK:I
    goto :goto_8

    .line 325
    .end local v30           #realK:I
    .end local v31           #reassign:[I
    :cond_a
    move/from16 v24, v33

    .line 279
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 338
    .restart local v30       #realK:I
    .restart local v31       #reassign:[I
    :cond_b
    move/from16 v0, v30

    int-to-float v2, v0

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    mul-float v32, v33, v2

    .line 340
    .local v32, score:F
    cmpg-float v2, v32, v13

    if-gez v2, :cond_e

    .line 341
    move/from16 v13, v32

    .line 342
    const/4 v2, 0x0

    aput v30, p1, v2

    .line 343
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 344
    aget v2, v19, v20

    aget v2, v31, v2

    aput v2, v11, v20

    .line 343
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 346
    :cond_c
    const/4 v2, 0x0

    cmpl-float v2, v32, v2

    if-nez v2, :cond_e

    .line 351
    .end local v15           #delta:I
    .end local v21           #iter:I
    .end local v30           #realK:I
    .end local v31           #reassign:[I
    .end local v32           #score:F
    :cond_d
    return-object v11

    .line 270
    .restart local v15       #delta:I
    .restart local v21       #iter:I
    .restart local v30       #realK:I
    .restart local v31       #reassign:[I
    .restart local v32       #score:F
    :cond_e
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .end local v32           #score:F
    :cond_f
    move/from16 v29, v30

    .end local v30           #realK:I
    .restart local v29       #realK:I
    goto :goto_9
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v4, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 227
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 229
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    iget-object v4, v4, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-object v3
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 35
    .parameter "baseSet"

    .prologue
    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v27

    .line 71
    .local v27, total:I
    move/from16 v0, v27

    new-array v4, v0, [Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .line 73
    .local v4, buf:[Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v14, v0, [D

    .line 74
    .local v14, latLong:[D
    new-instance v30, Lcom/android/gallery3d/data/LocationClustering$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v14, v4}, Lcom/android/gallery3d/data/LocationClustering$1;-><init>(Lcom/android/gallery3d/data/LocationClustering;I[D[Lcom/android/gallery3d/data/LocationClustering$SmallItem;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 87
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v28, withLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v29, withoutLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v23, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$Point;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move/from16 v0, v27

    if-ge v10, v0, :cond_2

    .line 91
    aget-object v25, v4, v10

    .line 92
    .local v25, s:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    if-nez v25, :cond_0

    .line 90
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 93
    :cond_0
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-wide/from16 v30, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    move-wide/from16 v32, v0

    invoke-static/range {v30 .. v33}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 94
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v30, Lcom/android/gallery3d/data/LocationClustering$Point;

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-wide/from16 v31, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    move-wide/from16 v33, v0

    invoke-direct/range {v30 .. v34}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>(DD)V

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_1
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    .end local v25           #s:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v6, clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 104
    .local v22, m:I
    if-lez v22, :cond_4

    .line 106
    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/gallery3d/data/LocationClustering$Point;

    move-object/from16 v24, v0

    .line 107
    .local v24, pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    .end local v24           #pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    check-cast v24, [Lcom/android/gallery3d/data/LocationClustering$Point;

    .line 108
    .restart local v24       #pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v3, v0, [I

    .line 109
    .local v3, bestK:[I
    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/android/gallery3d/data/LocationClustering;->kMeans([Lcom/android/gallery3d/data/LocationClustering$Point;[I)[I

    move-result-object v12

    .line 111
    .local v12, index:[I
    const/4 v10, 0x0

    :goto_2
    const/16 v30, 0x0

    aget v30, v3, v30

    move/from16 v0, v30

    if-ge v10, v0, :cond_3

    .line 112
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 115
    :cond_3
    const/4 v10, 0x0

    :goto_3
    move/from16 v0, v22

    if-ge v10, v0, :cond_4

    .line 116
    aget v30, v12, v10

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 120
    .end local v3           #bestK:[I
    .end local v12           #index:[I
    .end local v24           #pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    :cond_4
    new-instance v8, Lcom/android/gallery3d/util/ReverseGeocoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v8, v0}, Lcom/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v8, geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    .line 122
    const/4 v9, 0x0

    .line 123
    .local v9, hasUnresolvedAddress:Z
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 125
    .local v5, cluster:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    const-string v30, ""

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/data/LocationClustering;->mName:Ljava/lang/String;

    .line 127
    :try_start_0
    new-instance v26, Lcom/android/gallery3d/data/LocationClustering$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v8}, Lcom/android/gallery3d/data/LocationClustering$2;-><init>(Lcom/android/gallery3d/data/LocationClustering;Ljava/util/ArrayList;Lcom/android/gallery3d/util/ReverseGeocoder;)V

    .line 132
    .local v26, t:Ljava/lang/Thread;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    const-wide/16 v30, 0x64

    :try_start_1
    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :goto_5
    :try_start_2
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    .end local v26           #t:Ljava/lang/Thread;
    :goto_6
    const-string v30, "LocationClustering"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "name =  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mName:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mName:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 167
    :catch_0
    move-exception v7

    .line 168
    .local v7, ex:Ljava/lang/Exception;
    const-string v30, "LocationClustering"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 139
    .end local v7           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 140
    .restart local v7       #ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 156
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_5
    const/16 v30, 0x0

    :try_start_4
    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v13

    .line 157
    .local v13, lat:Ljava/lang/String;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v18

    .line 158
    .local v18, lng:Ljava/lang/String;
    const-string v30, "."

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 159
    .local v17, latlen:I
    const-string v30, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 160
    .local v20, lnglen:I
    const/16 v30, 0x0

    add-int/lit8 v31, v17, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 161
    .local v15, latdisplay:Ljava/lang/String;
    const/16 v30, 0x0

    add-int/lit8 v31, v20, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 162
    .local v19, lngdisplay:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0e0132

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 163
    .local v16, latitude:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0e0133

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 164
    .local v21, longitude:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    .line 172
    .end local v5           #cluster:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    .end local v13           #lat:Ljava/lang/String;
    .end local v15           #latdisplay:Ljava/lang/String;
    .end local v16           #latitude:Ljava/lang/String;
    .end local v17           #latlen:I
    .end local v18           #lng:Ljava/lang/String;
    .end local v19           #lngdisplay:Ljava/lang/String;
    .end local v20           #lnglen:I
    .end local v21           #longitude:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_7

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_7
    if-eqz v9, :cond_8

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/gallery3d/data/LocationClustering$3;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocationClustering$3;-><init>(Lcom/android/gallery3d/data/LocationClustering;)V

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_8
    return-void

    .line 135
    .restart local v5       #cluster:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    .restart local v26       #t:Ljava/lang/Thread;
    :catch_2
    move-exception v30

    goto/16 :goto_5
.end method
