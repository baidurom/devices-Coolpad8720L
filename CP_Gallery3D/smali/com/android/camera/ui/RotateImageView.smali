.class public Lcom/android/camera/ui/RotateImageView;
.super Lcom/android/camera/ui/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private final THUMBNAILVIEW:I

.field bgDrawable:Landroid/graphics/drawable/Drawable;

.field cropBitmap:Landroid/graphics/Bitmap;

.field cropDrawable:Landroid/graphics/drawable/Drawable;

.field private flag:I

.field imageResourceBitmap:Landroid/graphics/Bitmap;

.field imgDrawable:Landroid/graphics/drawable/Drawable;

.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private matrix:Landroid/graphics/Matrix;

.field painter:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    .line 57
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 58
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 59
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 61
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 63
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 64
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 66
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->flag:I

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->THUMBNAILVIEW:I

    .line 131
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->matrix:Landroid/graphics/Matrix;

    .line 132
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->path:Landroid/graphics/Path;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 58
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 59
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 61
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 63
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 64
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 66
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->flag:I

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->THUMBNAILVIEW:I

    .line 131
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->matrix:Landroid/graphics/Matrix;

    .line 132
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->path:Landroid/graphics/Path;

    .line 77
    return-void
.end method

.method private initCropImageBitmap(II)V
    .locals 5
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 310
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->flag:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/RotateImageView;->cropDrawable:Landroid/graphics/drawable/Drawable;

    .line 313
    iget-object v1, p0, Lcom/android/camera/ui/RotateImageView;->cropDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 315
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/RotateImageView;->cropBitmap:Landroid/graphics/Bitmap;

    .line 316
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/camera/ui/RotateImageView;->cropBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 317
    .local v0, cropCanvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/camera/ui/RotateImageView;->cropDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 318
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 320
    .end local v0           #cropCanvas:Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDegree()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    return v0
.end method

.method public initThumbnailView()V
    .locals 5

    .prologue
    .line 297
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setFlag(I)V

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 299
    .local v1, param:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 300
    .local v2, w:I
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 301
    .local v0, h:I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->bgDrawable:Landroid/graphics/drawable/Drawable;

    .line 303
    if-lez v2, :cond_0

    if-gtz v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/android/camera/ui/RotateImageView;->initCropImageBitmap(II)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 138
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 142
    .local v4, bounds:Landroid/graphics/Rect;
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v17, v19, v20

    .line 143
    .local v17, w:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 145
    .local v8, h:I
    if-eqz v17, :cond_0

    if-eqz v8, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 149
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v14

    .line 150
    .local v14, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v19, v0

    cmp-long v19, v14, v19

    if-gez v19, :cond_7

    .line 151
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v19, v0

    sub-long v19, v14, v19

    move-wide/from16 v0, v19

    long-to-int v6, v0

    .line 152
    .local v6, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .end local v6           #deltaTime:I
    :goto_1
    mul-int/lit16 v0, v6, 0x10e

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    add-int v5, v19, v20

    .line 154
    .local v5, degree:I
    if-ltz v5, :cond_6

    rem-int/lit16 v5, v5, 0x168

    .line 155
    :goto_2
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 162
    .end local v5           #degree:I
    .end local v14           #time:J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    .line 163
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    .line 164
    .local v16, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    .line 165
    .local v12, right:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 166
    .local v3, bottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v19

    sub-int v19, v19, v10

    sub-int v18, v19, v12

    .line 167
    .local v18, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v19

    sub-int v19, v19, v16

    sub-int v9, v19, v3

    .line 169
    .local v9, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v13

    .line 172
    .local v13, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v19

    sget-object v20, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    if-ge v9, v8, :cond_4

    .line 174
    :cond_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    int-to-float v0, v9

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 175
    .local v11, ratio:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    int-to-float v0, v9

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v11, v11, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 177
    .end local v11           #ratio:F
    :cond_4
    div-int/lit8 v19, v18, 0x2

    add-int v19, v19, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, v9, 0x2

    add-int v20, v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 179
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    neg-int v0, v8

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 152
    .end local v3           #bottom:I
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v12           #right:I
    .end local v13           #saveCount:I
    .end local v16           #top:I
    .end local v18           #width:I
    .restart local v6       #deltaTime:I
    .restart local v14       #time:J
    :cond_5
    neg-int v6, v6

    goto/16 :goto_1

    .line 154
    .end local v6           #deltaTime:I
    .restart local v5       #degree:I
    :cond_6
    rem-int/lit16 v0, v5, 0x168

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v5, v0, 0x168

    goto/16 :goto_2

    .line 158
    .end local v5           #degree:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_3
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 195
    if-nez p1, :cond_1

    .line 196
    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 197
    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 204
    .local v2, param:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 206
    .local v1, miniThumbWidth:I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 208
    .local v0, miniThumbHeight:I
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 209
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 212
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-nez v3, :cond_3

    .line 213
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 214
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 215
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v7

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :goto_1
    invoke-virtual {p0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 218
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 219
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 220
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 227
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->flag:I

    .line 229
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 102
    iput-boolean p2, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 104
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 105
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 129
    :goto_1
    return-void

    .line 104
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 108
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 109
    iget-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz v1, :cond_5

    .line 110
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 111
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 113
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 114
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 119
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 121
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    .line 122
    iget-wide v1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x10e

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 128
    .end local v0           #diff:I
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 114
    .restart local v0       #diff:I
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 121
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 125
    .end local v0           #diff:I
    :cond_5
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    goto :goto_4
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 12
    .parameter "bitmap"
    .parameter "isNeedBackgroud"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 236
    if-nez p1, :cond_1

    .line 237
    iput-object v7, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 238
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    invoke-virtual {p0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 244
    .local v5, param:Landroid/view/ViewGroup$LayoutParams;
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v4, v7, v8

    .line 246
    .local v4, miniThumbWidth:I
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int v3, v7, v8

    .line 248
    .local v3, miniThumbHeight:I
    invoke-static {p1, v4, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 251
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 253
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/android/camera/ui/RotateImageView;->imgDrawable:Landroid/graphics/drawable/Drawable;

    .line 254
    iget v7, p0, Lcom/android/camera/ui/RotateImageView;->flag:I

    if-ne v7, v9, :cond_5

    .line 260
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 261
    .local v6, w:I
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 263
    .local v1, h:I
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->painter:Landroid/graphics/Paint;

    if-nez v7, :cond_2

    .line 264
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/camera/ui/RotateImageView;->painter:Landroid/graphics/Paint;

    .line 266
    :cond_2
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->painter:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 267
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->imageResourceBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_3

    .line 268
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/ui/RotateImageView;->imageResourceBitmap:Landroid/graphics/Bitmap;

    .line 272
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->imageResourceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 273
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->painter:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 274
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    .local v2, imgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v10, v10, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 276
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->cropBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/camera/ui/RotateImageView;->painter:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 279
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->painter:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 281
    if-eqz p2, :cond_4

    .line 282
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->bgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v10, v10, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->bgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 286
    :cond_4
    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->imageResourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #h:I
    .end local v2           #imgDrawable:Landroid/graphics/drawable/Drawable;
    .end local v6           #w:I
    :cond_5
    invoke-virtual {p0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
