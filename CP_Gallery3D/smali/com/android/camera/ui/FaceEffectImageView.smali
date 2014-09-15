.class public Lcom/android/camera/ui/FaceEffectImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "FaceEffectImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;,
        Lcom/android/camera/ui/FaceEffectImageView$EffectIconStatus;
    }
.end annotation


# instance fields
.field private final MSG_TIMEOUT_ACTION:I

.field private MSG_TIMEOUT_DURATION:I

.field bgPressDrawable:Landroid/graphics/drawable/Drawable;

.field bgPressRect:Landroid/graphics/Rect;

.field bgPressingDrawable:Landroid/graphics/drawable/Drawable;

.field private canSelected:Z

.field cropBitmap:Landroid/graphics/Bitmap;

.field private focused:Z

.field height:I

.field private iconHightlight:I

.field private iconNormal:I

.field private iconPressedHightlight:I

.field private isChanged:Z

.field private isRecycled:Z

.field private isTimeOut:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field mCurText:Ljava/lang/String;

.field private mEffectIconStatus:Lcom/android/camera/ui/FaceEffectImageView$EffectIconStatus;

.field private mFaceEffectListener:Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;

.field private mHandler:Landroid/os/Handler;

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

.field textDrawable:Landroid/graphics/drawable/Drawable;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/FaceEffectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x7d0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v3, p0, Lcom/android/camera/ui/FaceEffectImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 43
    iput v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->nBmWidth:I

    iput v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->nBmHeight:I

    .line 44
    iput v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->nBmBgWidth:I

    iput v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->nBmBgHeight:I

    .line 45
    iput-boolean v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->focused:Z

    .line 53
    iput v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->nItemIndex:I

    .line 54
    iput-boolean v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->isChanged:Z

    .line 55
    const v0, 0x7f02003b

    iput v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->iconNormal:I

    .line 56
    const v0, 0x7f020087

    iput v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->iconPressedHightlight:I

    .line 57
    const v0, 0x7f020051

    iput v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->iconHightlight:I

    .line 58
    sget-object v0, Lcom/android/camera/ui/FaceEffectImageView$EffectIconStatus;->Status_Normal:Lcom/android/camera/ui/FaceEffectImageView$EffectIconStatus;

    iput-object v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->mEffectIconStatus:Lcom/android/camera/ui/FaceEffectImageView$EffectIconStatus;

    .line 66
    iput-object v3, p0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressRect:Landroid/graphics/Rect;

    .line 85
    iput-boolean v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->isRecycled:Z

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->canSelected:Z

    .line 443
    iput v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->mOrientation:I

    .line 513
    iput v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->MSG_TIMEOUT_ACTION:I

    .line 514
    iput v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->MSG_TIMEOUT_DURATION:I

    .line 515
    iput-boolean v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->isTimeOut:Z

    .line 516
    new-instance v0, Lcom/android/camera/ui/FaceEffectImageView$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/FaceEffectImageView$2;-><init>(Lcom/android/camera/ui/FaceEffectImageView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/android/camera/ui/FaceEffectImageView;->mContext:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/android/camera/ui/FaceEffectImageView;->initView()V

    .line 108
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/FaceEffectImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceEffectImageView;->isTimeOut:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FaceEffectImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/camera/ui/FaceEffectImageView;->doTimeOutActionUp()V

    return-void
.end method

.method private doTimeOutActionUp()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 546
    .local v0, downTime:J
    const-wide/16 v6, 0x64

    add-long v2, v0, v6

    .line 547
    .local v2, eventTime:J
    const/4 v4, 0x1

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 549
    .local v8, upEvent:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 550
    return-void
.end method

.method private dp2px(I)I
    .locals 2
    .parameter "num"

    .prologue
    .line 138
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
    const/4 v5, 0x0

    .line 111
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->mPaint:Landroid/graphics/Paint;

    .line 112
    iget-object v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FaceEffectImageView;->dp2px(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->nTextSize:I

    .line 114
    const/high16 v2, 0x5a00

    iput v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->nTextBgColor:I

    .line 115
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->nTextColor:I

    .line 116
    const/16 v2, 0x1a

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FaceEffectImageView;->dp2px(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->nTextBgHeight:I

    .line 117
    iget-object v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/ui/FaceEffectImageView;->nTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/ui/FaceEffectImageView;->nTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 120
    iget v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->iconNormal:I

    iput v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->nCurBgResId:I

    .line 121
    const v2, 0x7f02003a

    iput v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->nCurResId:I

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->width:I

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->height:I

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    .local v1, cropDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/camera/ui/FaceEffectImageView;->width:I

    iget v4, p0, Lcom/android/camera/ui/FaceEffectImageView;->height:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 129
    iget v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->width:I

    iget v3, p0, Lcom/android/camera/ui/FaceEffectImageView;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->cropBitmap:Landroid/graphics/Bitmap;

    .line 130
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->cropBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v0, cropCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->textDrawable:Landroid/graphics/drawable/Drawable;

    .line 134
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method


# virtual methods
.method public drawableLayerMerge()V
    .locals 32

    .prologue
    .line 153
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    const/4 v11, 0x0

    .local v11, bmStartX:I
    const/4 v12, 0x0

    .line 156
    .local v12, bmStartY:I
    const/16 v23, 0x0

    .local v23, tStartX:I
    const/16 v24, 0x0

    .line 157
    .local v24, tStartY:I
    const/16 v26, 0x0

    .local v26, textWidth:I
    const/16 v25, 0x0

    .line 158
    .local v25, textHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->mCurText:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->mCurText:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Paint;->descent()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Paint;->ascent()F

    move-result v28

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 166
    :cond_0
    const/4 v9, 0x0

    .line 168
    .local v9, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->nCurResId:I

    move/from16 v27, v0

    if-nez v27, :cond_3

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->nCurResId:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 173
    :goto_0
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 174
    .local v13, bmWidth:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 175
    .local v10, bmHeight:I
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 176
    .local v19, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    mul-float v27, v27, v28

    int-to-float v0, v13

    move/from16 v28, v0

    div-float v20, v27, v28

    .line 177
    .local v20, scaleX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    mul-float v27, v27, v28

    int-to-float v0, v10

    move/from16 v28, v0

    div-float v21, v27, v28

    .line 178
    .local v21, scaleY:F
    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 180
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/ui/FaceEffectImageView;->width:I

    .line 181
    .local v8, bgWidth:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/FaceEffectImageView;->height:I

    .line 182
    .local v6, bgHeight:I
    int-to-float v0, v8

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    mul-float v27, v27, v28

    const/16 v28, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/camera/ui/FaceEffectImageView;->dp2px(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v20, v27, v28

    .line 183
    int-to-float v0, v6

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    mul-float v27, v27, v28

    const/16 v28, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/camera/ui/FaceEffectImageView;->dp2px(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v21, v27, v28

    .line 184
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 185
    .local v7, bgMatrix:Landroid/graphics/Matrix;
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 186
    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v27

    invoke-static {v8, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/FaceEffectImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 187
    new-instance v14, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    .local v14, canvas:Landroid/graphics/Canvas;
    int-to-float v0, v12

    move/from16 v27, v0

    int-to-float v0, v12

    move/from16 v28, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->width:I

    move/from16 v27, v0

    sub-int v27, v27, v26

    div-int/lit8 v22, v27, 0x2

    .line 190
    .local v22, startX:I
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/camera/ui/FaceEffectImageView;->nViewWidth:I

    .line 191
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/camera/ui/FaceEffectImageView;->nViewHeight:I

    .line 193
    const/4 v5, 0x0

    .line 195
    .local v5, bgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->iconNormal:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 197
    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->width:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->height:I

    move/from16 v31, v0

    invoke-direct/range {v27 .. v31}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 198
    invoke-virtual {v5, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->nCurResId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 215
    .local v18, imageDrawable:Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->width:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->height:I

    move/from16 v30, v0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->width:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->height:I

    move/from16 v28, v0

    sget-object v29, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v27 .. v29}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 218
    .local v16, imageBitmap:Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    .local v17, imageCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 220
    new-instance v15, Landroid/graphics/Paint;

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-direct {v15, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 223
    .local v15, cropPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->mCurText:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->textDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    new-instance v28, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->height:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->nTextBgHeight:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->width:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->height:I

    move/from16 v31, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->textDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->mCurText:Ljava/lang/String;

    move-object/from16 v27, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->height:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->nTextBgHeight:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 231
    :cond_1
    new-instance v27, Landroid/graphics/PorterDuffXfermode;

    sget-object v28, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v27 .. v28}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->cropBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 233
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 235
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v27

    if-nez v27, :cond_2

    .line 236
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    const/16 v16, 0x0

    .line 239
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    return-void

    .line 171
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

    iget v0, v0, Lcom/android/camera/ui/FaceEffectImageView;->nCurResId:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public getFocusedState()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->focused:Z

    return v0
.end method

.method public getItemIndex()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->nItemIndex:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->mFaceEffectListener:Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->mFaceEffectListener:Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;->onClick(Landroid/view/View;)V

    .line 439
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FaceEffectImageView;->setFocusing(Z)V

    .line 440
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FaceEffectImageView;->setFocused(Z)V

    .line 441
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0024

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 343
    .local v1, IndicatorColor:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 344
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 348
    .local v3, bounds:Landroid/graphics/Rect;
    iget v14, v3, Landroid/graphics/Rect;->right:I

    iget v15, v3, Landroid/graphics/Rect;->left:I

    sub-int v12, v14, v15

    .line 349
    .local v12, w:I
    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    iget v15, v3, Landroid/graphics/Rect;->top:I

    sub-int v5, v14, v15

    .line 351
    .local v5, h:I
    if-eqz v12, :cond_0

    if-eqz v5, :cond_0

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 355
    .local v7, left:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    .line 356
    .local v11, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    .line 357
    .local v9, right:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 358
    .local v2, bottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v7

    sub-int v13, v14, v9

    .line 359
    .local v13, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v14, v11

    sub-int v6, v14, v2

    .line 361
    .local v6, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v10

    .line 364
    .local v10, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v14

    sget-object v15, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_3

    if-lt v13, v12, :cond_2

    if-ge v6, v5, :cond_3

    .line 366
    :cond_2
    int-to-float v14, v13

    int-to-float v15, v12

    div-float/2addr v14, v15

    int-to-float v15, v6

    int-to-float v0, v5

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 367
    .local v8, ratio:F
    int-to-float v14, v13

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    int-to-float v15, v6

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v8, v14, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 369
    .end local v8           #ratio:F
    :cond_3
    div-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v7

    int-to-float v14, v14

    div-int/lit8 v15, v6, 0x2

    add-int/2addr v15, v11

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 370
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->mOrientation:I

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->rotate(F)V

    .line 371
    neg-int v14, v12

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    neg-int v15, v5

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 372
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 373
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->isChanged:Z

    if-eqz v14, :cond_6

    .line 374
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressRect:Landroid/graphics/Rect;

    if-nez v14, :cond_4

    .line 375
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v15, v0, v13, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressRect:Landroid/graphics/Rect;

    .line 379
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->nCurBgResId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FaceEffectImageView;->iconHightlight:I

    if-ne v14, v15, :cond_7

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_5

    .line 381
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FaceEffectImageView;->nCurBgResId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 382
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 395
    :cond_6
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 385
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->nCurBgResId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FaceEffectImageView;->iconPressedHightlight:I

    if-ne v14, v15, :cond_6

    .line 386
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_8

    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/FaceEffectImageView;->nCurBgResId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressingDrawable:Landroid/graphics/drawable/Drawable;

    .line 388
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/FaceEffectImageView;->bgPressingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 278
    iget v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->nViewWidth:I

    iget v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->nViewHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 279
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x7d0

    const/4 v2, 0x0

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 477
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 504
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 480
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->MSG_TIMEOUT_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 481
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FaceEffectImageView;->setFocusing(Z)V

    goto :goto_0

    .line 492
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->isTimeOut:Z

    if-nez v1, :cond_0

    .line 493
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FaceEffectImageView;->setFocusing(Z)V

    goto :goto_0

    .line 497
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/ui/FaceEffectImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FaceEffectImageView;->setFocusing(Z)V

    .line 499
    iput-boolean v2, p0, Lcom/android/camera/ui/FaceEffectImageView;->isTimeOut:Z

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public removeAllCallBack()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    :cond_0
    return-void
.end method

.method public setEffectViewSelected(Z)V
    .locals 0
    .parameter "isSelected"

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 421
    return-void
.end method

.method public setFocused(Z)V
    .locals 1
    .parameter "focused"

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->iconPressedHightlight:I

    iput v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->nCurBgResId:I

    .line 304
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->isChanged:Z

    .line 305
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceEffectImageView;->focused:Z

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 307
    return-void

    .line 301
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->iconNormal:I

    iput v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->nCurBgResId:I

    goto :goto_0
.end method

.method public setFocusing(Z)V
    .locals 1
    .parameter "focused"

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 315
    iget v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->iconHightlight:I

    iput v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->nCurBgResId:I

    .line 320
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->isChanged:Z

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 322
    return-void

    .line 317
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->iconNormal:I

    iput v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->nCurBgResId:I

    goto :goto_0
.end method

.method public setImageViewRes(I)V
    .locals 0
    .parameter "imageResourceID"

    .prologue
    .line 271
    iput p1, p0, Lcom/android/camera/ui/FaceEffectImageView;->nCurResId:I

    .line 272
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceEffectImageView;->drawableLayerMerge()V

    .line 273
    return-void
.end method

.method public setItemIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 424
    iput p1, p0, Lcom/android/camera/ui/FaceEffectImageView;->nItemIndex:I

    .line 425
    return-void
.end method

.method public setOnFaceEffectListener(Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/ui/FaceEffectImageView;->mFaceEffectListener:Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;

    .line 79
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 448
    iput p1, p0, Lcom/android/camera/ui/FaceEffectImageView;->mOrientation:I

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 452
    return-void
.end method

.method public setResource(ILjava/lang/String;)V
    .locals 0
    .parameter "imResourceId"
    .parameter "text"

    .prologue
    .line 325
    iput p1, p0, Lcom/android/camera/ui/FaceEffectImageView;->nCurResId:I

    .line 326
    iput-object p2, p0, Lcom/android/camera/ui/FaceEffectImageView;->mCurText:Ljava/lang/String;

    .line 327
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceEffectImageView;->drawableLayerMerge()V

    .line 329
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "textResourceId"

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceEffectImageView;->mCurText:Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceEffectImageView;->drawableLayerMerge()V

    .line 251
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "textStr"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/camera/ui/FaceEffectImageView;->mCurText:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/FaceEffectImageView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FaceEffectImageView$1;-><init>(Lcom/android/camera/ui/FaceEffectImageView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 246
    return-void
.end method

.method public setbackgroudRes(I)V
    .locals 0
    .parameter "bgResourceID"

    .prologue
    .line 266
    iput p1, p0, Lcom/android/camera/ui/FaceEffectImageView;->nCurBgResId:I

    .line 267
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceEffectImageView;->drawableLayerMerge()V

    .line 268
    return-void
.end method
