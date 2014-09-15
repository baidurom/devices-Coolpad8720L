.class public Lcom/android/camera/ui/GridLine;
.super Landroid/view/View;
.source "GridLine.java"


# instance fields
.field private mPreviewHeight:I

.field private mPreviewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/android/camera/ui/GridLine;->mPreviewWidth:I

    .line 16
    iput v0, p0, Lcom/android/camera/ui/GridLine;->mPreviewHeight:I

    .line 21
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 39
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .local v6, mPaint:Landroid/graphics/Paint;
    const v1, -0x777778

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v15

    .line 43
    .local v15, screenWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v14

    .line 45
    .local v14, screenHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v13

    .line 46
    .local v13, previewWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v12

    .line 48
    .local v12, previewHeight:I
    const/4 v7, 0x0

    .line 49
    .local v7, aspectRatio:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/ui/GridLine;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/GridLine;->mPreviewHeight:I

    if-le v1, v2, :cond_0

    .line 50
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/ui/GridLine;->mPreviewWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/GridLine;->mPreviewHeight:I

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 54
    :goto_0
    if-le v15, v14, :cond_1

    .line 55
    int-to-float v1, v12

    mul-float/2addr v1, v7

    float-to-int v13, v1

    .line 62
    :goto_1
    div-int/lit8 v1, v13, 0x3

    add-int/lit8 v11, v1, 0x1

    .line 63
    .local v11, length:I
    div-int/lit8 v1, v12, 0x3

    add-int/lit8 v8, v1, 0x1

    .line 64
    .local v8, bound:I
    sub-int v1, v15, v13

    div-int/lit8 v17, v1, 0x2

    .line 65
    .local v17, startWidth:I
    sub-int v1, v14, v12

    div-int/lit8 v16, v1, 0x2

    .line 67
    .local v16, startHeight:I
    const/4 v9, 0x1

    .local v9, i:I
    :goto_2
    const/4 v1, 0x3

    if-ge v9, v1, :cond_3

    .line 68
    const/4 v10, 0x1

    .local v10, j:I
    :goto_3
    const/4 v1, 0x3

    if-ge v10, v1, :cond_2

    .line 69
    mul-int v1, v10, v11

    add-int v1, v1, v17

    int-to-float v2, v1

    move/from16 v0, v16

    int-to-float v3, v0

    mul-int v1, v10, v11

    add-int v1, v1, v17

    int-to-float v4, v1

    add-int v1, v16, v12

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    move/from16 v0, v17

    int-to-float v2, v0

    mul-int v1, v9, v8

    add-int v1, v1, v16

    int-to-float v3, v1

    add-int v1, v17, v13

    int-to-float v4, v1

    mul-int v1, v9, v8

    add-int v1, v1, v16

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 52
    .end local v8           #bound:I
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v11           #length:I
    .end local v16           #startHeight:I
    .end local v17           #startWidth:I
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/ui/GridLine;->mPreviewHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/GridLine;->mPreviewWidth:I

    int-to-float v2, v2

    div-float v7, v1, v2

    goto :goto_0

    .line 58
    :cond_1
    int-to-float v1, v13

    mul-float/2addr v1, v7

    float-to-int v12, v1

    .line 59
    goto :goto_1

    .line 67
    .restart local v8       #bound:I
    .restart local v9       #i:I
    .restart local v10       #j:I
    .restart local v11       #length:I
    .restart local v16       #startHeight:I
    .restart local v17       #startWidth:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 73
    .end local v10           #j:I
    :cond_3
    return-void
.end method

.method public setPreviewParameters(II)V
    .locals 2
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 26
    iput p1, p0, Lcom/android/camera/ui/GridLine;->mPreviewHeight:I

    .line 27
    iput p2, p0, Lcom/android/camera/ui/GridLine;->mPreviewWidth:I

    .line 32
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 33
    return-void

    .line 29
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/GridLine;->mPreviewWidth:I

    .line 30
    iput p2, p0, Lcom/android/camera/ui/GridLine;->mPreviewHeight:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/ui/GridLine;->mPreviewHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GridLine;->mPreviewWidth:I

    if-nez v0, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
