.class public Lcom/android/camera/ui/FilterImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "FilterImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FilterImageView$MergeThread;,
        Lcom/android/camera/ui/FilterImageView$OnFaceEffectListener;,
        Lcom/android/camera/ui/FilterImageView$EffectIconStatus;
    }
.end annotation


# instance fields
.field bgPressDrawable:Landroid/graphics/drawable/Drawable;

.field bgPressRect:Landroid/graphics/Rect;

.field bgPressingDrawable:Landroid/graphics/drawable/Drawable;

.field private canSelected:Z

.field cropBitmap:Landroid/graphics/Bitmap;

.field height:I

.field private iconHightlight:I

.field private iconNormal:I

.field private iconPressedHightlight:I

.field private isChanged:Z

.field private isRecycled:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field mCurText:Ljava/lang/String;

.field private mEffectIconStatus:Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

.field private mFaceEffectListener:Lcom/android/camera/ui/FilterImageView$OnFaceEffectListener;

.field private mLock:Ljava/lang/Object;

.field private mMergeThread:Lcom/android/camera/ui/FilterImageView$MergeThread;

.field public mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private nBmBgHeight:I

.field private nBmBgWidth:I

.field private nBmHeight:I

.field private nBmWidth:I

.field nCurBgResId:I

.field nCurResId:I

.field private nItemIndex:I

.field private nTextBgColor:I

.field private nTextBgHeight:I

.field private nTextColor:I

.field private nTextSize:I

.field nViewHeight:I

.field nViewWidth:I

.field private parent:Landroid/view/View;

.field private refreshHandler:Landroid/os/Handler;

