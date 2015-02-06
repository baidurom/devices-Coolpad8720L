.class public Lcom/android/internal/policy/impl/keyguard/UnlockObject;
.super Landroid/view/View;
.source "UnlockObject.java"


# static fields
.field public static mSize:I


# instance fields
.field private mActive:Landroid/graphics/Bitmap;

.field public mMoveIn:Z

.field private mNormal:Landroid/graphics/Bitmap;

.field private mNumber:Landroid/graphics/Bitmap;

.field private mOffsetX:I

.field private mOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x144

    sput v0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 3
    .parameter "context"
    .parameter "normalRes"
    .parameter "activeRes"
    .parameter "number"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mNormal:Landroid/graphics/Bitmap;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mActive:Landroid/graphics/Bitmap;

    .line 30
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->getNumTip(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mNumber:Landroid/graphics/Bitmap;

    .line 32
    sget v0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x4000

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mOffsetX:I

    .line 33
    sget v0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mSize:I

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x41a0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mOffsetY:I

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mMoveIn:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mActive:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mNumber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mOffsetX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mOffsetY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 56
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mNormal:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getNumTip(I)Landroid/graphics/Bitmap;
    .locals 26
    .parameter "num"

    .prologue
    .line 59
    const/4 v14, 0x0

    .line 61
    .local v14, mTipBubble:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x108065b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    check-cast v22, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 64
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 65
    .local v18, tipWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 66
    .local v17, tipHeight:I
    const/16 v7, 0x1b

    .line 67
    .local v7, TIP_NUM_SIZE:I
    const/16 v6, 0xe

    .line 68
    .local v6, TIP_EDGE_WIDTH:I
    const/4 v8, -0x5

    .line 69
    .local v8, WIDTH_DX:I
    const/4 v5, -0x3

    .line 70
    .local v5, HEIGHT_DY:I
    const/4 v9, 0x0

    .line 71
    .local v9, bitmap:Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 72
    .local v19, unReadNumStr:Ljava/lang/String;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .local v15, paint:Landroid/graphics/Paint;
    int-to-float v0, v7

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    const/16 v22, 0xff

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    sget-object v22, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 78
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 79
    .local v10, bounds:Landroid/graphics/Rect;
    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 81
    move/from16 v16, v6

    .line 82
    .local v16, tipEdgeWidth:I
    move/from16 v21, v8

    .line 83
    .local v21, widthDx:I
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v22, v22, 0x1c

    add-int/lit8 v20, v22, -0x5

    .line 86
    .local v20, width:I
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 87
    move/from16 v20, v18

    .line 90
    :cond_0
    move/from16 v12, v17

    .line 91
    .local v12, height:I
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 93
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    .local v11, canvas:Landroid/graphics/Canvas;
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/Rect;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v14, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 100
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    add-int/lit8 v24, v18, -0xe

    move-object/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/Rect;

    const/16 v24, 0x0

    add-int/lit8 v25, v20, -0xe

    move-object/from16 v0, v23

    move/from16 v1, v16

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v14, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 104
    new-instance v22, Landroid/graphics/Rect;

    add-int/lit8 v23, v18, -0xe

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v18

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/Rect;

    add-int/lit8 v24, v20, -0xe

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v14, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 108
    move v13, v5

    .line 109
    .local v13, heithDy:I
    const/high16 v22, -0x100

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    div-int/lit8 v22, v20, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    add-int/lit8 v23, v23, 0x1

    add-int v23, v23, v12

    div-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, -0x3

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 114
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    div-int/lit8 v22, v20, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    add-int/lit8 v23, v23, 0x1

    add-int v23, v23, v12

    div-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, -0x3

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 118
    return-object v9
.end method

.method public onMoveIn()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mMoveIn:Z

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 39
    return-void
.end method

.method public onMoveOut()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockObject;->mMoveIn:Z

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 44
    return-void
.end method
