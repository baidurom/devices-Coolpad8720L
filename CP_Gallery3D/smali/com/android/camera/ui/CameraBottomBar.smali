.class public Lcom/android/camera/ui/CameraBottomBar;
.super Landroid/widget/FrameLayout;
.source "CameraBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field isDone:Z

.field private itemHeight:I

.field private itemWidth:I

.field mAnimFadeIn:Landroid/view/animation/Animation;

.field mAnimFadeOut:Landroid/view/animation/Animation;

.field mContext:Landroid/content/Context;

.field mFloatViews:[Landroid/widget/ImageView;

.field mInsertBitmapTask:Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;

.field private marginLeft:I

.field private marginRight:I

.field nChildCount:I

.field private nSpace:I

.field nViewIndex:I

.field sMap:Ljava/util/WeakHashMap;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/CameraBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x1e

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/CameraBottomBar;->isDone:Z

    .line 228
    new-instance v1, Lcom/android/camera/ui/CameraBottomBar$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CameraBottomBar$1;-><init>(Lcom/android/camera/ui/CameraBottomBar;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraBottomBar;->handler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/android/camera/ui/CameraBottomBar;->mContext:Landroid/content/Context;

    .line 57
    iget-object v1, p0, Lcom/android/camera/ui/CameraBottomBar;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/gallery3d/R$styleable;->Popup_View:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/CameraBottomBar;->marginLeft:I

    .line 61
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/CameraBottomBar;->marginRight:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-direct {p0}, Lcom/android/camera/ui/CameraBottomBar;->init()V

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CameraBottomBar;III[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/CameraBottomBar;->insertBitmap(III[B)V

    return-void
.end method

.method private dp2px(I)I
    .locals 2
    .parameter "num"

    .prologue
    .line 116
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

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x40

    const/4 v6, 0x5

    .line 120
    iput-object v7, p0, Lcom/android/camera/ui/CameraBottomBar;->sMap:Ljava/util/WeakHashMap;

    .line 121
    new-array v3, v6, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mFloatViews:[Landroid/widget/ImageView;

    .line 122
    invoke-direct {p0, v4}, Lcom/android/camera/ui/CameraBottomBar;->dp2px(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/CameraBottomBar;->itemWidth:I

    .line 123
    invoke-direct {p0, v4}, Lcom/android/camera/ui/CameraBottomBar;->dp2px(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/CameraBottomBar;->itemHeight:I

    .line 124
    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/android/camera/ui/CameraBottomBar;->dp2px(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/CameraBottomBar;->nSpace:I

    .line 125
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/camera/ui/CameraBottomBar;->itemWidth:I

    iget v4, p0, Lcom/android/camera/ui/CameraBottomBar;->itemHeight:I

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mFloatViews:[Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/camera/ui/CameraBottomBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v0

    .line 129
    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mFloatViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mFloatViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mFloatViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mFloatViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3, v6}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->sMap:Ljava/util/WeakHashMap;

    .line 136
    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f05

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mAnimFadeIn:Landroid/view/animation/Animation;

    .line 137
    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mContext:Landroid/content/Context;

    const v4, 0x7f050001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mAnimFadeOut:Landroid/view/animation/Animation;

    .line 138
    new-instance v3, Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;

    invoke-direct {v3, p0, v7}, Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;-><init>(Lcom/android/camera/ui/CameraBottomBar;Lcom/android/camera/ui/CameraBottomBar$1;)V

    iput-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mInsertBitmapTask:Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;

    .line 139
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->mInsertBitmapTask:Lcom/android/camera/ui/CameraBottomBar$InsertBitmapTask;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 141
    return-void
.end method

.method private insertBitmap(III[B)V
    .locals 7
    .parameter "index"
    .parameter "width"
    .parameter "height"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 157
    rem-int/lit8 v3, p1, 0x5

    iput v3, p0, Lcom/android/camera/ui/CameraBottomBar;->nViewIndex:I

    .line 159
    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->sMap:Ljava/util/WeakHashMap;

    iget v4, p0, Lcom/android/camera/ui/CameraBottomBar;->nViewIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 161
    .local v0, mBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 162
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 163
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, -0x1

    iget v4, p0, Lcom/android/camera/ui/CameraBottomBar;->itemWidth:I

    iget v5, p0, Lcom/android/camera/ui/CameraBottomBar;->itemHeight:I

    mul-int/2addr v4, v5

    invoke-static {p2, p3, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 169
    array-length v3, p4

    invoke-static {p4, v6, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBitmap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 174
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 175
    iget v3, p0, Lcom/android/camera/ui/CameraBottomBar;->nViewIndex:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 176
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 178
    return-void
.end method


# virtual methods
.method public getInsertViewIndex()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/camera/ui/CameraBottomBar;->nChildCount:I

    return v0
.end method

.method public getLimitViewCount()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x5

    return v0
.end method

.method public getViewCount()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/camera/ui/CameraBottomBar;->nChildCount:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 102
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, l:I
    const/4 v5, 0x0

    .line 103
    .local v5, t:I
    iget v3, p0, Lcom/android/camera/ui/CameraBottomBar;->marginLeft:I

    .line 104
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 105
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 107
    iget v6, p0, Lcom/android/camera/ui/CameraBottomBar;->nSpace:I

    add-int/2addr v3, v6

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v6, v3

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 110
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v6

    .line 104
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 70
    .local v7, width:I
    iget v8, p0, Lcom/android/camera/ui/CameraBottomBar;->marginLeft:I

    sub-int v8, v7, v8

    iget v9, p0, Lcom/android/camera/ui/CameraBottomBar;->marginRight:I

    sub-int v2, v8, v9

    .line 71
    .local v2, dw:I
    iget v8, p0, Lcom/android/camera/ui/CameraBottomBar;->nSpace:I

    mul-int/lit8 v8, v8, 0x6

    sub-int v8, v2, v8

    div-int/lit8 v8, v8, 0x5

    iput v8, p0, Lcom/android/camera/ui/CameraBottomBar;->itemWidth:I

    .line 72
    iget v8, p0, Lcom/android/camera/ui/CameraBottomBar;->itemWidth:I

    iput v8, p0, Lcom/android/camera/ui/CameraBottomBar;->itemHeight:I

    .line 73
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 75
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, maxWidth:I
    const/4 v5, 0x0

    .line 76
    .local v5, maxHeight:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 77
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/ui/CameraBottomBar;->itemWidth:I

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    iget v8, p0, Lcom/android/camera/ui/CameraBottomBar;->itemHeight:I

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget v8, p0, Lcom/android/camera/ui/CameraBottomBar;->nSpace:I

    add-int/2addr v6, v8

    .line 84
    iget v8, p0, Lcom/android/camera/ui/CameraBottomBar;->itemWidth:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, p0, Lcom/android/camera/ui/CameraBottomBar;->itemHeight:I

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/view/View;->measure(II)V

    .line 87
    iget v8, p0, Lcom/android/camera/ui/CameraBottomBar;->itemWidth:I

    add-int/2addr v6, v8

    .line 76
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget v8, p0, Lcom/android/camera/ui/CameraBottomBar;->nSpace:I

    add-int/2addr v6, v8

    .line 91
    iget v8, p0, Lcom/android/camera/ui/CameraBottomBar;->marginLeft:I

    iget v9, p0, Lcom/android/camera/ui/CameraBottomBar;->marginRight:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 92
    iget v5, p0, Lcom/android/camera/ui/CameraBottomBar;->itemHeight:I

    .line 93
    invoke-static {v6, p1}, Lcom/android/camera/ui/CameraBottomBar;->resolveSize(II)I

    move-result v8

    invoke-static {v5, p2}, Lcom/android/camera/ui/CameraBottomBar;->resolveSize(II)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 95
    return-void
.end method