.field textDrawable:Landroid/graphics/drawable/Drawable;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/FilterImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v1, p0, Lcom/android/camera/ui/FilterImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 37
    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->nBmWidth:I

    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->nBmHeight:I

    .line 38
    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->nBmBgWidth:I

    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->nBmBgHeight:I

    .line 46
    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->nItemIndex:I

    .line 47
    iput-boolean v2, p0, Lcom/android/camera/ui/FilterImageView;->isChanged:Z

    .line 48
    const v0, 0x7f02003b

    iput v0, p0, Lcom/android/camera/ui/FilterImageView;->iconNormal:I

    .line 49
    const v0, 0x7f020087

    iput v0, p0, Lcom/android/camera/ui/FilterImageView;->iconPressedHightlight:I

    .line 50
    const v0, 0x7f020051

    iput v0, p0, Lcom/android/camera/ui/FilterImageView;->iconHightlight:I

    .line 51
    sget-object v0, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;->Status_Normal:Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    iput-object v0, p0, Lcom/android/camera/ui/FilterImageView;->mEffectIconStatus:Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    .line 59
    iput-object v1, p0, Lcom/android/camera/ui/FilterImageView;->bgPressRect:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Lcom/android/camera/ui/FilterImageView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/FilterImageView$1;-><init>(Lcom/android/camera/ui/FilterImageView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/FilterImageView;->refreshHandler:Landroid/os/Handler;

    .line 90
    iput-boolean v2, p0, Lcom/android/camera/ui/FilterImageView;->isRecycled:Z

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FilterImageView;->canSelected:Z

    .line 435
    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->mOrientation:I

    .line 472
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FilterImageView;->mLock:Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lcom/android/camera/ui/FilterImageView;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/android/camera/ui/FilterImageView;->initView()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FilterImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/FilterImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FilterImageView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/FilterImageView;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/FilterImageView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/FilterImageView;->refreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dp2px(I)I
    .locals 2
    .parameter "num"

    .prologue
    .line 156
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/16 v4, 0x54

    const/4 v5, 0x0

    .line 116
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/ui/FilterImageView;->mPaint:Landroid/graphics/Paint;

    .line 117
    iget-object v2, p0, Lcom/android/camera/ui/FilterImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FilterImageView;->dp2px(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->nTextSize:I

    .line 119
    const/high16 v2, 0x5a00

    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->nTextBgColor:I

    .line 120
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->nTextColor:I

    .line 121
    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FilterImageView;->dp2px(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->nTextBgHeight:I

    .line 122
    iget-object v2, p0, Lcom/android/camera/ui/FilterImageView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/ui/FilterImageView;->nTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v2, p0, Lcom/android/camera/ui/FilterImageView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/ui/FilterImageView;->nTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    iget v2, p0, Lcom/android/camera/ui/FilterImageView;->iconNormal:I

    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->nCurBgResId:I

    .line 126
    const v2, 0x7f02003a

    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->nCurResId:I

    .line 128
    invoke-direct {p0, v4}, Lcom/android/camera/ui/FilterImageView;->dp2px(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->width:I

    .line 129
    invoke-direct {p0, v4}, Lcom/android/camera/ui/FilterImageView;->dp2px(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FilterImageView;->height:I

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 133
    .local v1, cropDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/camera/ui/FilterImageView;->width:I

    iget v4, p0, Lcom/android/camera/ui/FilterImageView;->height:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 134
    iget v2, p0, Lcom/android/camera/ui/FilterImageView;->width:I

    iget v3, p0, Lcom/android/camera/ui/FilterImageView;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FilterImageView;->cropBitmap:Landroid/graphics/Bitmap;

    .line 135
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/camera/ui/FilterImageView;->cropBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    .local v0, cropCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FilterImageView;->textDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    return-void
.end method


# virtual methods
.method public clearcanvas(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 410
    if-eqz p1, :cond_0

    .line 411
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 412
    .local v0, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 413
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 417
    .end local v0           #paint:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public drawableLayerMerge()V
    .locals 32

    .prologue
    .line 172
    const/4 v11, 0x0

    .local v11, bmStartX:I
    const/4 v12, 0x0

    .line 173
    .local v12, bmStartY:I
    const/16 v23, 0x0

    .local v23, tStartX:I
    const/16 v24, 0x0

    .line 174
    .local v24, tStartY:I
    const/16 v26, 0x0

    .local v26, textWidth:I
    const/16 v25, 0x0

    .line 175
    .local v25, textHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->mCurText:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->mCurText:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Paint;->descent()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Paint;->ascent()F

    move-result v28

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 183
    :cond_0
    const/4 v9, 0x0

    .line 185
    .local v9, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->nCurResId:I

    move/from16 v27, v0

    if-nez v27, :cond_3

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->nCurResId:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 190
    :goto_0
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 191
    .local v13, bmWidth:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 192
    .local v10, bmHeight:I
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 193
    .local v19, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    mul-float v27, v27, v28

    int-to-float v0, v13

    move/from16 v28, v0

    div-float v20, v27, v28

    .line 194
    .local v20, scaleX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    mul-float v27, v27, v28

    int-to-float v0, v10

    move/from16 v28, v0

    div-float v21, v27, v28

    .line 195
    .local v21, scaleY:F
    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 197
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/ui/FilterImageView;->width:I

    .line 198
    .local v8, bgWidth:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/FilterImageView;->height:I

    .line 199
    .local v6, bgHeight:I
    int-to-float v0, v8

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    mul-float v27, v27, v28

    const/16 v28, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/camera/ui/FilterImageView;->dp2px(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v20, v27, v28

    .line 200
    int-to-float v0, v6

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    mul-float v27, v27, v28

    const/16 v28, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/camera/ui/FilterImageView;->dp2px(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v21, v27, v28

    .line 201
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 202
    .local v7, bgMatrix:Landroid/graphics/Matrix;
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 203
    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v27

    invoke-static {v8, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/FilterImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 204
    new-instance v14, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 205
    .local v14, canvas:Landroid/graphics/Canvas;
    int-to-float v0, v12

    move/from16 v27, v0

    int-to-float v0, v12

    move/from16 v28, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->width:I

    move/from16 v27, v0

    sub-int v27, v27, v26

    div-int/lit8 v22, v27, 0x2

    .line 207
    .local v22, startX:I
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/camera/ui/FilterImageView;->nViewWidth:I

    .line 208
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/camera/ui/FilterImageView;->nViewHeight:I

    .line 210
    const/4 v5, 0x0

    .line 212
    .local v5, bgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->iconNormal:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 214
    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->width:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->height:I

    move/from16 v31, v0

    invoke-direct/range {v27 .. v31}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 215
    invoke-virtual {v5, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->nCurResId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 232
    .local v18, imageDrawable:Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->width:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->height:I

    move/from16 v30, v0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->width:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->height:I

    move/from16 v28, v0

    sget-object v29, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v27 .. v29}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 235
    .local v16, imageBitmap:Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .local v17, imageCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 237
    new-instance v15, Landroid/graphics/Paint;

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-direct {v15, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 240
    .local v15, cropPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->mCurText:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->textDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    new-instance v28, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->height:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->nTextBgHeight:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->width:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->height:I

    move/from16 v31, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->textDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->mCurText:Ljava/lang/String;

    move-object/from16 v27, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->height:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->nTextBgHeight:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 249
    :cond_1
    new-instance v27, Landroid/graphics/PorterDuffXfermode;

    sget-object v28, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v27 .. v28}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->cropBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 251
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FilterImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 253
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v27

    if-nez v27, :cond_2

    .line 254
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    const/16 v16, 0x0

    .line 262
    :cond_2
    return-void

    .line 188
    .end local v5           #bgDrawable:Landroid/graphics/drawable/Drawable;
    .end local v6           #bgHeight:I
    .end local v7           #bgMatrix:Landroid/graphics/Matrix;
    .end local v8           #bgWidth:I
    .end local v10           #bmHeight:I
    .end local v13           #bmWidth:I
    .end local v14           #canvas:Landroid/graphics/Canvas;
    .end local v15           #cropPaint:Landroid/graphics/Paint;
    .end local v16           #imageBitmap:Landroid/graphics/Bitmap;
    .end local v17           #imageCanvas:Landroid/graphics/Canvas;
    .end local v18           #imageDrawable:Landroid/graphics/drawable/Drawable;
    .end local v19           #matrix:Landroid/graphics/Matrix;
    .end local v20           #scaleX:F
    .end local v21           #scaleY:F
    .end local v22           #startX:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FilterImageView;->nCurResId:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public getItemIndex()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/android/camera/ui/FilterImageView;->nItemIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 339
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/ui/FilterImageView;->clearcanvas(Landroid/graphics/Canvas;)V

    .line 340
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FilterImageView;->nCurBgResId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilterImageView;->iconNormal:I

    if-ne v14, v15, :cond_0

    .line 341
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/ui/FilterImageView;->isChanged:Z

    .line 344
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0024

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 347
    .local v1, IndicatorColor:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 348
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_2

    .line 405
    :cond_1
    :goto_0
    return-void

    .line 351
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 352
    .local v3, bounds:Landroid/graphics/Rect;
    iget v14, v3, Landroid/graphics/Rect;->right:I

    iget v15, v3, Landroid/graphics/Rect;->left:I

    sub-int v12, v14, v15

    .line 353
    .local v12, w:I
    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    iget v15, v3, Landroid/graphics/Rect;->top:I

    sub-int v5, v14, v15

    .line 355
    .local v5, h:I
    if-eqz v12, :cond_1

    if-eqz v5, :cond_1

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 359
    .local v7, left:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    .line 360
    .local v11, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    .line 361
    .local v9, right:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 362
    .local v2, bottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v7

    sub-int v13, v14, v9

    .line 363
    .local v13, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v14, v11

    sub-int v6, v14, v2

    .line 365
    .local v6, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v10

    .line 368
    .local v10, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v14

    sget-object v15, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_4

    if-lt v13, v12, :cond_3

    if-ge v6, v5, :cond_4

    .line 370
    :cond_3
    int-to-float v14, v13

    int-to-float v15, v12

    div-float/2addr v14, v15

    int-to-float v15, v6

    int-to-float v0, v5

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 371
    .local v8, ratio:F
    int-to-float v14, v13

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    int-to-float v15, v6

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v8, v14, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 373
    .end local v8           #ratio:F
    :cond_4
    div-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v7

    int-to-float v14, v14

    div-int/lit8 v15, v6, 0x2

    add-int/2addr v15, v11

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 374
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FilterImageView;->mOrientation:I

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->rotate(F)V

    .line 375
    neg-int v14, v12

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    neg-int v15, v5

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 376
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 377
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/ui/FilterImageView;->isChanged:Z

    if-eqz v14, :cond_1

    .line 378
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilterImageView;->bgPressRect:Landroid/graphics/Rect;

    if-nez v14, :cond_5

    .line 379
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v15, v0, v13, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/ui/FilterImageView;->bgPressRect:Landroid/graphics/Rect;

    .line 383
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FilterImageView;->nCurBgResId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilterImageView;->iconHightlight:I

    if-ne v14, v15, :cond_7

    .line 384
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilterImageView;->bgPressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_6

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilterImageView;->nCurBgResId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/ui/FilterImageView;->bgPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 386
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilterImageView;->bgPressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/ui/FilterImageView;->bgPressRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilterImageView;->bgPressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 389
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FilterImageView;->nCurBgResId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilterImageView;->iconPressedHightlight:I

    if-ne v14, v15, :cond_1

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilterImageView;->bgPressingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_8

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FilterImageView;->nCurBgResId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/ui/FilterImageView;->bgPressingDrawable:Landroid/graphics/drawable/Drawable;

    .line 393
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilterImageView;->bgPressingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/ui/FilterImageView;->bgPressRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FilterImageView;->bgPressingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 469
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 470
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 290
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 291
    iget v0, p0, Lcom/android/camera/ui/FilterImageView;->nViewWidth:I

    iget v1, p0, Lcom/android/camera/ui/FilterImageView;->nViewHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 292
    return-void
.end method

.method public setEffectViewSelected(Z)V
    .locals 0
    .parameter "isSelected"

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 425
    return-void
.end method

.method public setFocused(Z)V
    .locals 1
    .parameter "focused"

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 312
    iget v0, p0, Lcom/android/camera/ui/FilterImageView;->iconPressedHightlight:I

    iput v0, p0, Lcom/android/camera/ui/FilterImageView;->nCurBgResId:I

    .line 319
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FilterImageView;->isChanged:Z

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 321
    return-void

    .line 315
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FilterImageView;->iconNormal:I

    iput v0, p0, Lcom/android/camera/ui/FilterImageView;->nCurBgResId:I

    goto :goto_0
.end method

.method public setFocusing(Z)V
    .locals 1
    .parameter "focused"

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget v0, p0, Lcom/android/camera/ui/FilterImageView;->iconHightlight:I

    iput v0, p0, Lcom/android/camera/ui/FilterImageView;->nCurBgResId:I

    .line 151
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FilterImageView;->isChanged:Z

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 153
    return-void

    .line 147
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FilterImageView;->iconNormal:I

    iput v0, p0, Lcom/android/camera/ui/FilterImageView;->nCurBgResId:I

    goto :goto_0
.end method

.method public setImageViewRes(I)V
    .locals 0
    .parameter "imageResourceID"

    .prologue
    .line 284
    iput p1, p0, Lcom/android/camera/ui/FilterImageView;->nCurResId:I

    .line 285
    invoke-virtual {p0}, Lcom/android/camera/ui/FilterImageView;->drawableLayerMerge()V

    .line 286
    return-void
.end method

.method public setItemIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 428
    iput p1, p0, Lcom/android/camera/ui/FilterImageView;->nItemIndex:I

    .line 429
    return-void
.end method

.method public setOnFaceEffectListener(Lcom/android/camera/ui/FilterImageView$OnFaceEffectListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/camera/ui/FilterImageView;->mFaceEffectListener:Lcom/android/camera/ui/FilterImageView$OnFaceEffectListener;

    .line 77
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 440
    iput p1, p0, Lcom/android/camera/ui/FilterImageView;->mOrientation:I

    .line 441
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 442
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 444
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/ui/FilterImageView;->parent:Landroid/view/View;

    .line 88
    return-void
.end method

.method public setResource(ILjava/lang/String;)V
    .locals 2
    .parameter "imResourceId"
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 324
    iget v0, p0, Lcom/android/camera/ui/FilterImageView;->nCurResId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FilterImageView;->mCurText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/FilterImageView;->nCurResId:I

    .line 327
    iput-object p2, p0, Lcom/android/camera/ui/FilterImageView;->mCurText:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/android/camera/ui/FilterImageView;->mMergeThread:Lcom/android/camera/ui/FilterImageView$MergeThread;

    if-eqz v0, :cond_2

    .line 329
    iput-object v1, p0, Lcom/android/camera/ui/FilterImageView;->mMergeThread:Lcom/android/camera/ui/FilterImageView$MergeThread;

    .line 331
    :cond_2
    new-instance v0, Lcom/android/camera/ui/FilterImageView$MergeThread;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/FilterImageView$MergeThread;-><init>(Lcom/android/camera/ui/FilterImageView;Lcom/android/camera/ui/FilterImageView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/FilterImageView;->mMergeThread:Lcom/android/camera/ui/FilterImageView$MergeThread;

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/FilterImageView;->mMergeThread:Lcom/android/camera/ui/FilterImageView$MergeThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setText(I)V
    .locals 1
    .parameter "textResourceId"

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FilterImageView;->mCurText:Ljava/lang/String;

    .line 270
    invoke-virtual {p0}, Lcom/android/camera/ui/FilterImageView;->drawableLayerMerge()V

    .line 271
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "textStr"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/camera/ui/FilterImageView;->mCurText:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 266
    return-void
.end method

.method public setbackgroudRes(I)V
    .locals 0
    .parameter "bgResourceID"

    .prologue
    .line 279
    iput p1, p0, Lcom/android/camera/ui/FilterImageView;->nCurBgResId:I

    .line 280
    invoke-virtual {p0}, Lcom/android/camera/ui/FilterImageView;->drawableLayerMerge()V

    .line 281
    return-void
.end method
