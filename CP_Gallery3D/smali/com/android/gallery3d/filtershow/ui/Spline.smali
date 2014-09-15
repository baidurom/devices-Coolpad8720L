.class public Lcom/android/gallery3d/filtershow/ui/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# static fields
.field private static mCurveHandle:Landroid/graphics/drawable/Drawable;

.field private static mCurveHandleSize:I

.field private static mCurveWidth:I


# instance fields
.field private final gPaint:Landroid/graphics/Paint;

.field private mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

.field private final mPoints:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/ui/ControlPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/ui/Spline;)V
    .locals 4
    .parameter "spline"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 49
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 51
    iget-object v2, p1, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 52
    .local v1, p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    new-instance v3, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    invoke-direct {v3, v1}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;-><init>(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v1           #p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public static colorForCurve(I)I
    .locals 1
    .parameter "curveIndex"

    .prologue
    .line 71
    packed-switch p0, :pswitch_data_0

    .line 79
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 73
    :pswitch_0
    const/high16 v0, -0x1

    goto :goto_0

    .line 75
    :pswitch_1
    const v0, -0xff0100

    goto :goto_0

    .line 77
    :pswitch_2
    const v0, -0xffff01

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static curveHandleSize()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    return v0
.end method

.method private drawGrid(Landroid/graphics/Canvas;FF)V
    .locals 11
    .parameter "canvas"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v7, 0x4040

    const/16 v6, 0xc8

    const/16 v4, 0x96

    const/16 v3, 0x64

    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    const/high16 v0, 0x4110

    div-float v9, p3, v0

    .line 179
    .local v9, stepH:F
    const/high16 v0, 0x4110

    div-float v10, p2, v0

    .line 182
    .local v10, stepW:F
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p3

    move v3, p2

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    div-float v9, p3, v7

    .line 189
    div-float v10, p2, v7

    .line 190
    const/4 v8, 0x1

    .local v8, j:I
    :goto_0
    const/4 v0, 0x3

    if-ge v8, v0, :cond_0

    .line 191
    int-to-float v0, v8

    mul-float v2, v0, v9

    int-to-float v0, v8

    mul-float v4, v0, v9

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    int-to-float v0, v8

    mul-float v3, v0, v10

    int-to-float v0, v8

    mul-float v5, v0, v10

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 194
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 195
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, p2

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 196
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, p2

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 197
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p3

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    return-void
.end method

.method private drawHandles(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 4
    .parameter "canvas"
    .parameter "indicator"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 109
    float-to-int v2, p3

    sget v3, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 110
    .local v0, left:I
    float-to-int v2, p4

    sget v3, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 111
    .local v1, top:I
    sget v2, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    add-int/2addr v2, v0

    sget v3, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method public static setCurveHandle(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter "drawable"
    .parameter "size"

    .prologue
    .line 58
    sput-object p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandle:Landroid/graphics/drawable/Drawable;

    .line 59
    sput p1, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    .line 60
    return-void
.end method

.method public static setCurveWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 63
    sput p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveWidth:I

    .line 64
    return-void
.end method


# virtual methods
.method public addPoint(FF)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 352
    new-instance v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)I

    move-result v0

    return v0
.end method

.method public addPoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 358
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public deletePoint(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 364
    return-void
.end method

.method public didMovePoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 84
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;IIIZZ)V
    .locals 54
    .parameter "canvas"
    .parameter "color"
    .parameter "canvasWidth"
    .parameter "canvasHeight"
    .parameter "showHandles"
    .parameter "moving"

    .prologue
    .line 202
    sget v4, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    sub-int v4, p3, v4

    int-to-float v0, v4

    move/from16 v41, v0

    .line 203
    .local v41, w:F
    sget v4, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    sub-int v4, p4, v4

    int-to-float v8, v4

    .line 204
    .local v8, h:F
    sget v4, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v26, v0

    .line 205
    .local v26, dx:F
    sget v4, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandleSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v27, v0

    .line 227
    .local v27, dy:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-object/from16 v32, v0

    .line 228
    .local v32, points:[Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    const/16 v28, 0x0

    .local v28, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 230
    .local v30, p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    new-instance v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-object/from16 v0, v30

    iget v7, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    mul-float v7, v7, v41

    move-object/from16 v0, v30

    iget v10, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    mul-float/2addr v10, v8

    invoke-direct {v4, v7, v10}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;-><init>(FF)V

    aput-object v4, v32, v28

    .line 228
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 232
    .end local v30           #p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->solveSystem([Lcom/android/gallery3d/filtershow/ui/ControlPoint;)[D

    move-result-object v25

    .line 234
    .local v25, derivatives:[D
    new-instance v31, Landroid/graphics/Path;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Path;-><init>()V

    .line 235
    .local v31, path:Landroid/graphics/Path;
    const/4 v4, 0x0

    const/4 v7, 0x0

    aget-object v7, v32, v7

    iget v7, v7, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    const/16 v28, 0x0

    :goto_1
    move-object/from16 v0, v32

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v28

    if-ge v0, v4, :cond_4

    .line 237
    aget-object v4, v32, v28

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    float-to-double v0, v4

    move-wide/from16 v44, v0

    .line 238
    .local v44, x1:D
    add-int/lit8 v4, v28, 0x1

    aget-object v4, v32, v4

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    float-to-double v0, v4

    move-wide/from16 v46, v0

    .line 239
    .local v46, x2:D
    aget-object v4, v32, v28

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    float-to-double v0, v4

    move-wide/from16 v50, v0

    .line 240
    .local v50, y1:D
    add-int/lit8 v4, v28, 0x1

    aget-object v4, v32, v4

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    float-to-double v0, v4

    move-wide/from16 v52, v0

    .line 242
    .local v52, y2:D
    move-wide/from16 v42, v44

    .local v42, x:D
    :goto_2
    cmpg-double v4, v42, v46

    if-gez v4, :cond_3

    .line 245
    sub-double v21, v46, v44

    .line 246
    .local v21, delta:D
    mul-double v23, v21, v21

    .line 247
    .local v23, delta2:D
    sub-double v10, v42, v44

    div-double v18, v10, v21

    .line 248
    .local v18, b:D
    const-wide/high16 v10, 0x3ff0

    sub-double v16, v10, v18

    .line 249
    .local v16, a:D
    mul-double v33, v16, v50

    .line 250
    .local v33, ta:D
    mul-double v35, v18, v52

    .line 251
    .local v35, tb:D
    mul-double v10, v16, v16

    mul-double v10, v10, v16

    sub-double v10, v10, v16

    aget-wide v12, v25, v28

    mul-double v37, v10, v12

    .line 252
    .local v37, tc:D
    mul-double v10, v18, v18

    mul-double v10, v10, v18

    sub-double v10, v10, v18

    add-int/lit8 v4, v28, 0x1

    aget-wide v12, v25, v4

    mul-double v39, v10, v12

    .line 253
    .local v39, td:D
    add-double v10, v33, v35

    const-wide/high16 v12, 0x4018

    div-double v12, v23, v12

    add-double v14, v37, v39

    mul-double/2addr v12, v14

    add-double v48, v10, v12

    .line 254
    .local v48, y:D
    float-to-double v10, v8

    cmpl-double v4, v48, v10

    if-lez v4, :cond_1

    .line 255
    float-to-double v0, v8

    move-wide/from16 v48, v0

    .line 257
    :cond_1
    const-wide/16 v10, 0x0

    cmpg-double v4, v48, v10

    if-gez v4, :cond_2

    .line 258
    const-wide/16 v48, 0x0

    .line 260
    :cond_2
    move-wide/from16 v0, v42

    double-to-float v4, v0

    move-wide/from16 v0, v48

    double-to-float v7, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    const-wide/high16 v10, 0x4034

    add-double v42, v42, v10

    goto :goto_2

    .line 236
    .end local v16           #a:D
    .end local v18           #b:D
    .end local v21           #delta:D
    .end local v23           #delta2:D
    .end local v33           #ta:D
    .end local v35           #tb:D
    .end local v37           #tc:D
    .end local v39           #td:D
    .end local v48           #y:D
    :cond_3
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 263
    .end local v42           #x:D
    .end local v44           #x1:D
    .end local v46           #x2:D
    .end local v50           #y1:D
    .end local v52           #y2:D
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 264
    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v41

    invoke-direct {v0, v1, v2, v8}, Lcom/android/gallery3d/filtershow/ui/Spline;->drawGrid(Landroid/graphics/Canvas;FF)V

    .line 266
    move-object/from16 v0, v32

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v29, v32, v4

    .line 267
    .local v29, lastPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 270
    .local v9, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 271
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 272
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 273
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 274
    sget v20, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveWidth:I

    .line 275
    .local v20, curveWidth:I
    if-eqz p5, :cond_5

    .line 276
    move/from16 v0, v20

    int-to-double v10, v0

    const-wide/high16 v12, 0x3ff8

    mul-double/2addr v10, v12

    double-to-int v0, v10

    move/from16 v20, v0

    .line 278
    :cond_5
    add-int/lit8 v4, v20, 0x2

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    const/high16 v4, -0x100

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 282
    if-eqz p6, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    if-eqz v4, :cond_6

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    mul-float v5, v4, v41

    .line 284
    .local v5, px:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v4, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    mul-float v6, v4, v8

    .line 285
    .local v6, py:F
    const/high16 v4, 0x4040

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 286
    const/high16 v4, -0x100

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v4, p1

    move v7, v5

    .line 287
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 288
    const/4 v11, 0x0

    move-object/from16 v10, p1

    move v12, v6

    move v13, v5

    move v14, v6

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 289
    const/high16 v4, 0x3f80

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 290
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v4, p1

    move v7, v5

    .line 291
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 292
    const/4 v11, 0x0

    move-object/from16 v10, p1

    move v12, v6

    move v13, v5

    move v14, v6

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 295
    .end local v5           #px:F
    .end local v6           #py:F
    :cond_6
    move/from16 v0, v20

    int-to-float v4, v0

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 296
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 298
    if-eqz p5, :cond_7

    .line 299
    const/16 v28, 0x0

    :goto_3
    move-object/from16 v0, v32

    array-length v4, v0

    move/from16 v0, v28

    if-ge v0, v4, :cond_7

    .line 300
    aget-object v4, v32, v28

    iget v0, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v42, v0

    .line 301
    .local v42, x:F
    aget-object v4, v32, v28

    iget v0, v4, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v48, v0

    .line 302
    .local v48, y:F
    sget-object v4, Lcom/android/gallery3d/filtershow/ui/Spline;->mCurveHandle:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v42

    move/from16 v3, v48

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/gallery3d/filtershow/ui/Spline;->drawHandles(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 299
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 305
    .end local v42           #x:F
    .end local v48           #y:F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 306
    return-void
.end method

.method public getAppliedCurve()[F
    .locals 46

    .prologue
    .line 116
    const/16 v40, 0x100

    move/from16 v0, v40

    new-array v7, v0, [F

    .line 117
    .local v7, curve:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Vector;->size()I

    move-result v40

    move/from16 v0, v40

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-object/from16 v18, v0

    .line 118
    .local v18, points:[Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Vector;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v13, v0, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 120
    .local v16, p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    new-instance v40, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v41, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v42, v0

    invoke-direct/range {v40 .. v42}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;-><init>(FF)V

    aput-object v40, v18, v13

    .line 118
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 122
    .end local v16           #p:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->solveSystem([Lcom/android/gallery3d/filtershow/ui/ControlPoint;)[D

    move-result-object v12

    .line 123
    .local v12, derivatives:[D
    const/16 v19, 0x0

    .line 124
    .local v19, start:I
    const/16 v40, 0x0

    aget-object v40, v18, v40

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v40, v0

    const/16 v41, 0x0

    cmpl-float v40, v40, v41

    if-eqz v40, :cond_1

    .line 125
    const/16 v40, 0x0

    aget-object v40, v18, v40

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v40, v0

    const/high16 v41, 0x4380

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v19, v0

    .line 127
    :cond_1
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v13, v0, :cond_2

    .line 128
    const/high16 v40, 0x3f80

    const/16 v41, 0x0

    aget-object v41, v18, v41

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v41, v0

    sub-float v40, v40, v41

    aput v40, v7, v13

    .line 127
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 130
    :cond_2
    move/from16 v13, v19

    :goto_2
    const/16 v40, 0x100

    move/from16 v0, v40

    if-ge v13, v0, :cond_8

    .line 131
    const/4 v6, 0x0

    .line 132
    .local v6, cur:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    const/4 v15, 0x0

    .line 133
    .local v15, next:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    int-to-double v0, v13

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x4070

    div-double v28, v40, v42

    .line 134
    .local v28, x:D
    const/16 v17, 0x0

    .line 135
    .local v17, pivot:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    if-ge v14, v0, :cond_4

    .line 136
    aget-object v40, v18, v14

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    cmpl-double v40, v28, v40

    if-ltz v40, :cond_3

    add-int/lit8 v40, v14, 0x1

    aget-object v40, v18, v40

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    cmpg-double v40, v28, v40

    if-gtz v40, :cond_3

    .line 137
    move/from16 v17, v14

    .line 135
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 140
    :cond_4
    aget-object v6, v18, v17

    .line 141
    add-int/lit8 v40, v17, 0x1

    aget-object v15, v18, v40

    .line 142
    iget v0, v15, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    cmpg-double v40, v28, v40

    if-gtz v40, :cond_7

    .line 143
    iget v0, v6, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v30, v0

    .line 144
    .local v30, x1:D
    iget v0, v15, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v32, v0

    .line 145
    .local v32, x2:D
    iget v0, v6, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v36, v0

    .line 146
    .local v36, y1:D
    iget v0, v15, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v38, v0

    .line 150
    .local v38, y2:D
    sub-double v8, v32, v30

    .line 151
    .local v8, delta:D
    mul-double v10, v8, v8

    .line 152
    .local v10, delta2:D
    sub-double v40, v28, v30

    div-double v4, v40, v8

    .line 153
    .local v4, b:D
    const-wide/high16 v40, 0x3ff0

    sub-double v2, v40, v4

    .line 154
    .local v2, a:D
    mul-double v20, v2, v36

    .line 155
    .local v20, ta:D
    mul-double v22, v4, v38

    .line 156
    .local v22, tb:D
    mul-double v40, v2, v2

    mul-double v40, v40, v2

    sub-double v40, v40, v2

    aget-wide v42, v12, v17

    mul-double v24, v40, v42

    .line 157
    .local v24, tc:D
    mul-double v40, v4, v4

    mul-double v40, v40, v4

    sub-double v40, v40, v4

    add-int/lit8 v42, v17, 0x1

    aget-wide v42, v12, v42

    mul-double v26, v40, v42

    .line 158
    .local v26, td:D
    add-double v40, v20, v22

    const-wide/high16 v42, 0x4018

    div-double v42, v10, v42

    add-double v44, v24, v26

    mul-double v42, v42, v44

    add-double v34, v40, v42

    .line 159
    .local v34, y:D
    const-wide/high16 v40, 0x3ff0

    cmpl-double v40, v34, v40

    if-lez v40, :cond_5

    .line 160
    const-wide/high16 v34, 0x3ff0

    .line 162
    :cond_5
    const-wide/16 v40, 0x0

    cmpg-double v40, v34, v40

    if-gez v40, :cond_6

    .line 163
    const-wide/16 v34, 0x0

    .line 165
    :cond_6
    const-wide/high16 v40, 0x3ff0

    sub-double v40, v40, v34

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    aput v40, v7, v13

    .line 130
    .end local v2           #a:D
    .end local v4           #b:D
    .end local v8           #delta:D
    .end local v10           #delta2:D
    .end local v20           #ta:D
    .end local v22           #tb:D
    .end local v24           #tc:D
    .end local v26           #td:D
    .end local v30           #x1:D
    .end local v32           #x2:D
    .end local v34           #y:D
    .end local v36           #y1:D
    .end local v38           #y2:D
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 167
    :cond_7
    const/high16 v40, 0x3f80

    iget v0, v15, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v41, v0

    sub-float v40, v40, v41

    aput v40, v7, v13

    goto :goto_4

    .line 170
    .end local v6           #cur:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    .end local v14           #j:I
    .end local v15           #next:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    .end local v17           #pivot:I
    .end local v28           #x:D
    :cond_8
    return-object v7
.end method

.method public getNbPoints()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    .locals 1
    .parameter "n"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    return-object v0
.end method

.method public isOriginal()Z
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/Spline;->getNbPoints()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    move v0, v1

    .line 105
    :goto_0
    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 103
    goto :goto_0

    :cond_4
    move v0, v2

    .line 105
    goto :goto_0
.end method

.method public isPointContained(FI)Z
    .locals 4
    .parameter "x"
    .parameter "n"

    .prologue
    const/4 v2, 0x0

    .line 375
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 376
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 377
    .local v1, point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    iget v3, v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    cmpl-float v3, v3, p1

    if-lez v3, :cond_1

    .line 387
    .end local v1           #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_0
    :goto_1
    return v2

    .line 375
    .restart local v1       #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v1           #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_2
    add-int/lit8 v0, p2, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 382
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 383
    .restart local v1       #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    iget v3, v1, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    cmpg-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 387
    .end local v1           #point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public movePoint(IFF)V
    .locals 2
    .parameter "pick"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 87
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 91
    .local v0, point:Lcom/android/gallery3d/filtershow/ui/ControlPoint;
    iput p2, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    .line 92
    iput p3, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    goto :goto_0
.end method

.method solveSystem([Lcom/android/gallery3d/filtershow/ui/ControlPoint;)[D
    .locals 29
    .parameter "points"

    .prologue
    .line 309
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    .line 310
    .local v19, n:I
    const/16 v23, 0x3

    move/from16 v0, v19

    move/from16 v1, v23

    filled-new-array {v0, v1}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[D

    .line 311
    .local v22, system:[[D
    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v20, v0

    .line 312
    .local v20, result:[D
    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 313
    .local v21, solution:[D
    const/16 v23, 0x0

    aget-object v23, v22, v23

    const/16 v24, 0x1

    const-wide/high16 v25, 0x3ff0

    aput-wide v25, v23, v24

    .line 314
    add-int/lit8 v23, v19, -0x1

    aget-object v23, v22, v23

    const/16 v24, 0x1

    const-wide/high16 v25, 0x3ff0

    aput-wide v25, v23, v24

    .line 315
    const-wide v4, 0x3fc5555555555555L

    .line 316
    .local v4, d6:D
    const-wide v2, 0x3fd5555555555555L

    .line 321
    .local v2, d3:D
    const/16 v16, 0x1

    .local v16, i:I
    :goto_0
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 322
    aget-object v23, p1, v16

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v23, v0

    add-int/lit8 v24, v16, -0x1

    aget-object v24, p1, v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v10, v0

    .line 323
    .local v10, deltaPrevX:D
    add-int/lit8 v23, v16, 0x1

    aget-object v23, p1, v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v23, v0

    add-int/lit8 v24, v16, -0x1

    aget-object v24, p1, v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v14, v0

    .line 324
    .local v14, deltaX:D
    add-int/lit8 v23, v16, 0x1

    aget-object v23, p1, v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v23, v0

    aget-object v24, p1, v16

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v6, v0

    .line 325
    .local v6, deltaNextX:D
    add-int/lit8 v23, v16, 0x1

    aget-object v23, p1, v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v23, v0

    aget-object v24, p1, v16

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v8, v0

    .line 326
    .local v8, deltaNextY:D
    aget-object v23, p1, v16

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v23, v0

    add-int/lit8 v24, v16, -0x1

    aget-object v24, p1, v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v12, v0

    .line 327
    .local v12, deltaPrevY:D
    aget-object v23, v22, v16

    const/16 v24, 0x0

    mul-double v25, v4, v10

    aput-wide v25, v23, v24

    .line 328
    aget-object v23, v22, v16

    const/16 v24, 0x1

    mul-double v25, v2, v14

    aput-wide v25, v23, v24

    .line 329
    aget-object v23, v22, v16

    const/16 v24, 0x2

    mul-double v25, v4, v6

    aput-wide v25, v23, v24

    .line 330
    div-double v23, v8, v6

    div-double v25, v12, v10

    sub-double v23, v23, v25

    aput-wide v23, v20, v16

    .line 321
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 334
    .end local v6           #deltaNextX:D
    .end local v8           #deltaNextY:D
    .end local v10           #deltaPrevX:D
    .end local v12           #deltaPrevY:D
    .end local v14           #deltaX:D
    :cond_0
    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 336
    aget-object v23, v22, v16

    const/16 v24, 0x0

    aget-wide v23, v23, v24

    add-int/lit8 v25, v16, -0x1

    aget-object v25, v22, v25

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    div-double v17, v23, v25

    .line 338
    .local v17, m:D
    aget-object v23, v22, v16

    const/16 v24, 0x1

    aget-object v25, v22, v16

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    add-int/lit8 v27, v16, -0x1

    aget-object v27, v22, v27

    const/16 v28, 0x2

    aget-wide v27, v27, v28

    mul-double v27, v27, v17

    sub-double v25, v25, v27

    aput-wide v25, v23, v24

    .line 340
    aget-wide v23, v20, v16

    add-int/lit8 v25, v16, -0x1

    aget-wide v25, v20, v25

    mul-double v25, v25, v17

    sub-double v23, v23, v25

    aput-wide v23, v20, v16

    .line 334
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 344
    .end local v17           #m:D
    :cond_1
    add-int/lit8 v23, v19, -0x1

    add-int/lit8 v24, v19, -0x1

    aget-wide v24, v20, v24

    add-int/lit8 v26, v19, -0x1

    aget-object v26, v22, v26

    const/16 v27, 0x1

    aget-wide v26, v26, v27

    div-double v24, v24, v26

    aput-wide v24, v21, v23

    .line 345
    add-int/lit8 v16, v19, -0x2

    :goto_2
    if-ltz v16, :cond_2

    .line 346
    aget-wide v23, v20, v16

    aget-object v25, v22, v16

    const/16 v26, 0x2

    aget-wide v25, v25, v26

    add-int/lit8 v27, v16, 0x1

    aget-wide v27, v21, v27

    mul-double v25, v25, v27

    sub-double v23, v23, v25

    aget-object v25, v22, v16

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    div-double v23, v23, v25

    aput-wide v23, v21, v16

    .line 345
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .line 348
    :cond_2
    return-object v21
.end method
