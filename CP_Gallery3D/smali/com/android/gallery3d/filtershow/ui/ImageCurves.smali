.class public Lcom/android/gallery3d/filtershow/ui/ImageCurves;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;
.source "ImageCurves.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;
    }
.end annotation


# instance fields
.field blueHistogram:[I

.field gHistoPath:Landroid/graphics/Path;

.field gPaint:Landroid/graphics/Paint;

.field gPathSpline:Landroid/graphics/Path;

.field greenHistogram:[I

.field private mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

.field private mCurrentCurveIndex:I

.field private mDidAddPoint:Z

.field private mDidDelete:Z

.field mDoingTouchMove:Z

.field private mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field redHistogram:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPathSpline:Landroid/graphics/Path;

    .line 42
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    .line 43
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    .line 45
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 46
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 47
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->redHistogram:[I

    .line 48
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->greenHistogram:[I

    .line 49
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->blueHistogram:[I

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    .line 52
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    .line 56
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPathSpline:Landroid/graphics/Path;

    .line 42
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    .line 43
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    .line 45
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 46
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 47
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->redHistogram:[I

    .line 48
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->greenHistogram:[I

    .line 49
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->blueHistogram:[I

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    .line 52
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 62
    return-void
.end method

.method private curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getMaster()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getFilterName()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, filterName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    .line 79
    .end local v0           #filterName:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V
    .locals 22
    .parameter "canvas"
    .parameter "histogram"
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 272
    const/4 v9, 0x0

    .line 273
    .local v9, max:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    .line 274
    aget v18, p2, v6

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    .line 275
    aget v9, p2, v6

    .line 273
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v14, v0

    .line 279
    .local v14, w:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v5, v0

    .line 280
    .local v5, h:F
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v16, v14, v18

    .line 281
    .local v16, wl:F
    const v18, 0x3e99999a

    mul-float v18, v18, v5

    int-to-float v0, v9

    move/from16 v19, v0

    div-float v15, v18, v19

    .line 282
    .local v15, wh:F
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 283
    .local v10, paint:Landroid/graphics/Paint;
    const/16 v18, 0x64

    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 284
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 286
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 287
    .local v11, paint2:Landroid/graphics/Paint;
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    const/high16 v18, 0x40c0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 289
    new-instance v18, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 292
    const/4 v4, 0x0

    .line 293
    .local v4, firstPointEncountered:Z
    const/4 v12, 0x0

    .line 294
    .local v12, prev:F
    const/4 v8, 0x0

    .line 295
    .local v8, last:F
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_4

    .line 296
    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v17, v18, v16

    .line 297
    .local v17, x:F
    aget v18, p2, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v7, v18, v15

    .line 298
    .local v7, l:F
    const/16 v18, 0x0

    cmpl-float v18, v7, v18

    if-eqz v18, :cond_3

    .line 299
    add-float v18, v7, v12

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    sub-float v13, v5, v18

    .line 300
    .local v13, v:F
    if-nez v4, :cond_2

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 302
    const/4 v4, 0x1

    .line 304
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 305
    move v12, v7

    .line 306
    move/from16 v8, v17

    .line 295
    .end local v13           #v:F
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 309
    .end local v7           #l:F
    .end local v17           #x:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 313
    const/high16 v18, 0x4000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 314
    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    const/16 v18, 0xff

    const/16 v19, 0xc8

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 317
    return-void
.end method

.method private getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "Curves"

    return-object v0
.end method

.method private getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v0

    return-object v0
.end method

.method private pickControlPoint(FF)I
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    .line 146
    const/4 v5, 0x0

    .line 147
    .local v5, pick:I
    iget v9, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, v9}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v8

    .line 148
    .local v8, spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v6, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    .line 149
    .local v6, px:F
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v7, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    .line 150
    .local v7, py:F
    sub-float v9, v6, p1

    sub-float v10, v6, p1

    mul-float/2addr v9, v10

    sub-float v10, v7, p2

    sub-float v11, v7, p2

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 151
    .local v2, delta:D
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/ui/Spline;->getNbPoints()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 152
    invoke-virtual {v8, v4}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v6, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    .line 153
    invoke-virtual {v8, v4}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v7, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    .line 154
    sub-float v9, v6, p1

    sub-float v10, v6, p1

    mul-float/2addr v9, v10

    sub-float v10, v7, p2

    sub-float v11, v7, p2

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 156
    .local v0, currentDelta:D
    cmpg-double v9, v0, v2

    if-gez v9, :cond_0

    .line 157
    move-wide v2, v0

    .line 158
    move v5, v4

    .line 151
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    .end local v0           #currentDelta:D
    :cond_1
    iget-boolean v9, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    if-nez v9, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v2

    const-wide/high16 v11, 0x4059

    cmpl-double v9, v9, v11

    if-lez v9, :cond_2

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/ui/Spline;->getNbPoints()I

    move-result v9

    const/16 v10, 0xa

    if-ge v9, v10, :cond_2

    .line 164
    const/4 v5, -0x1

    .line 167
    .end local v5           #pick:I
    :cond_2
    return v5
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 103
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;-><init>(Lcom/android/gallery3d/filtershow/ui/ImageCurves;)V

    new-array v2, v9, [Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v1

    if-nez v1, :cond_1

    .line 143
    :goto_0
    return-void

    .line 116
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-ne v1, v9, :cond_3

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->redHistogram:[I

    const/high16 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 119
    :cond_3
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->greenHistogram:[I

    const v2, -0xff0100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 122
    :cond_5
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 123
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->blueHistogram:[I

    const v2, -0xffff01

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 126
    :cond_7
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-nez v1, :cond_9

    .line 127
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    const/4 v1, 0x4

    if-ge v8, v1, :cond_9

    .line 128
    invoke-direct {p0, v8}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v0

    .line 129
    .local v0, spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eq v8, v1, :cond_8

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v1

    if-nez v1, :cond_8

    .line 132
    invoke-static {v8}, Lcom/android/gallery3d/filtershow/ui/Spline;->colorForCurve(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/ui/Spline;->draw(Landroid/graphics/Canvas;IIIZZ)V

    .line 127
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 138
    .end local v0           #spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    .end local v8           #i:I
    :cond_9
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/Spline;->colorForCurve(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-boolean v7, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    move-object v2, p1

    move v6, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/gallery3d/filtershow/ui/Spline;->draw(Landroid/graphics/Canvas;IIIZZ)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawToast(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "e"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 176
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 177
    .local v2, posX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 178
    .local v3, posY:F
    invoke-static {}, Lcom/android/gallery3d/filtershow/ui/Spline;->curveHandleSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v0, v5

    .line 179
    .local v0, margin:F
    cmpg-float v5, v3, v0

    if-gez v5, :cond_0

    .line 180
    move v3, v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v3, v5, v0

    .line 185
    :cond_1
    sub-float v5, v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    div-float v3, v5, v6

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 188
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 189
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->updateCachedImage()V

    .line 190
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 191
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    if-eqz v5, :cond_2

    .line 192
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    .line 194
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_3
    :goto_0
    monitor-exit p0

    return v8

    .line 197
    :cond_4
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    .line 199
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    if-nez v5, :cond_3

    .line 203
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 207
    iget v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, v5}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v4

    .line 208
    .local v4, spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->pickControlPoint(FF)I

    move-result v1

    .line 209
    .local v1, pick:I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    if-nez v5, :cond_5

    .line 210
    if-ne v1, v9, :cond_7

    .line 211
    new-instance v5, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    invoke-direct {v5, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;-><init>(FF)V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 212
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)I

    move-result v1

    .line 213
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 219
    :cond_5
    :goto_1
    invoke-virtual {v4, v2, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->isPointContained(FI)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 220
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/ui/Spline;->didMovePoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)V

    .line 221
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/Spline;->movePoint(IFF)V

    .line 226
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->updateCachedImage()V

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    .end local v0           #margin:F
    .end local v1           #pick:I
    .end local v2           #posX:F
    .end local v3           #posY:F
    .end local v4           #spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 215
    .restart local v0       #margin:F
    .restart local v1       #pick:I
    .restart local v2       #posX:F
    .restart local v3       #posY:F
    .restart local v4       #spline:Lcom/android/gallery3d/filtershow/ui/Spline;
    :cond_7
    :try_start_2
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    goto :goto_1

    .line 222
    :cond_8
    if-eq v1, v9, :cond_6

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/ui/Spline;->getNbPoints()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_6

    .line 223
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->deletePoint(I)V

    .line 224
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public resetCurve()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getMaster()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->reset()V

    .line 97
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->updateCachedImage()V

    .line 99
    :cond_0
    return-void
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->resetParameter()V

    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 92
    return-void
.end method

.method public setChannel(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 320
    packed-switch p1, :pswitch_data_0

    .line 338
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 339
    return-void

    .line 322
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 326
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 330
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 334
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x7f100172
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized updateCachedImage()V
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_0
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
