.class public Lcom/android/camera/ui/FaceSwitchImageContainer;
.super Landroid/widget/FrameLayout;
.source "FaceSwitchImageContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FaceSwitchImageContainer$SwapImageListener;
    }
.end annotation


# instance fields
.field iEnterOrientation:I

.field iFaceCount:I

.field iFaceIndex:I

.field iPassOrientation:I

.field iRotateOrientation:I

.field iSwapIndex:I

.field iSwapSpace:I

.field iSwapWidth:I

.field iSwitchCircleHeight:I

.field iSwitchCircleWidth:I

.field mBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

.field mFaceSwitchCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/ui/FaceSwitchImageView;",
            ">;"
        }
    .end annotation
.end field

.field mFaceSwitchImageView:Lcom/android/camera/ui/FaceSwitchImageView;

.field mRotateControl:Lcom/android/camera/ui/RotateControl;

.field mSwapListener:Lcom/android/camera/ui/FaceSwitchImageContainer$SwapImageListener;

.field position:[I

.field resIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/FaceSwitchImageContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iFaceCount:I

    .line 49
    iput v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iFaceIndex:I

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->resIds:[I

    .line 161
    iput v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapIndex:I

    .line 162
    iput v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapWidth:I

    .line 163
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapSpace:I

    .line 76
    iput-object p1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Lcom/android/camera/ui/FaceSwitchImageContainer;->init()V

    .line 78
    return-void

    .line 58
    :array_0
    .array-data 0x4
        0x89t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0x8bt 0x1t 0x2t 0x7ft
        0x8ct 0x1t 0x2t 0x7ft
        0x8dt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FaceSwitchImageContainer;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/FaceSwitchImageContainer;->getCircleBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCircleBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "circleWidth"
    .parameter "circleHeight"
    .parameter "swapIndex"
    .parameter "passOrientation"

    .prologue
    .line 275
    move v2, p3

    .line 276
    .local v2, index:I
    iget-object v5, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->resIds:[I

    array-length v3, v5

    .line 277
    .local v3, length:I
    add-int/lit8 v5, v3, -0x1

    if-le p3, v5, :cond_0

    add-int/lit8 v2, v3, -0x1

    .line 278
    :cond_0
    const/4 v1, 0x0

    .line 279
    .local v1, circleBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 280
    .local v4, rb:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 281
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->resIds:[I

    aget v6, v6, v2

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 284
    neg-int v5, p4

    invoke-static {v5, v4}, Lcom/android/gallery3d/common/BitmapUtils;->getRotateBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    const/4 v5, 0x1

    invoke-static {v0, p1, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 288
    if-eqz v4, :cond_1

    if-eq v4, v1, :cond_1

    .line 289
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 290
    const/4 v4, 0x0

    .line 292
    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 294
    const/4 v0, 0x0

    .line 296
    :cond_2
    return-object v1
.end method

.method private getFaceBitmap(II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "faceIndex"
    .parameter "swapIndex"

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->getDataHolderList(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;

    .line 136
    .local v3, holder:Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;
    iget-object v0, v3, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->colors:[I

    .line 137
    .local v0, colors:[I
    iget v4, v3, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->width:I

    .line 138
    .local v4, width:I
    iget v2, v3, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->height:I

    .line 139
    .local v2, height:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 141
    return-object v1
.end method

.method private getFaceImageView(II)Lcom/android/camera/ui/FaceSwitchImageView;
    .locals 5
    .parameter "faceIndex"
    .parameter "swapIndex"

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, fsiv:Lcom/android/camera/ui/FaceSwitchImageView;
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchCache:Ljava/util/WeakHashMap;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FaceSwitchImageContainer;->getIndex(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #fsiv:Lcom/android/camera/ui/FaceSwitchImageView;
    check-cast v1, Lcom/android/camera/ui/FaceSwitchImageView;

    .line 117
    .restart local v1       #fsiv:Lcom/android/camera/ui/FaceSwitchImageView;
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 118
    .local v0, circleBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 119
    iget v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleWidth:I

    iget v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleHeight:I

    iget v4, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iPassOrientation:I

    invoke-direct {p0, v2, v3, p2, v4}, Lcom/android/camera/ui/FaceSwitchImageContainer;->getCircleBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    if-nez v1, :cond_1

    .line 124
    new-instance v1, Lcom/android/camera/ui/FaceSwitchImageView;

    .end local v1           #fsiv:Lcom/android/camera/ui/FaceSwitchImageView;
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/FaceSwitchImageView;-><init>(Landroid/content/Context;)V

    .line 125
    .restart local v1       #fsiv:Lcom/android/camera/ui/FaceSwitchImageView;
    iget v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleWidth:I

    iget v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/FaceSwitchImageView;->setCircleParams(II)V

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FaceSwitchImageContainer;->getFaceBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/camera/ui/FaceSwitchImageView;->setFaceBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 128
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchCache:Ljava/util/WeakHashMap;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FaceSwitchImageContainer;->getIndex(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    return-object v1
.end method

.method private getIndex(II)I
    .locals 1
    .parameter "faceIndex"
    .parameter "swapIndex"

    .prologue
    .line 144
    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p2

    return v0
.end method

.method private getPosition(II)[I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    iget v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleWidth:I

    iget v4, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleHeight:I

    iget v5, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iEnterOrientation:I

    iget v6, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iRotateOrientation:I

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/RotateControl;->getDestPosition(IIIIII)[I

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchCache:Ljava/util/WeakHashMap;

    .line 81
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mBitmapCache:Ljava/util/WeakHashMap;

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/RotateControl;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mRotateControl:Lcom/android/camera/ui/RotateControl;

    .line 83
    return-void
.end method

.method private refreshFaceImageView(II)V
    .locals 3
    .parameter "faceIndex"
    .parameter "swapIndex"

    .prologue
    const/4 v2, -0x1

    .line 105
    iget-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchImageView:Lcom/android/camera/ui/FaceSwitchImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FaceSwitchImageContainer;->getFaceImageView(II)Lcom/android/camera/ui/FaceSwitchImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchImageView:Lcom/android/camera/ui/FaceSwitchImageView;

    .line 107
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchImageView:Lcom/android/camera/ui/FaceSwitchImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchImageView:Lcom/android/camera/ui/FaceSwitchImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchImageView:Lcom/android/camera/ui/FaceSwitchImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchCache:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mBitmapCache:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchImageView:Lcom/android/camera/ui/FaceSwitchImageView;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchImageView:Lcom/android/camera/ui/FaceSwitchImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceSwitchImageView;->clear()V

    .line 249
    iput-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchImageView:Lcom/android/camera/ui/FaceSwitchImageView;

    .line 251
    :cond_2
    iput-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mSwapListener:Lcom/android/camera/ui/FaceSwitchImageContainer$SwapImageListener;

    .line 252
    iput-object v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    .line 253
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSwapIndex()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapIndex:I

    return v0
.end method

.method public loadCircleBitmap(I)V
    .locals 1
    .parameter "passOrientation"

    .prologue
    .line 260
    new-instance v0, Lcom/android/camera/ui/FaceSwitchImageContainer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/FaceSwitchImageContainer$1;-><init>(Lcom/android/camera/ui/FaceSwitchImageContainer;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 271
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchImageView:Lcom/android/camera/ui/FaceSwitchImageView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mFaceSwitchImageView:Lcom/android/camera/ui/FaceSwitchImageView;

    iget v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleWidth:I

    iget v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 159
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 149
    iget v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleWidth:I

    invoke-static {v0, p1}, Lcom/android/camera/ui/FaceSwitchImageContainer;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleHeight:I

    invoke-static {v1, p2}, Lcom/android/camera/ui/FaceSwitchImageContainer;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 151
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 174
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 175
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 181
    :pswitch_1
    iget v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleWidth:I

    iget v4, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapSpace:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iFaceCount:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapWidth:I

    goto :goto_0

    .line 188
    :pswitch_2
    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/FaceSwitchImageContainer;->getPosition(II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->position:[I

    .line 190
    iget-object v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->position:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget v4, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapSpace:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapWidth:I

    div-int v0, v3, v4

    .line 197
    .local v0, index:I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 198
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapIndex:I

    if-eq v3, v0, :cond_0

    .line 199
    iput v0, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapIndex:I

    .line 200
    iget v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapIndex:I

    iget v4, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iFaceCount:I

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_2

    .line 201
    iget v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iFaceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapIndex:I

    .line 203
    :cond_2
    iget v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iFaceIndex:I

    iget v4, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapIndex:I

    invoke-direct {p0, v3, v4}, Lcom/android/camera/ui/FaceSwitchImageContainer;->refreshFaceImageView(II)V

    .line 204
    iget-object v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mSwapListener:Lcom/android/camera/ui/FaceSwitchImageContainer$SwapImageListener;

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mSwapListener:Lcom/android/camera/ui/FaceSwitchImageContainer$SwapImageListener;

    iget v4, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwapIndex:I

    invoke-interface {v3, v4}, Lcom/android/camera/ui/FaceSwitchImageContainer$SwapImageListener;->swapImage(I)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setSwapImageListener(Lcom/android/camera/ui/FaceSwitchImageContainer$SwapImageListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mSwapListener:Lcom/android/camera/ui/FaceSwitchImageContainer$SwapImageListener;

    .line 69
    return-void
.end method

.method public setSwitchParams(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 255
    iput p1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleWidth:I

    .line 256
    iput p2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleHeight:I

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 258
    return-void
.end method

.method public swapFace(I)V
    .locals 3
    .parameter "faceIndex"

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 87
    sget v2, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    iput v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iEnterOrientation:I

    .line 88
    sget v2, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    iput v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iRotateOrientation:I

    .line 89
    sget v2, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    iput v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iPassOrientation:I

    .line 90
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    if-nez v2, :cond_0

    .line 91
    invoke-static {}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->getInstance()Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->getDataHolderList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    .local v0, holderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;>;"
    iput p1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iFaceIndex:I

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, swapIndex:I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->getSelectedIndex(I)I

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->getThumbNum(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iFaceCount:I

    .line 99
    iget v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer;->iFaceCount:I

    if-lez v2, :cond_1

    .line 100
    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/FaceSwitchImageContainer;->refreshFaceImageView(II)V

    .line 102
    :cond_1
    return-void
.end method
