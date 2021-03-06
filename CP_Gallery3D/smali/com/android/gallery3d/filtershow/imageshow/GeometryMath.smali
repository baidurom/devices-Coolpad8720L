.class public Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;
.super Ljava/lang/Object;
.source "GeometryMath.java"


# direct methods
.method public static clamp(FFF)F
    .locals 1
    .parameter "i"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 25
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static dotProduct([F[F)F
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    aget v0, p0, v1

    aget v1, p1, v1

    mul-float/2addr v0, v1

    aget v1, p0, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static normalize([F)[F
    .locals 7
    .parameter "a"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    aget v2, p0, v5

    aget v3, p0, v5

    mul-float/2addr v2, v3

    aget v3, p0, v6

    aget v4, p0, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 53
    .local v1, length:F
    const/4 v2, 0x2

    new-array v0, v2, [F

    aget v2, p0, v5

    div-float/2addr v2, v1

    aput v2, v0, v5

    aget v2, p0, v6

    div-float/2addr v2, v1

    aput v2, v0, v6

    .line 54
    .local v0, b:[F
    return-object v0
.end method

.method public static scalarProjection([F[F)F
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    aget v1, p1, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, p1, v3

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 60
    .local v0, length:F
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->dotProduct([F[F)F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static scale(FFFF)F
    .locals 2
    .parameter "oldWidth"
    .parameter "oldHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v1, 0x0

    .line 97
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    .line 98
    :cond_0
    const/high16 v0, 0x3f80

    .line 99
    :goto_0
    return v0

    :cond_1
    div-float v0, p2, p0

    div-float v1, p3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public static scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 5
    .parameter "r"
    .parameter "scale"

    .prologue
    .line 77
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p1

    iget v3, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, p1

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method
